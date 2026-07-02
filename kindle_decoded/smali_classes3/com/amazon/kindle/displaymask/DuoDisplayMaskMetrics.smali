.class final Lcom/amazon/kindle/displaymask/DuoDisplayMaskMetrics;
.super Ljava/lang/Object;
.source "DuoDisplayMaskMetrics.kt"

# interfaces
.implements Lcom/amazon/kindle/displaymask/DisplayMaskMetrics;


# instance fields
.field private final fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;)V
    .locals 1

    const-string v0, "fastMetrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/displaymask/DuoDisplayMaskMetrics;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    return-void
.end method

.method private final reportFastMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 79
    invoke-static {}, Lcom/amazon/kindle/displaymask/DuoDisplayMaskMetricsKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fired "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->ANDROID_DISPLAY_MASK:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    .line 82
    iget-object v1, p0, Lcom/amazon/kindle/displaymask/DuoDisplayMaskMetrics;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    const-string v1, "event_id"

    .line 83
    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    if-eqz p2, :cond_0

    const-string p1, "event_value"

    .line 85
    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/displaymask/DuoDisplayMaskMetrics;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-interface {v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    return-void
.end method

.method static synthetic reportFastMetric$default(Lcom/amazon/kindle/displaymask/DuoDisplayMaskMetrics;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 78
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/displaymask/DuoDisplayMaskMetrics;->reportFastMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onApplicationCreated(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v0, "HasDisplayMask"

    const/4 v1, 0x2

    .line 69
    invoke-static {p0, v0, p1, v1, p1}, Lcom/amazon/kindle/displaymask/DuoDisplayMaskMetrics;->reportFastMetric$default(Lcom/amazon/kindle/displaymask/DuoDisplayMaskMetrics;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onBookOpened(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 74
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const-string p1, "DisplayMaskActive"

    goto :goto_0

    :cond_0
    const-string p1, "NoDisplayMask"

    :goto_0
    const-string v0, "BookOpened"

    .line 75
    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/displaymask/DuoDisplayMaskMetrics;->reportFastMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDisplayMaskChangedInMainActivity(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentTab"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 64
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const-string p1, "DisplayMaskAdded"

    goto :goto_0

    :cond_0
    const-string p1, "DisplayMaskRemoved"

    .line 65
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChangedMainActivity"

    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/displaymask/DuoDisplayMaskMetrics;->reportFastMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDisplayMaskChangedInReaderActivity(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 58
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const-string p1, "DisplayMaskAdded"

    goto :goto_0

    :cond_0
    const-string p1, "DisplayMaskRemoved"

    :goto_0
    const-string v0, "ChangedReaderActivity"

    .line 59
    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/displaymask/DuoDisplayMaskMetrics;->reportFastMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
