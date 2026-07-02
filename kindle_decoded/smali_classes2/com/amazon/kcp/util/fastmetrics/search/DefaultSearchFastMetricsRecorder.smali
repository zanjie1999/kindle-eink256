.class public final Lcom/amazon/kcp/util/fastmetrics/search/DefaultSearchFastMetricsRecorder;
.super Ljava/lang/Object;
.source "SearchFastMetricsRecorder.kt"

# interfaces
.implements Lcom/amazon/kcp/util/fastmetrics/search/SearchFastMetricsRecorder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/util/fastmetrics/search/DefaultSearchFastMetricsRecorder$SearchFastMetricsRecorder;
    }
.end annotation


# instance fields
.field private final fastMetricsRecorder:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/util/fastmetrics/search/DefaultSearchFastMetricsRecorder;->fastMetricsRecorder:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    return-void
.end method

.method private final recordAction(Ljava/lang/String;)Lkotlin/Unit;
    .locals 4

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/search/DefaultSearchFastMetricsRecorder;->fastMetricsRecorder:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/search/DefaultSearchFastMetricsRecorder;->fastMetricsRecorder:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    .line 20
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->READER_SEARCH:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v2

    .line 21
    sget-object v3, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->READER_SEARCH:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v3}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v3

    .line 20
    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    const-string v2, "action"

    .line 22
    invoke-interface {v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    .line 23
    invoke-interface {p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    .line 19
    invoke-interface {v0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 25
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/search/DefaultSearchFastMetricsRecorder$SearchFastMetricsRecorder;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/search/DefaultSearchFastMetricsRecorder$SearchFastMetricsRecorder;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/search/DefaultSearchFastMetricsRecorder$SearchFastMetricsRecorder;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception while attempting to instrument metric using Fast Metrics"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public recordSearchExecuted()Lkotlin/Unit;
    .locals 1

    const-string v0, "Search"

    .line 16
    invoke-direct {p0, v0}, Lcom/amazon/kcp/util/fastmetrics/search/DefaultSearchFastMetricsRecorder;->recordAction(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public recordSearchResultClicked()Lkotlin/Unit;
    .locals 1

    const-string v0, "GoToResult"

    .line 14
    invoke-direct {p0, v0}, Lcom/amazon/kcp/util/fastmetrics/search/DefaultSearchFastMetricsRecorder;->recordAction(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
