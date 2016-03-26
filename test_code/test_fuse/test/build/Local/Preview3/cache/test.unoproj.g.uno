sealed class test_FuseControlsPanel_float4_Color_Property: Uno.UX.Property<float4>
{
    Fuse.Controls.Panel _obj;
    public test_FuseControlsPanel_float4_Color_Property(Fuse.Controls.Panel obj) { _obj = obj; obj.ColorChanged += this.OnValueChanged; }
    protected override float4 OnGet() { return _obj.Color; }
    protected override void OnSet(float4 v, object origin) { _obj.SetColor(v, origin); }
    protected override void OnAddListener(Uno.UX.ValueChangedHandler<float4> listener) { _obj.ColorChanged += listener; }
    protected override void OnRemoveListener(Uno.UX.ValueChangedHandler<float4> listener) { _obj.ColorChanged -= listener; }
}
sealed class test_FuseControlsTextControl_string_Value_Property: Uno.UX.Property<string>
{
    Fuse.Controls.TextControl _obj;
    public test_FuseControlsTextControl_string_Value_Property(Fuse.Controls.TextControl obj) { _obj = obj; obj.ValueChanged += this.OnValueChanged; }
    protected override string OnGet() { return _obj.Value; }
    protected override void OnSet(string v, object origin) { _obj.SetValue(v, origin); }
    protected override void OnAddListener(Uno.UX.ValueChangedHandler<string> listener) { _obj.ValueChanged += listener; }
    protected override void OnRemoveListener(Uno.UX.ValueChangedHandler<string> listener) { _obj.ValueChanged -= listener; }
}
sealed class test_FuseControlsTextControl_float4_TextColor_Property: Uno.UX.Property<float4>
{
    Fuse.Controls.TextControl _obj;
    public test_FuseControlsTextControl_float4_TextColor_Property(Fuse.Controls.TextControl obj) { _obj = obj;  }
    protected override float4 OnGet() { return _obj.TextColor; }
    protected override void OnSet(float4 v, object origin) { _obj.TextColor = v; }
}
sealed class test_FuseReactiveEach_object_Items_Property: Uno.UX.Property<object>
{
    Fuse.Reactive.Each _obj;
    public test_FuseReactiveEach_object_Items_Property(Fuse.Reactive.Each obj) { _obj = obj;  }
    protected override object OnGet() { return _obj.Items; }
    protected override void OnSet(object v, object origin) { _obj.Items = v; }
}
sealed class test_FuseControlsShape_float4_Color_Property: Uno.UX.Property<float4>
{
    Fuse.Controls.Shape _obj;
    public test_FuseControlsShape_float4_Color_Property(Fuse.Controls.Shape obj) { _obj = obj; obj.ColorChanged += this.OnValueChanged; }
    protected override float4 OnGet() { return _obj.Color; }
    protected override void OnSet(float4 v, object origin) { _obj.SetColor(v, origin); }
    protected override void OnAddListener(Uno.UX.ValueChangedHandler<float4> listener) { _obj.ColorChanged += listener; }
    protected override void OnRemoveListener(Uno.UX.ValueChangedHandler<float4> listener) { _obj.ColorChanged -= listener; }
}
sealed class test_FuseElementsElement_UnoUXSize_Height_Property: Uno.UX.Property<Uno.UX.Size>
{
    Fuse.Elements.Element _obj;
    public test_FuseElementsElement_UnoUXSize_Height_Property(Fuse.Elements.Element obj) { _obj = obj;  }
    protected override Uno.UX.Size OnGet() { return _obj.Height; }
    protected override void OnSet(Uno.UX.Size v, object origin) { _obj.Height = v; }
}
sealed class test_PageWithTitle_float4_HeaderColor_Property: Uno.UX.Property<float4>
{
    PageWithTitle _obj;
    public test_PageWithTitle_float4_HeaderColor_Property(PageWithTitle obj) { _obj = obj; obj.HeaderColorChanged += this.OnValueChanged; }
    protected override float4 OnGet() { return _obj.HeaderColor; }
    protected override void OnSet(float4 v, object origin) { _obj.SetHeaderColor(v, origin); }
    protected override void OnAddListener(Uno.UX.ValueChangedHandler<float4> listener) { _obj.HeaderColorChanged += listener; }
    protected override void OnRemoveListener(Uno.UX.ValueChangedHandler<float4> listener) { _obj.HeaderColorChanged -= listener; }
}
sealed class test_FuseControlsPage_string_Title_Property: Uno.UX.Property<string>
{
    Fuse.Controls.Page _obj;
    public test_FuseControlsPage_string_Title_Property(Fuse.Controls.Page obj) { _obj = obj;  }
    protected override string OnGet() { return _obj.Title; }
    protected override void OnSet(string v, object origin) { _obj.Title = v; }
}
sealed class test_PageWithTitle_float4_HeaderTextColor_Property: Uno.UX.Property<float4>
{
    PageWithTitle _obj;
    public test_PageWithTitle_float4_HeaderTextColor_Property(PageWithTitle obj) { _obj = obj; obj.HeaderTextColorChanged += this.OnValueChanged; }
    protected override float4 OnGet() { return _obj.HeaderTextColor; }
    protected override void OnSet(float4 v, object origin) { _obj.SetHeaderTextColor(v, origin); }
    protected override void OnAddListener(Uno.UX.ValueChangedHandler<float4> listener) { _obj.HeaderTextColorChanged += listener; }
    protected override void OnRemoveListener(Uno.UX.ValueChangedHandler<float4> listener) { _obj.HeaderTextColorChanged -= listener; }
}
sealed class test_PageWithTitle_string_Instructions_Property: Uno.UX.Property<string>
{
    PageWithTitle _obj;
    public test_PageWithTitle_string_Instructions_Property(PageWithTitle obj) { _obj = obj; obj.InstructionsChanged += this.OnValueChanged; }
    protected override string OnGet() { return _obj.Instructions; }
    protected override void OnSet(string v, object origin) { _obj.SetInstructions(v, origin); }
    protected override void OnAddListener(Uno.UX.ValueChangedHandler<string> listener) { _obj.InstructionsChanged += listener; }
    protected override void OnRemoveListener(Uno.UX.ValueChangedHandler<string> listener) { _obj.InstructionsChanged -= listener; }
}
sealed class test_FuseControlsRectangle_float4_CornerRadius_Property: Uno.UX.Property<float4>
{
    Fuse.Controls.Rectangle _obj;
    public test_FuseControlsRectangle_float4_CornerRadius_Property(Fuse.Controls.Rectangle obj) { _obj = obj;  }
    protected override float4 OnGet() { return _obj.CornerRadius; }
    protected override void OnSet(float4 v, object origin) { _obj.CornerRadius = v; }
}
sealed class test_FuseElementsElement_float_Opacity_Property: Uno.UX.Property<float>
{
    Fuse.Elements.Element _obj;
    public test_FuseElementsElement_float_Opacity_Property(Fuse.Elements.Element obj) { _obj = obj;  }
    protected override float OnGet() { return _obj.Opacity; }
    protected override void OnSet(float v, object origin) { _obj.Opacity = v; }
}
sealed class test_FuseEffectsBlur_float_Radius_Property: Uno.UX.Property<float>
{
    Fuse.Effects.Blur _obj;
    public test_FuseEffectsBlur_float_Radius_Property(Fuse.Effects.Blur obj) { _obj = obj;  }
    protected override float OnGet() { return _obj.Radius; }
    protected override void OnSet(float v, object origin) { _obj.Radius = v; }
}
