.class final Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;
.super Lcom/amazon/kindle/krx/download/AbstractHttpResponseHandler;
.source "KrxCompanionMappingClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputStreamResponseHandler"
.end annotation


# instance fields
.field private httpResultCode:I

.field private final isCompanionMappingUpdateFull:Z

.field private final responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;


# direct methods
.method private constructor <init>(Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;Z)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;->this$0:Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/download/AbstractHttpResponseHandler;-><init>()V

    .line 463
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;->responseHeaders:Ljava/util/Map;

    .line 484
    iput-boolean p2, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;->isCompanionMappingUpdateFull:Z

    const/4 p1, 0x0

    .line 485
    iput p1, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;->httpResultCode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;ZLcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$1;)V
    .locals 0

    .line 457
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;-><init>(Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;Z)V

    return-void
.end method

.method private isResponseGZipped()Z
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;->responseHeaders:Ljava/util/Map;

    const-string v1, "Content-Encoding"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 561
    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "gzip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getResponseHeaderNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "Content-Encoding"

    .line 515
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 6

    .line 529
    invoke-static {}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->access$100()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HP-AppStart: Companion mapping download completed with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;->this$0:Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->access$302(Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;Z)Z

    .line 532
    sget-object v0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$1;->$SwitchMap$com$amazon$kindle$krx$download$IKRXResponseHandler$DownloadStatus:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    const-string v4, " download status was "

    if-eq v0, v3, :cond_0

    .line 544
    invoke-static {}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->access$100()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HP-AppStart: unexpected companion download status, response code was "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 545
    iget-object p2, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;->this$0:Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;

    iget-boolean v0, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;->isCompanionMappingUpdateFull:Z

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->ERROR:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-static {p2, v0, v1}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->access$400(Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;ZLcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;)V

    .line 546
    iget-object p2, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;->this$0:Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;

    iget-boolean v0, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;->isCompanionMappingUpdateFull:Z

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->ERROR:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-static {p2, v0, v1, p1}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->access$500(Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;ZLcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;I)V

    goto :goto_0

    .line 539
    :cond_0
    invoke-static {}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->access$100()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HP-AppStart: Error calling companion mappings service, response code was "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 540
    iget-object p2, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;->this$0:Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;

    iget-boolean v0, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;->isCompanionMappingUpdateFull:Z

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->ERROR:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-static {p2, v0, v1}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->access$400(Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;ZLcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;)V

    .line 541
    iget-object p2, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;->this$0:Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;

    iget-boolean v0, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;->isCompanionMappingUpdateFull:Z

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->ERROR:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-static {p2, v0, v1, p1}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->access$500(Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;ZLcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;I)V

    goto :goto_0

    .line 535
    :cond_1
    iget-object p2, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;->this$0:Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;

    iget-boolean v0, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;->isCompanionMappingUpdateFull:Z

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->SUCCESS:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-static {p2, v0, v1}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->access$400(Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;ZLcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;)V

    .line 536
    iget-object p2, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;->this$0:Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;

    iget-boolean v0, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;->isCompanionMappingUpdateFull:Z

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->SUCCESS:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-static {p2, v0, v1, p1}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->access$500(Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;ZLcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;I)V

    :goto_0
    return-void
.end method

.method public onInputStream(Ljava/io/InputStream;)V
    .locals 9

    .line 493
    iget v0, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;->httpResultCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 494
    invoke-static {}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->access$100()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "HP-AppStart: companion mapping received InputStream handle"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;->responseHeaders:Ljava/util/Map;

    const-string v1, "X-Android-Sent-Millis"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/audible/mobile/util/NumberUtils;->toLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 499
    iget-object v3, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;->this$0:Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;

    iget-boolean v4, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;->isCompanionMappingUpdateFull:Z

    invoke-direct {p0}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;->isResponseGZipped()Z

    move-result v6

    move-object v5, p1

    invoke-static/range {v3 .. v8}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->access$200(Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;ZLjava/io/InputStream;ZJ)V

    :cond_0
    return-void
.end method

.method public onResponseHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 521
    invoke-static {}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->access$100()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HP-AppStart: Companion mapping received response header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;->responseHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onStatusCode(I)V
    .locals 5

    .line 506
    iput p1, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;->httpResultCode:I

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    .line 508
    invoke-static {}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->access$100()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HP-AppStart: companion mapping failed status code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    :cond_0
    return-void
.end method
