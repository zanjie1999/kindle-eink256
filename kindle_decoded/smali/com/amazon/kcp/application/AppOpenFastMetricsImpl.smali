.class final Lcom/amazon/kcp/application/AppOpenFastMetricsImpl;
.super Ljava/lang/Object;
.source "AppOpenFastMetrics.kt"

# interfaces
.implements Lcom/amazon/kcp/application/AppOpenFastMetrics;


# instance fields
.field private shouldSendColdOpenMetric:Z

.field private shouldSendWarmOpenMetric:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/amazon/kcp/application/AppOpenFastMetricsImpl;->shouldSendColdOpenMetric:Z

    return-void
.end method

.method private final recordFastMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
            "+",
            "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
            ">;)V"
        }
    .end annotation

    .line 129
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    const-string p2, "getPayloadBuilder(schemaName, schemaVersion)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    :cond_0
    return-void
.end method

.method private final sendAppOpenMetric(Ljava/lang/String;)V
    .locals 2

    .line 96
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AppOpenFastMetricsImpl;->shouldSendColdOpenMetric:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "cold"

    .line 97
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/application/AppOpenFastMetricsImpl;->sendFastMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Lcom/amazon/kcp/application/AppOpenFastMetricsImpl;->sendThemeMetric()V

    .line 99
    iput-boolean v1, p0, Lcom/amazon/kcp/application/AppOpenFastMetricsImpl;->shouldSendColdOpenMetric:Z

    goto :goto_0

    .line 100
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AppOpenFastMetricsImpl;->shouldSendWarmOpenMetric:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "warm"

    .line 101
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/application/AppOpenFastMetricsImpl;->sendFastMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iput-boolean v1, p0, Lcom/amazon/kcp/application/AppOpenFastMetricsImpl;->shouldSendWarmOpenMetric:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private final sendFastMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 107
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->APP_OPEN_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v0

    .line 108
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->APP_OPEN_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v1

    new-instance v2, Lcom/amazon/kcp/application/AppOpenFastMetricsImpl$sendFastMetric$1;

    invoke-direct {v2, p1, p2}, Lcom/amazon/kcp/application/AppOpenFastMetricsImpl$sendFastMetric$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kcp/application/AppOpenFastMetricsImpl;->recordFastMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final sendThemeMetric()V
    .locals 4

    .line 118
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Utils.getFactory().kindleReaderSDK ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseThreeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->APP_START_THEME:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v1

    .line 121
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->APP_START_THEME:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v2

    new-instance v3, Lcom/amazon/kcp/application/AppOpenFastMetricsImpl$sendThemeMetric$1;

    invoke-direct {v3, v0}, Lcom/amazon/kcp/application/AppOpenFastMetricsImpl$sendThemeMetric$1;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 120
    invoke-direct {p0, v1, v2, v3}, Lcom/amazon/kcp/application/AppOpenFastMetricsImpl;->recordFastMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAppBackgrounded()V
    .locals 1

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/amazon/kcp/application/AppOpenFastMetricsImpl;->shouldSendWarmOpenMetric:Z

    return-void
.end method

.method public onBookViewShown()V
    .locals 1

    const-string v0, "Book"

    .line 88
    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/AppOpenFastMetricsImpl;->sendAppOpenMetric(Ljava/lang/String;)V

    return-void
.end method

.method public onLibraryViewShown(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AppOpenFastMetricsImpl;->sendAppOpenMetric(Ljava/lang/String;)V

    return-void
.end method
