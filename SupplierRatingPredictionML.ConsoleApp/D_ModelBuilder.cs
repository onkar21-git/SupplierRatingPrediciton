using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using Microsoft.ML;
using Microsoft.ML.Data;
using SupplierRatingPredictionML.Model;

namespace SupplierRatingPredictionML.ConsoleApp
{
    public class D_ModelBuilder
    {
        //private static string TRAIN_DATA_FILEPATH = @"C:\Users\walavonk\Desktop\AI_Project\SourceCodeMain\Data\4965993c-ef66-414f-9335-bd279a1c358b.tsv";
        private static string MODEL_FILEPATH = @"C:\Users\walavonk\Desktop\AI_Project\SourceCodeMain\Data\D_MLModel.zip";
        // Create MLContext to be shared across the model creation workflow objects 
        // Set a random seed for repeatable/deterministic results across multiple trainings.
        private static MLContext mlContext = new MLContext(seed: 1);

        public static void CreateModel()
        {
            List<OrderData> orderData = GetData();
            IDataView trainingDataView = mlContext.Data.LoadFromEnumerable(orderData);

            // Build training pipeline
            IEstimator<ITransformer> trainingPipeline = BuildTrainingPipeline(mlContext);

            // Evaluate quality of Model
            Evaluate(mlContext, trainingDataView, trainingPipeline);

            // Train Model
            ITransformer mlModel = TrainModel(mlContext, trainingDataView, trainingPipeline);

            // Save model
            SaveModel(mlContext, mlModel, MODEL_FILEPATH, trainingDataView.Schema);
        }

        private static List<OrderData> GetData()
        {

            List<OrderData> orderList = new List<OrderData>();
            SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS ;AttachDbFilename=C:\\Data\\OrderSupplier.mdf;Integrated Security=True");
            conn.Open();
            //Get all suppliers who have commodity
            SqlCommand cmd = new SqlCommand(@"select Order_Id,Commodity,Volume,Supplier,mp.Manufacturing_Process_Id, 
                                              Quality_Rating,Cost_Rating,Delivery_Rating,Total_Rating from tb_OrderRating, tb_Order_MPProcess mp
                                              where mp.OrderId = Order_Id order by Order_Id", conn);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                OrderData order = new OrderData();
                order.Order_Id = Int32.Parse(reader["Order_Id"].ToString());
                order.Commodity = Int32.Parse(reader["Commodity"].ToString());
                order.Volume = Int32.Parse(reader["Volume"].ToString());
                order.Supplier = Int32.Parse(reader["Supplier"].ToString());
                order.Manufacturing_Process_Id = Int32.Parse(reader["Manufacturing_Process_Id"].ToString());
                order.Quality_Rating = Int32.Parse(reader["Quality_Rating"].ToString());
                order.Cost_Rating = Int32.Parse(reader["Cost_Rating"].ToString());
                order.Delivery_Rating = Int32.Parse(reader["Delivery_Rating"].ToString());
                order.Total_Rating = Int32.Parse(reader["Total_Rating"].ToString());

                orderList.Add(order);
            }
            conn.Close();

            return orderList;

        }

        public static IEstimator<ITransformer> BuildTrainingPipeline(MLContext mlContext)
        {
            // Data process configuration with pipeline data transformations 
            var dataProcessPipeline = mlContext.Transforms.Categorical.OneHotEncoding(new[]
            {
                new InputOutputColumnPair(outputColumnName: "CommodityEncoded", inputColumnName: "Commodity"),
                new InputOutputColumnPair(outputColumnName: "Manufacturing_Process_IdEncoded", inputColumnName: "Manufacturing_Process_Id"),
                new InputOutputColumnPair(outputColumnName: "SupplierEncoded", inputColumnName: "Supplier")
            })
                .Append(mlContext.Transforms.Concatenate("Features", "Volume", "CommodityEncoded", "Manufacturing_Process_IdEncoded", "Supplier"));
            // Set the training algorithm 
            var trainer = mlContext.Regression.Trainers.FastTree(labelColumnName: "Delivery_Rating", featureColumnName: "Features");

            var trainingPipeline = dataProcessPipeline.Append(trainer);

            return trainingPipeline;
        }

        public static ITransformer TrainModel(MLContext mlContext, IDataView trainingDataView, IEstimator<ITransformer> trainingPipeline)
        {
            Console.WriteLine("=============== Training  model ===============");

            ITransformer model = trainingPipeline.Fit(trainingDataView);

            Console.WriteLine("=============== End of training process ===============");
            return model;
        }

        private static void Evaluate(MLContext mlContext, IDataView trainingDataView, IEstimator<ITransformer> trainingPipeline)
        {
            // Cross-Validate with single dataset (since we don't have two datasets, one for training and for evaluate)
            // in order to evaluate and get the model's accuracy metrics
            Console.WriteLine("=============== Cross-validating to get model's accuracy metrics ===============");
            var crossValidationResults = mlContext.Regression.CrossValidate(trainingDataView, trainingPipeline, numberOfFolds: 5, labelColumnName: "Total_Rating");
            PrintRegressionFoldsAverageMetrics(crossValidationResults);
        }

        private static void SaveModel(MLContext mlContext, ITransformer mlModel, string modelRelativePath, DataViewSchema modelInputSchema)
        {
            // Save/persist the trained model to a .ZIP file
            Console.WriteLine($"=============== Saving the model  ===============");
            mlContext.Model.Save(mlModel, modelInputSchema, GetAbsolutePath(modelRelativePath));
            Console.WriteLine("The model is saved to {0}", GetAbsolutePath(modelRelativePath));
        }

        public static string GetAbsolutePath(string relativePath)
        {
            FileInfo _dataRoot = new FileInfo(typeof(Program).Assembly.Location);
            string assemblyFolderPath = _dataRoot.Directory.FullName;

            string fullPath = Path.Combine(assemblyFolderPath, relativePath);

            return fullPath;
        }

        public static void PrintRegressionFoldsAverageMetrics(IEnumerable<TrainCatalogBase.CrossValidationResult<RegressionMetrics>> crossValidationResults)
        {
            var L1 = crossValidationResults.Select(r => r.Metrics.MeanAbsoluteError);
            var L2 = crossValidationResults.Select(r => r.Metrics.MeanSquaredError);
            var RMS = crossValidationResults.Select(r => r.Metrics.RootMeanSquaredError);
            var lossFunction = crossValidationResults.Select(r => r.Metrics.LossFunction);
            var R2 = crossValidationResults.Select(r => r.Metrics.RSquared);

            Console.WriteLine($"*************************************************************************************************************");
            Console.WriteLine($"*       Metrics for Regression model      ");
            Console.WriteLine($"*------------------------------------------------------------------------------------------------------------");
            Console.WriteLine($"*       Average L1 Loss:       {L1.Average():0.###} ");
            Console.WriteLine($"*       Average L2 Loss:       {L2.Average():0.###}  ");
            Console.WriteLine($"*       Average RMS:           {RMS.Average():0.###}  ");
            Console.WriteLine($"*       Average Loss Function: {lossFunction.Average():0.###}  ");
            Console.WriteLine($"*       Average R-squared:     {R2.Average():0.###}  ");
            Console.WriteLine($"*************************************************************************************************************");
        }

    }
}
