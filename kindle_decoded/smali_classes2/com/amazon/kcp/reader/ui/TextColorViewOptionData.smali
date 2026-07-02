.class public Lcom/amazon/kcp/reader/ui/TextColorViewOptionData;
.super Lcom/amazon/kcp/reader/ui/ViewOptionData;
.source "TextColorViewOptionData.java"


# static fields
.field private static final METRICS_EVENT_BLACK_COLOR_CLICKED:Ljava/lang/String; = "BlackColorClicked"

.field private static final METRICS_EVENT_GREEN_COLOR_CLICKED:Ljava/lang/String; = "GreenColorClicked"

.field private static final METRICS_EVENT_NIGHT_COLOR_CLICKED:Ljava/lang/String; = "NightColorClicked"

.field private static final METRICS_EVENT_SEPIA_COLOR_CLICKED:Ljava/lang/String; = "SepiaColorClicked"

.field private static final METRICS_EVENT_WHITE_COLOR_CLICKED:Ljava/lang/String; = "WhiteColorClicked"

.field private static final textColorOptions:[Lcom/amazon/kcp/reader/ui/ColorModeData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kcp/reader/ui/ColorModeData;

    .line 35
    sget-object v1, Lcom/amazon/kcp/reader/ui/ColorModeData;->WHITE:Lcom/amazon/kcp/reader/ui/ColorModeData;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/reader/ui/ColorModeData;->BLACK:Lcom/amazon/kcp/reader/ui/ColorModeData;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/reader/ui/ColorModeData;->SEPIA:Lcom/amazon/kcp/reader/ui/ColorModeData;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/reader/ui/ColorModeData;->GREEN:Lcom/amazon/kcp/reader/ui/ColorModeData;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/reader/ui/TextColorViewOptionData;->textColorOptions:[Lcom/amazon/kcp/reader/ui/ColorModeData;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    sget v0, Lcom/amazon/kindle/krl/R$string;->color:I

    sget v1, Lcom/amazon/kindle/krl/R$array;->color_modes:I

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kcp/reader/ui/ViewOptionData;-><init>(IILandroid/content/Context;)V

    return-void
.end method

.method private getColorMode(ILandroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;
    .locals 1

    .line 116
    sget-object v0, Lcom/amazon/kcp/reader/ui/TextColorViewOptionData;->textColorOptions:[Lcom/amazon/kcp/reader/ui/ColorModeData;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ColorModeData;->getColorId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object p1

    .line 117
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getDropDownIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/TextColorViewOptionData;->getColorMode(ILandroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p1

    .line 102
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 103
    sget v2, Lcom/amazon/kindle/krl/R$string;->view_options_text_color_symbol:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getBackgroundColor()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 p1, 0x11

    .line 106
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 107
    sget p1, Lcom/amazon/kindle/krl/R$dimen;->view_options_color_icon_text_size:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 109
    sget p1, Lcom/amazon/kindle/krl/R$dimen;->view_options_color_icon_width:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 110
    sget v2, Lcom/amazon/kindle/krl/R$dimen;->view_options_color_icon_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 112
    invoke-static {v1, v0, p1, v2}, Lcom/amazon/android/util/UIUtils;->getDrawable(Landroid/view/View;Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected getSelectedIndex()I
    .locals 4

    .line 81
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getUserSetColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v1

    .line 85
    sget-object v2, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->NIGHT:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    if-ne v1, v2, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getColorModeBeforeNightMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v1

    :cond_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    sget-object v2, Lcom/amazon/kcp/reader/ui/TextColorViewOptionData;->textColorOptions:[Lcom/amazon/kcp/reader/ui/ColorModeData;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 89
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ColorModeData;->getColorId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v2

    if-ne v2, v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method protected onSpinnerItemSelected(Landroid/widget/AdapterView;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;I)V"
        }
    .end annotation

    .line 49
    sget-object p1, Lcom/amazon/kcp/reader/ui/TextColorViewOptionData;->textColorOptions:[Lcom/amazon/kcp/reader/ui/ColorModeData;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ColorModeData;->getColorId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object p1

    .line 50
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    .line 53
    sget-object p2, Lcom/amazon/kcp/reader/ui/TextColorViewOptionData$1;->$SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "NightColorClicked"

    goto :goto_0

    :cond_1
    const-string p1, "GreenColorClicked"

    goto :goto_0

    :cond_2
    const-string p1, "BlackColorClicked"

    goto :goto_0

    :cond_3
    const-string p1, "SepiaColorClicked"

    goto :goto_0

    :cond_4
    const-string p1, "WhiteColorClicked"

    :goto_0
    if-eqz p1, :cond_5

    .line 74
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "TextColorViewOptionData"

    invoke-virtual {p2, v1, p1, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_5
    return-void
.end method
