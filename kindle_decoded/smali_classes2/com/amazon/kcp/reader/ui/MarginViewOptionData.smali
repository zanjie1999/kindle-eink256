.class public Lcom/amazon/kcp/reader/ui/MarginViewOptionData;
.super Lcom/amazon/kcp/reader/ui/ViewOptionData;
.source "MarginViewOptionData.java"


# static fields
.field private static final METRICS_EVENT_NARROW_MARGINS_CLICKED:Ljava/lang/String; = "MarginsNarrowClicked"

.field private static final METRICS_EVENT_NO_MARGINS_CLICKED:Ljava/lang/String; = "MarginsNoneClicked"

.field private static final METRICS_EVENT_WIDE_MARGINS_CLICKED:Ljava/lang/String; = "MarginsWideClicked"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 26
    sget v0, Lcom/amazon/kindle/krl/R$string;->page_margins:I

    sget v1, Lcom/amazon/kindle/krl/R$array;->page_margins:I

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kcp/reader/ui/ViewOptionData;-><init>(IILandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getDropDownIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 61
    invoke-static {p1}, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->fromSerializationValue(I)Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object p1

    .line 63
    sget-object v0, Lcom/amazon/kcp/reader/ui/MarginViewOptionData$1;->$SwitchMap$com$amazon$android$docviewer$KindleDocLineSettings$Margin:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 71
    :cond_0
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->isVertical:Z

    if-eqz p1, :cond_1

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->ic_margin_wide_vert:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->ic_margin_wide:I

    goto :goto_0

    .line 68
    :cond_2
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->isVertical:Z

    if-eqz p1, :cond_3

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->ic_margin_narrow_vert:I

    goto :goto_0

    :cond_3
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->ic_margin_narrow:I

    goto :goto_0

    .line 65
    :cond_4
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->isVertical:Z

    if-eqz p1, :cond_5

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->ic_margin_none_vert:I

    goto :goto_0

    :cond_5
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->ic_margin_none:I

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected getSelectedIndex()I
    .locals 1

    .line 56
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->serializationValue()I

    move-result v0

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

    .line 31
    invoke-static {p2}, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->fromSerializationValue(I)Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object p1

    .line 32
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)V

    .line 35
    sget-object p2, Lcom/amazon/kcp/reader/ui/MarginViewOptionData$1;->$SwitchMap$com$amazon$android$docviewer$KindleDocLineSettings$Margin:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "MarginsWideClicked"

    goto :goto_0

    :cond_1
    const-string p1, "MarginsNarrowClicked"

    goto :goto_0

    :cond_2
    const-string p1, "MarginsNoneClicked"

    :goto_0
    if-eqz p1, :cond_3

    .line 48
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "MarginViewOptionData"

    invoke-virtual {p2, v1, p1, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_3
    return-void
.end method
