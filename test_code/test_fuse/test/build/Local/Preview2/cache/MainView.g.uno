public partial class MainView: Fuse.App
{
    public partial class Factory: Uno.UX.Factory
    {
        internal readonly MainView __parent;
        public Factory(MainView parent): base(null, false)
        {
            __parent = parent;
        }
        test_FuseElementsElement_float_Opacity_Property self_Opacity_inst;
        test_FuseControlsShape_float4_Color_Property self_Color_inst;
        test_FuseElementsElement_UnoUXSize_Height_Property self_Height_inst;
        static Factory()
        {
        }
        public override object New()
        {
            var self = new Fuse.Controls.Rectangle();
            self_Opacity_inst = new test_FuseElementsElement_float_Opacity_Property(self);
            self_Color_inst = new test_FuseControlsShape_float4_Color_Property(self);
            self_Height_inst = new test_FuseElementsElement_UnoUXSize_Height_Property(self);
            var temp = new Fuse.Triggers.AddingAnimation();
            var temp1 = new Fuse.Animations.Change<float>(self_Opacity_inst);
            var temp2 = new Fuse.Reactive.DataBinding<float4>(self_Color_inst, "color");
            var temp3 = new Fuse.Reactive.DataBinding<Uno.UX.Size>(self_Height_inst, "height");
            self.CornerRadius = float4(5f, 5f, 5f, 5f);
            self.Margin = float4(5f, 5f, 5f, 5f);
            self.Name = "item";
            temp.Animators.Add(temp1);
            temp1.Value = 0f;
            temp1.Duration = 0.3;
            self.Behaviors.Add(temp2);
            self.Behaviors.Add(temp3);
            self.Behaviors.Add(temp);
            return self;
        }
    }
    test_FuseControlsShape_float4_Color_Property myRectangle_Color_inst;
    test_FuseControlsRectangle_float4_CornerRadius_Property myRectangle_CornerRadius_inst;
    test_FuseReactiveEach_object_Items_Property temp_Items_inst;
    test_FuseEffectsBlur_float_Radius_Property myBlur_Radius_inst;
    internal Fuse.Controls.Rectangle myRectangle;
    internal Fuse.Reactive.EventBinding temp_eb0;
    internal Fuse.Effects.Blur myBlur;
    global::Uno.UX.NameTable __g_nametable;
    static global::Uno.UX.NameTableEntry[] __g_static_nametable = new global::Uno.UX.NameTableEntry[] {
        new global::Uno.UX.NameTableEntry("myRectangle", "Fuse.Controls.Rectangle", Fuse.Controls.Control.ScriptClass),
        new global::Uno.UX.NameTableEntry("myBlur", "Fuse.Effects.Blur")
    };
    static MainView()
    {
    }
    public MainView()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        myRectangle = new Fuse.Controls.Rectangle();
        myRectangle_Color_inst = new test_FuseControlsShape_float4_Color_Property(myRectangle);
        myRectangle_CornerRadius_inst = new test_FuseControlsRectangle_float4_CornerRadius_Property(myRectangle);
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp = new Fuse.Reactive.Each();
        temp_Items_inst = new test_FuseReactiveEach_object_Items_Property(temp);
        myBlur = new Fuse.Effects.Blur();
        myBlur_Radius_inst = new test_FuseEffectsBlur_float_Radius_Property(myBlur);
        var temp1 = new Fuse.Controls.DockPanel();
        var temp2 = new Fuse.Controls.PageControl();
        var temp3 = new PageWithTitle();
        var temp4 = new Fuse.Controls.Panel();
        var temp5 = new Fuse.Gestures.WhilePressed();
        var temp6 = new Fuse.Animations.Rotate();
        var temp7 = new Fuse.Animations.Scale();
        var temp8 = new Fuse.Animations.Change<float4>(myRectangle_Color_inst);
        var temp9 = new Fuse.Animations.Change<float4>(myRectangle_CornerRadius_inst);
        var temp10 = new PageWithTitle();
        var temp11 = new Fuse.Reactive.JavaScript(__g_nametable);
        var temp12 = new Fuse.Controls.ScrollView();
        var temp13 = new Fuse.Controls.Panel();
        var temp14 = new Fuse.Layouts.ColumnLayout();
        var item = new Factory(this);
        var temp15 = new Fuse.Reactive.DataBinding<object>(temp_Items_inst, "items");
        temp_eb0 = new Fuse.Reactive.EventBinding("addItem");
        var temp16 = new PageWithTitle();
        var temp17 = new Fuse.Controls.Grid();
        var temp18 = new Fuse.Controls.Image();
        var temp19 = new Fuse.Controls.Slider();
        var temp20 = new Fuse.Triggers.ProgressAnimation();
        var temp21 = new Fuse.Animations.Change<float>(myBlur_Radius_inst);
        var temp22 = new Fuse.Controls.BottomBarBackground();
        temp1.Children.Add(temp2);
        temp1.Children.Add(temp22);
        temp2.Children.Add(temp3);
        temp2.Children.Add(temp10);
        temp2.Children.Add(temp16);
        temp3.Title = "Basic animation";
        temp3.Color = float4(0.9960784f, 0.9921569f, 0.9882353f, 1f);
        temp3.HeaderColor = float4(0.3490196f, 0.372549f, 1f, 1f);
        temp3.HeaderTextColor = float4(1f, 1f, 1f, 1f);
        temp3.Instructions = "Tap and hold the rectangle";
        temp3.Children.Add(temp4);
        temp4.Children.Add(myRectangle);
        myRectangle.CornerRadius = float4(0f, 0f, 0f, 0f);
        myRectangle.Color = float4(0.282353f, 0.5803922f, 0.8980392f, 1f);
        myRectangle.Width = new Uno.UX.Size(80f, Uno.UX.Unit.Unspecified);
        myRectangle.Height = new Uno.UX.Size(80f, Uno.UX.Unit.Unspecified);
        myRectangle.Name = "myRectangle";
        myRectangle.Behaviors.Add(temp5);
        temp5.Animators.Add(temp6);
        temp5.Animators.Add(temp7);
        temp5.Animators.Add(temp8);
        temp5.Animators.Add(temp9);
        temp6.Degrees = 45f;
        temp6.Easing = Fuse.Animations.Easing.CubicInOut;
        temp6.Duration = 0.5;
        temp7.Factor = 2f;
        temp7.Easing = Fuse.Animations.Easing.CubicInOut;
        temp7.Duration = 0.5;
        temp8.Value = float4(0.9882353f, 0.3176471f, 0.5215687f, 1f);
        temp8.Duration = 0.3;
        temp9.Value = float4(15f, 15f, 15f, 15f);
        temp9.Duration = 0.3;
        temp10.Title = "Logic with JavaScript";
        temp10.Color = float4(1f, 1f, 1f, 1f);
        temp10.HeaderColor = float4(0.9647059f, 0.5607843f, 0.8431373f, 1f);
        temp10.HeaderTextColor = float4(1f, 1f, 1f, 1f);
        temp10.Instructions = "Click the screen to add items";
        global::Fuse.Gestures.Clicked.AddHandler(temp10, temp_eb0.OnEvent);
        temp10.Children.Add(temp12);
        temp10.Behaviors.Add(temp_eb0);
        temp10.Behaviors.Add(temp11);
        temp11.Code = "var Observable = require('FuseJS/Observable');\n\t\t\t\t\titems = Observable();\n\t\t\t\t\tfunction addItem(){\n\t\t\t\t\t\titems.add({\n\t\t\t\t\t\t\tcolor : [Math.random(), Math.random(), Math.random(), 1],\n\t\t\t\t\t\t\theight : (Math.random() + 1.0) * 80\n\t\t\t\t\t\t});\n\t\t\t\t\t}\n\t\t\t\t\tmodule.exports = {\n\t\t\t\t\t\titems : items,\n\t\t\t\t\t\taddItem : addItem\n\t\t\t\t\t};";
        temp11.LineNumber = 38;
        temp11.FileName = "MainView.ux";
        temp12.Content = temp13;
        temp13.Layout = temp14;
        temp13.Behaviors.Add(temp15);
        temp13.Behaviors.Add(temp);
        temp14.ColumnCount = 3;
        temp.Factories.Add(item);
        temp16.Title = "Realtime effects";
        temp16.Color = float4(1f, 1f, 1f, 1f);
        temp16.HeaderColor = float4(0.172549f, 0.682353f, 0.2470588f, 1f);
        temp16.HeaderTextColor = float4(1f, 1f, 1f, 1f);
        temp16.Instructions = "Use the slider to blur the logo";
        temp16.Children.Add(temp17);
        temp17.RowCount = 2;
        temp17.Children.Add(temp18);
        temp17.Children.Add(temp19);
        temp18.Color = float4(0f, 0f, 0f, 1f);
        temp18.File = new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../../../Assets/FuseLogo.png"));
        temp18.Effects.Add(myBlur);
        myBlur.Radius = 0f;
        temp19.Alignment = Fuse.Elements.Alignment.VerticalCenter;
        temp19.Margin = float4(40f, 0f, 40f, 0f);
        temp19.Behaviors.Add(temp20);
        temp20.Animators.Add(temp21);
        temp21.Value = 10f;
        __g_nametable.Objects.Add(myRectangle);
        __g_nametable.Objects.Add(myBlur);
        this.RootNode = temp1;
        this.Theme = Fuse.BasicTheme.BasicTheme.Singleton;
    }
}
