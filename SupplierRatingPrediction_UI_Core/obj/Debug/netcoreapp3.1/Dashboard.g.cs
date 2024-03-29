﻿#pragma checksum "..\..\..\Dashboard.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "CA7834FE6EF01E98E3D43F161DFA3CE8B4F2FB2D"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using LiveCharts.Wpf;
using Microsoft.Maps.MapControl.WPF;
using SupplierRatingPrediction_UI_Core;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Controls.Ribbon;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace SupplierRatingPrediction_UI_Core {
    
    
    /// <summary>
    /// Dashboard
    /// </summary>
    public partial class Dashboard : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 23 "..\..\..\Dashboard.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Border brdrMain;
        
        #line default
        #line hidden
        
        
        #line 39 "..\..\..\Dashboard.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid mainGrid;
        
        #line default
        #line hidden
        
        
        #line 72 "..\..\..\Dashboard.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid InputParametersGrid;
        
        #line default
        #line hidden
        
        
        #line 105 "..\..\..\Dashboard.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox cmbCommodity;
        
        #line default
        #line hidden
        
        
        #line 112 "..\..\..\Dashboard.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox cmbMPProcess;
        
        #line default
        #line hidden
        
        
        #line 119 "..\..\..\Dashboard.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtVolume;
        
        #line default
        #line hidden
        
        
        #line 128 "..\..\..\Dashboard.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnPredict;
        
        #line default
        #line hidden
        
        
        #line 134 "..\..\..\Dashboard.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnClose;
        
        #line default
        #line hidden
        
        
        #line 142 "..\..\..\Dashboard.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid barChartGrid;
        
        #line default
        #line hidden
        
        
        #line 148 "..\..\..\Dashboard.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal LiveCharts.Wpf.CartesianChart barChart;
        
        #line default
        #line hidden
        
        
        #line 163 "..\..\..\Dashboard.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal LiveCharts.Wpf.PieChart pieChart1;
        
        #line default
        #line hidden
        
        
        #line 182 "..\..\..\Dashboard.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid DetailsGrid;
        
        #line default
        #line hidden
        
        
        #line 205 "..\..\..\Dashboard.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock lblSupplierName;
        
        #line default
        #line hidden
        
        
        #line 219 "..\..\..\Dashboard.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock lblSupplierAddress;
        
        #line default
        #line hidden
        
        
        #line 232 "..\..\..\Dashboard.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock lblYearsOfRelationship;
        
        #line default
        #line hidden
        
        
        #line 245 "..\..\..\Dashboard.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock lblLeadTime;
        
        #line default
        #line hidden
        
        
        #line 258 "..\..\..\Dashboard.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock lblSupplierSize;
        
        #line default
        #line hidden
        
        
        #line 266 "..\..\..\Dashboard.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal Microsoft.Maps.MapControl.WPF.Map myMap;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.8.1.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/SupplierRatingPrediction_UI_Core;component/dashboard.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Dashboard.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.8.1.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.brdrMain = ((System.Windows.Controls.Border)(target));
            return;
            case 2:
            this.mainGrid = ((System.Windows.Controls.Grid)(target));
            return;
            case 3:
            this.InputParametersGrid = ((System.Windows.Controls.Grid)(target));
            return;
            case 4:
            this.cmbCommodity = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 5:
            this.cmbMPProcess = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 6:
            this.txtVolume = ((System.Windows.Controls.TextBox)(target));
            return;
            case 7:
            this.btnPredict = ((System.Windows.Controls.Button)(target));
            
            #line 133 "..\..\..\Dashboard.xaml"
            this.btnPredict.Click += new System.Windows.RoutedEventHandler(this.btnPredict_Click);
            
            #line default
            #line hidden
            return;
            case 8:
            this.btnClose = ((System.Windows.Controls.Button)(target));
            
            #line 138 "..\..\..\Dashboard.xaml"
            this.btnClose.Click += new System.Windows.RoutedEventHandler(this.btnClose_Click);
            
            #line default
            #line hidden
            return;
            case 9:
            this.barChartGrid = ((System.Windows.Controls.Grid)(target));
            return;
            case 10:
            this.barChart = ((LiveCharts.Wpf.CartesianChart)(target));
            
            #line 148 "..\..\..\Dashboard.xaml"
            this.barChart.DataClick += new LiveCharts.Events.DataClickHandler(this.barChart_DataClick);
            
            #line default
            #line hidden
            return;
            case 11:
            this.pieChart1 = ((LiveCharts.Wpf.PieChart)(target));
            return;
            case 12:
            this.DetailsGrid = ((System.Windows.Controls.Grid)(target));
            return;
            case 13:
            this.lblSupplierName = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 14:
            this.lblSupplierAddress = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 15:
            this.lblYearsOfRelationship = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 16:
            this.lblLeadTime = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 17:
            this.lblSupplierSize = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 18:
            this.myMap = ((Microsoft.Maps.MapControl.WPF.Map)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

