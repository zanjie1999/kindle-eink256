.class public Lcom/amazon/kcp/reader/ui/MultiColumnViewOptionData;
.super Lcom/amazon/kcp/reader/ui/ViewOptionData;
.source "MultiColumnViewOptionData.java"


# static fields
.field private static final METRICS_EVENT_ONE_COLUMN_CLICKED:Ljava/lang/String; = "OneColumnClicked"

.field private static final METRICS_EVENT_TWO_COLUMN_CLICKED:Ljava/lang/String; = "TwoColumnClicked"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/kcp/reader/ui/MultiColumnViewOptionData;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/MultiColumnViewOptionData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 27
    sget v0, Lcom/amazon/kindle/krl/R$string;->columns:I

    sget v1, Lcom/amazon/kindle/krl/R$array;->columns:I

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kcp/reader/ui/ViewOptionData;-><init>(IILandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getSelectedIndex()I
    .locals 1

    .line 54
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

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

    const/4 p1, 0x1

    add-int/2addr p2, p1

    .line 33
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/application/UserSettingsController;->setColumnCount(I)V

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    .line 44
    sget-object p1, Lcom/amazon/kcp/reader/ui/MultiColumnViewOptionData;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detected invalid column count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "TwoColumnClicked"

    goto :goto_0

    :cond_1
    const-string p1, "OneColumnClicked"

    :goto_0
    if-eqz p1, :cond_2

    .line 48
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "MultiColumnViewOptionData"

    invoke-virtual {p2, v1, p1, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_2
    return-void
.end method
