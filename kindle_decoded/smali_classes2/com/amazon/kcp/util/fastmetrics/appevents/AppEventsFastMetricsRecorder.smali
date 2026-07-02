.class public final Lcom/amazon/kcp/util/fastmetrics/appevents/AppEventsFastMetricsRecorder;
.super Ljava/lang/Object;
.source "AppEventsFastMetricsRecorder.kt"

# interfaces
.implements Lcom/amazon/kcp/util/fastmetrics/appevents/EventsFastMetricsRecorder;


# instance fields
.field private final Tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Lcom/amazon/kcp/util/fastmetrics/appevents/AppEventsFastMetricsRecorder;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Log.getTag(AppEventsFast\u2026ricsRecorder::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/appevents/AppEventsFastMetricsRecorder;->Tag:Ljava/lang/String;

    return-void
.end method

.method private final recordAction(Lcom/amazon/kcp/util/fastmetrics/appevents/Action;Lcom/amazon/kcp/util/fastmetrics/appevents/Status;Ljava/lang/String;)V
    .locals 3

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/appevents/AppEventsFastMetricsRecorder;->getFastMetrics()Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->LOGIN_ACCOUNT_ACTIONS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v1

    .line 41
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->LOGIN_ACCOUNT_ACTIONS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v2

    .line 39
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    const-string v2, "it.getPayloadBuilder(\n  \u2026NT_ACTIONS.schemaVersion)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "action"

    .line 42
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string p1, "status"

    .line 43
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    if-eqz p3, :cond_0

    const-string p1, "message"

    .line 45
    invoke-interface {v1, p1, p3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 46
    :cond_0
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 49
    iget-object p2, p0, Lcom/amazon/kcp/util/fastmetrics/appevents/AppEventsFastMetricsRecorder;->Tag:Ljava/lang/String;

    const-string p3, "Exception while attempting to instrument app events metric using Fast Metrics"

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final getFastMetrics()Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;
    .locals 1

    .line 56
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    return-object v0
.end method

.method public recordFailedLogin(Ljava/lang/String;)V
    .locals 2

    .line 30
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/appevents/Action;->LOGIN:Lcom/amazon/kcp/util/fastmetrics/appevents/Action;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/appevents/Status;->FAILURE:Lcom/amazon/kcp/util/fastmetrics/appevents/Status;

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kcp/util/fastmetrics/appevents/AppEventsFastMetricsRecorder;->recordAction(Lcom/amazon/kcp/util/fastmetrics/appevents/Action;Lcom/amazon/kcp/util/fastmetrics/appevents/Status;Ljava/lang/String;)V

    return-void
.end method

.method public recordFailedLogout(Ljava/lang/String;)V
    .locals 2

    .line 31
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/appevents/Action;->LOGOUT:Lcom/amazon/kcp/util/fastmetrics/appevents/Action;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/appevents/Status;->FAILURE:Lcom/amazon/kcp/util/fastmetrics/appevents/Status;

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kcp/util/fastmetrics/appevents/AppEventsFastMetricsRecorder;->recordAction(Lcom/amazon/kcp/util/fastmetrics/appevents/Action;Lcom/amazon/kcp/util/fastmetrics/appevents/Status;Ljava/lang/String;)V

    return-void
.end method

.method public recordSuccessfulLogin()V
    .locals 3

    .line 28
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/appevents/Action;->LOGIN:Lcom/amazon/kcp/util/fastmetrics/appevents/Action;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/appevents/Status;->SUCCESS:Lcom/amazon/kcp/util/fastmetrics/appevents/Status;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/appevents/AppEventsFastMetricsRecorder;->recordAction(Lcom/amazon/kcp/util/fastmetrics/appevents/Action;Lcom/amazon/kcp/util/fastmetrics/appevents/Status;Ljava/lang/String;)V

    return-void
.end method

.method public recordSuccessfulLogout()V
    .locals 3

    .line 29
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/appevents/Action;->LOGOUT:Lcom/amazon/kcp/util/fastmetrics/appevents/Action;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/appevents/Status;->SUCCESS:Lcom/amazon/kcp/util/fastmetrics/appevents/Status;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/appevents/AppEventsFastMetricsRecorder;->recordAction(Lcom/amazon/kcp/util/fastmetrics/appevents/Action;Lcom/amazon/kcp/util/fastmetrics/appevents/Status;Ljava/lang/String;)V

    return-void
.end method
