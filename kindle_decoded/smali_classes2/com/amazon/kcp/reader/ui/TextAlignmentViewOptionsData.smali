.class public Lcom/amazon/kcp/reader/ui/TextAlignmentViewOptionsData;
.super Lcom/amazon/kcp/reader/ui/ViewOptionData;
.source "TextAlignmentViewOptionsData.java"


# static fields
.field private static final JUSTIFIED_INDEX:I = 0x0

.field private static final LEFT_ALIGNMENT_INDEX:I = 0x1

.field private static final METRICS_CLASS:Ljava/lang/String; = "TextAlignmentOptionsView"

.field private static final METRICS_EVENT_ALIGNMENT_JUSTIFY_CLICKED:Ljava/lang/String; = "AlignJustifyClicked"

.field private static final METRICS_EVENT_ALIGNMENT_LEFT_CLICKED:Ljava/lang/String; = "AlignLeftClicked"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    sget v0, Lcom/amazon/kindle/krl/R$string;->text_alignment:I

    sget v1, Lcom/amazon/kindle/krl/R$array;->text_alignment_options:I

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kcp/reader/ui/ViewOptionData;-><init>(IILandroid/content/Context;)V

    .line 35
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected getDropDownIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 67
    invoke-static {p1}, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->fromSerializationValue(I)Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    move-result-object p1

    .line 68
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->LEFT:Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->ic_alignment_left_aligned:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->ic_alignment_justified:I

    .line 69
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

    .line 61
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getForceDisableJustification()Z

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

    .line 41
    sget-object p1, Lcom/amazon/kcp/reader/ui/TextAlignmentViewOptionsData$1;->$SwitchMap$com$amazon$android$docviewer$KindleDocLineSettings$TextAlignment:[I

    invoke-static {p2}, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->fromSerializationValue(I)Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/UserSettingsController;->setForceDisableJustification(Z)V

    const-string p1, "AlignLeftClicked"

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/UserSettingsController;->setForceDisableJustification(Z)V

    const-string p1, "AlignJustifyClicked"

    :goto_0
    if-eqz p1, :cond_2

    .line 55
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "TextAlignmentOptionsView"

    invoke-virtual {p2, v1, p1, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_2
    return-void
.end method
