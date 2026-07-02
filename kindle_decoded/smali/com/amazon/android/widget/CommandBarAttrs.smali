.class Lcom/amazon/android/widget/CommandBarAttrs;
.super Ljava/lang/Object;
.source "CommandBarAttrs.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field final actionButtonImageHeight:I

.field final actionButtonImageWidth:I

.field final enableTextWrapInPopup:Z

.field final endButtonPadding:I

.field final maxVisibleEndButtons:I

.field final maxVisibleStartButtons:I

.field final overflowButtonColor:I

.field final popupWindowBackgroundColor:I

.field final popupWindowButtonPadding:I

.field final popupWindowDisabledTextColor:I

.field final popupWindowImageHeight:I

.field final popupWindowImageTextGap:I

.field final popupWindowImageWidth:I

.field final popupWindowMaxHeight:I

.field final popupWindowPadding:I

.field final popupWindowTextColor:I

.field final popupWindowTextFont:Landroid/graphics/Typeface;

.field final popupWindowTextHeight:I

.field final popupWindowTextSize:F

.field final popupWindowXOffset:I

.field final popupWindowYOffset:I

.field final showIconsInPopup:Z

.field final startButtonPadding:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-class v0, Lcom/amazon/android/widget/CommandBarAttrs;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/widget/CommandBarAttrs;->TAG:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/wl/R$styleable;->CommandBar:[I

    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 105
    sget p3, Lcom/amazon/kindle/wl/R$styleable;->CommandBar_buttonHeight:I

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/amazon/kindle/wl/R$dimen;->command_bar_default_button_height:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    .line 105
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 107
    sget p3, Lcom/amazon/kindle/wl/R$styleable;->CommandBar_maxVisibleEndButtons:I

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/amazon/kindle/wl/R$integer;->command_bar_max_visible_buttons_default:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p4

    .line 107
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/amazon/android/widget/CommandBarAttrs;->maxVisibleEndButtons:I

    .line 109
    sget p3, Lcom/amazon/kindle/wl/R$styleable;->CommandBar_maxVisibleStartButtons:I

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/amazon/kindle/wl/R$integer;->command_bar_max_visible_buttons_default:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p4

    .line 109
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/amazon/android/widget/CommandBarAttrs;->maxVisibleStartButtons:I

    .line 111
    sget p3, Lcom/amazon/kindle/wl/R$styleable;->CommandBar_buttonWidth:I

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/amazon/kindle/wl/R$dimen;->command_bar_default_button_width:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    .line 111
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 113
    sget p3, Lcom/amazon/kindle/wl/R$styleable;->CommandBar_themedButtonColor:I

    const/high16 p4, -0x1000000

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/amazon/android/widget/CommandBarAttrs;->overflowButtonColor:I

    .line 116
    sget p3, Lcom/amazon/kindle/wl/R$styleable;->CommandBar_startButtonPadding:I

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/amazon/kindle/wl/R$dimen;->command_bar_default_start_end_button_padding:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    .line 116
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/amazon/android/widget/CommandBarAttrs;->startButtonPadding:I

    .line 118
    sget p3, Lcom/amazon/kindle/wl/R$styleable;->CommandBar_endButtonPadding:I

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/amazon/kindle/wl/R$dimen;->command_bar_default_start_end_button_padding:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    .line 118
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/amazon/android/widget/CommandBarAttrs;->endButtonPadding:I

    .line 120
    sget p3, Lcom/amazon/kindle/wl/R$styleable;->CommandBar_actionButtonImageHeight:I

    const/4 p4, -0x2

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/amazon/android/widget/CommandBarAttrs;->actionButtonImageHeight:I

    .line 121
    sget p3, Lcom/amazon/kindle/wl/R$styleable;->CommandBar_actionButtonImageWidth:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/amazon/android/widget/CommandBarAttrs;->actionButtonImageWidth:I

    .line 124
    sget p3, Lcom/amazon/kindle/wl/R$styleable;->CommandBar_popupWindowButtonPadding:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowButtonPadding:I

    .line 126
    sget p3, Lcom/amazon/kindle/wl/R$styleable;->CommandBar_popupWindowBackgroundColor:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowBackgroundColor:I

    .line 127
    sget p3, Lcom/amazon/kindle/wl/R$styleable;->CommandBar_popupWindowTextColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowTextColor:I

    .line 128
    sget p3, Lcom/amazon/kindle/wl/R$styleable;->CommandBar_popupWindowDisabledTextColor:I

    const v0, -0x777778

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowDisabledTextColor:I

    .line 129
    sget p3, Lcom/amazon/kindle/wl/R$styleable;->CommandBar_popupWindowTextHeight:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowTextHeight:I

    .line 130
    sget p3, Lcom/amazon/kindle/wl/R$styleable;->CommandBar_popupWindowTextSize:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowTextSize:F

    .line 132
    sget p3, Lcom/amazon/kindle/wl/R$styleable;->CommandBar_popupWindowTextFont:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 134
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-static {p1, p3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find the font"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " in assets"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowTextFont:Landroid/graphics/Typeface;

    .line 145
    sget p1, Lcom/amazon/kindle/wl/R$styleable;->CommandBar_popupWindowImageTextGap:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowImageTextGap:I

    .line 146
    sget p1, Lcom/amazon/kindle/wl/R$styleable;->CommandBar_popupWindowImageWidth:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowImageWidth:I

    .line 147
    sget p1, Lcom/amazon/kindle/wl/R$styleable;->CommandBar_popupWindowImageHeight:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowImageHeight:I

    .line 149
    sget p1, Lcom/amazon/kindle/wl/R$styleable;->CommandBar_popupWindowPadding:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowPadding:I

    .line 150
    sget p1, Lcom/amazon/kindle/wl/R$styleable;->CommandBar_popupWindowXOffset:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowXOffset:I

    .line 151
    sget p1, Lcom/amazon/kindle/wl/R$styleable;->CommandBar_popupWindowYOffset:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowYOffset:I

    .line 152
    sget p1, Lcom/amazon/kindle/wl/R$styleable;->CommandBar_popupWindowMaxHeight:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowMaxHeight:I

    .line 154
    sget p1, Lcom/amazon/kindle/wl/R$styleable;->CommandBar_showIconsInPopup:I

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/android/widget/CommandBarAttrs;->showIconsInPopup:Z

    .line 155
    sget p1, Lcom/amazon/kindle/wl/R$styleable;->CommandBar_enableTextWrapInPopup:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/android/widget/CommandBarAttrs;->enableTextWrapInPopup:Z

    .line 157
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
