public partial class PageWithTitle: Fuse.Controls.Page
{
    float4 _field_HeaderColor;
    [global::Uno.UX.UXValueChangedEvent("SetHeaderColor", "HeaderColorChanged")]
    public float4 HeaderColor
    {
        get { return _field_HeaderColor; }
        set { SetHeaderColor(value, null); }
    }
    public event global::Uno.UX.ValueChangedHandler<float4> HeaderColorChanged;
    public void SetHeaderColor(float4 value, object origin)
    {
        if (value != _field_HeaderColor)
        {
            _field_HeaderColor = value;
            var args = new global::Uno.UX.ValueChangedArgs<float4>(value, origin);
            if (HeaderColorChanged != null) HeaderColorChanged(this, args);
        }
    }
    float4 _field_HeaderTextColor;
    [global::Uno.UX.UXValueChangedEvent("SetHeaderTextColor", "HeaderTextColorChanged")]
    public float4 HeaderTextColor
    {
        get { return _field_HeaderTextColor; }
        set { SetHeaderTextColor(value, null); }
    }
    public event global::Uno.UX.ValueChangedHandler<float4> HeaderTextColorChanged;
    public void SetHeaderTextColor(float4 value, object origin)
    {
        if (value != _field_HeaderTextColor)
        {
            _field_HeaderTextColor = value;
            var args = new global::Uno.UX.ValueChangedArgs<float4>(value, origin);
            if (HeaderTextColorChanged != null) HeaderTextColorChanged(this, args);
        }
    }
    string _field_Instructions;
    [global::Uno.UX.UXValueChangedEvent("SetInstructions", "InstructionsChanged")]
    public string Instructions
    {
        get { return _field_Instructions; }
        set { SetInstructions(value, null); }
    }
    public event global::Uno.UX.ValueChangedHandler<string> InstructionsChanged;
    public void SetInstructions(string value, object origin)
    {
        if (value != _field_Instructions)
        {
            _field_Instructions = value;
            var args = new global::Uno.UX.ValueChangedArgs<string>(value, origin);
            if (InstructionsChanged != null) InstructionsChanged(this, args);
        }
    }
    test_FuseControlsTextControl_string_Value_Property temp_Value_inst;
    test_FuseControlsPage_string_Title_Property this_Title_inst;
    test_FuseControlsTextControl_float4_TextColor_Property temp_TextColor_inst;
    test_PageWithTitle_float4_HeaderTextColor_Property this_HeaderTextColor_inst;
    test_FuseControlsPanel_float4_Color_Property temp1_Color_inst;
    test_PageWithTitle_float4_HeaderColor_Property this_HeaderColor_inst;
    test_FuseControlsTextControl_string_Value_Property temp2_Value_inst;
    test_PageWithTitle_string_Instructions_Property this_Instructions_inst;
    static PageWithTitle()
    {
    }
    public PageWithTitle()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp = new Fuse.Controls.Text();
        temp_Value_inst = new test_FuseControlsTextControl_string_Value_Property(temp);
        this_Title_inst = new test_FuseControlsPage_string_Title_Property(this);
        temp_TextColor_inst = new test_FuseControlsTextControl_float4_TextColor_Property(temp);
        this_HeaderTextColor_inst = new test_PageWithTitle_float4_HeaderTextColor_Property(this);
        var temp1 = new Fuse.Controls.Panel();
        temp1_Color_inst = new test_FuseControlsPanel_float4_Color_Property(temp1);
        this_HeaderColor_inst = new test_PageWithTitle_float4_HeaderColor_Property(this);
        var temp2 = new Fuse.Controls.Text();
        temp2_Value_inst = new test_FuseControlsTextControl_string_Value_Property(temp2);
        this_Instructions_inst = new test_PageWithTitle_string_Instructions_Property(this);
        var temp3 = new Fuse.Layouts.DockLayout();
        var temp4 = new Fuse.Controls.StackPanel();
        var temp5 = new Fuse.Controls.StatusBarBackground();
        var temp6 = new Fuse.Controls.PropertyBinding<string>(temp_Value_inst, this_Title_inst);
        var temp7 = new Fuse.Controls.PropertyBinding<float4>(temp_TextColor_inst, this_HeaderTextColor_inst);
        var temp8 = new Fuse.Controls.PropertyBinding<float4>(temp1_Color_inst, this_HeaderColor_inst);
        var temp9 = new Fuse.Controls.Panel();
        var temp10 = new Fuse.Navigation.WhileActive();
        var temp11 = new Fuse.Animations.Move();
        var temp12 = new Fuse.Controls.PropertyBinding<string>(temp2_Value_inst, this_Instructions_inst);
        this.HitTestMode = Fuse.Elements.HitTestMode.LocalBoundsAndChildren;
        this.Name = "self";
        global::Fuse.Controls.DockPanel.SetDock(temp4, Fuse.Layouts.Dock.Top);
        temp4.Children.Add(temp5);
        temp4.Children.Add(temp1);
        temp1.Height = new Uno.UX.Size(45f, Uno.UX.Unit.Unspecified);
        temp1.Children.Add(temp);
        temp1.Behaviors.Add(temp8);
        temp.FontSize = 22f;
        temp.Alignment = Fuse.Elements.Alignment.Center;
        temp.Behaviors.Add(temp6);
        temp.Behaviors.Add(temp7);
        temp9.Color = float4(0f, 0f, 0f, 0.5333334f);
        temp9.Height = new Uno.UX.Size(10f, Uno.UX.Unit.Percent);
        temp9.Alignment = Fuse.Elements.Alignment.Bottom;
        temp9.Children.Add(temp2);
        temp9.Behaviors.Add(temp10);
        temp10.Threshold = 0.4f;
        temp10.Invert = true;
        temp10.Animators.Add(temp11);
        temp11.Y = 1f;
        temp11.Easing = Fuse.Animations.Easing.CircularInOut;
        temp11.Duration = 0.4;
        temp11.RelativeTo = Fuse.TranslationModes.Size;
        temp2.TextColor = float4(1f, 1f, 1f, 1f);
        temp2.Alignment = Fuse.Elements.Alignment.Center;
        temp2.Margin = float4(20f, 20f, 20f, 20f);
        temp2.Behaviors.Add(temp12);
        this.Layout = temp3;
        this.Children.Add(temp4);
        this.Children.Add(temp9);
    }
}
