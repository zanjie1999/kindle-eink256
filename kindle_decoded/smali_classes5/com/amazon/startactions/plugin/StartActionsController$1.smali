.class Lcom/amazon/startactions/plugin/StartActionsController$1;
.super Ljava/lang/Object;
.source "StartActionsController.java"

# interfaces
.implements Lcom/amazon/kindle/krx/download/IHttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/plugin/StartActionsController;->downloadSidecar(Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/plugin/StartActionsController;

.field final synthetic val$book:Lcom/amazon/kindle/krx/content/IBook;

.field final synthetic val$sidecarDownloadMetric:Lcom/amazon/startactions/metrics/Metric;

.field final synthetic val$sidecarName:Ljava/lang/String;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/amazon/startactions/plugin/StartActionsController;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;JLcom/amazon/startactions/metrics/Metric;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$1;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    iput-object p2, p0, Lcom/amazon/startactions/plugin/StartActionsController$1;->val$sidecarName:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/startactions/plugin/StartActionsController$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    iput-wide p4, p0, Lcom/amazon/startactions/plugin/StartActionsController$1;->val$startTime:J

    iput-object p6, p0, Lcom/amazon/startactions/plugin/StartActionsController$1;->val$sidecarDownloadMetric:Lcom/amazon/startactions/metrics/Metric;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    const-string/jumbo v0, "x-amzn-startactions-state"

    .line 444
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/guava/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 4

    .line 380
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadComplete. Sidecar:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/startactions/plugin/StartActionsController$1;->val$sidecarName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". StatusCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Status:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x4

    .line 385
    invoke-static {p1}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object p1

    .line 386
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Asin"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentType"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/startactions/plugin/StartActionsController$1;->val$startTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "SidecarDownloadTime"

    .line 388
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "SidecarDownloadSuccess"

    if-nez p2, :cond_1

    .line 393
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->access$600()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Sidecar download finished but status is not completed; will not process."

    invoke-static {p2, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object p2, p0, Lcom/amazon/startactions/plugin/StartActionsController$1;->val$sidecarDownloadMetric:Lcom/amazon/startactions/metrics/Metric;

    const-string v1, "SidecarDownloadFailed"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/amazon/startactions/metrics/Metric;->addError(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 396
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 399
    :cond_1
    iget-object p2, p0, Lcom/amazon/startactions/plugin/StartActionsController$1;->val$sidecarDownloadMetric:Lcom/amazon/startactions/metrics/Metric;

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/amazon/startactions/metrics/Metric;->stopTimer(Ljava/lang/String;)V

    .line 400
    iget-object p2, p0, Lcom/amazon/startactions/plugin/StartActionsController$1;->val$sidecarDownloadMetric:Lcom/amazon/startactions/metrics/Metric;

    invoke-virtual {p2}, Lcom/amazon/startactions/metrics/Metric;->close()V

    .line 402
    iget-object p2, p0, Lcom/amazon/startactions/plugin/StartActionsController$1;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    iget-object v1, p0, Lcom/amazon/startactions/plugin/StartActionsController$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p2, v1}, Lcom/amazon/startactions/plugin/StartActionsController;->onSidecarDownload(Lcom/amazon/kindle/krx/content/IBook;)V

    const/4 p2, 0x1

    .line 404
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    :goto_0
    sget-object p2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p2

    const-string v0, "StartActionsSidecar"

    invoke-interface {p2, v0, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    .line 410
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 411
    iget-object p2, p0, Lcom/amazon/startactions/plugin/StartActionsController$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 412
    iget-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$1;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    iget-object p2, p0, Lcom/amazon/startactions/plugin/StartActionsController$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {p1, p2}, Lcom/amazon/startactions/plugin/StartActionsController;->access$700(Lcom/amazon/startactions/plugin/StartActionsController;Lcom/amazon/kindle/krx/content/IBook;)V

    :cond_2
    return-void
.end method

.method public onResponseHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 418
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response header from sidecar download. Sidecar name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/startactions/plugin/StartActionsController$1;->val$sidecarName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Header name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Header value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "x-amzn-startactions-state"

    .line 424
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "]"

    if-nez v0, :cond_1

    .line 425
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received non-startactions header name, ignoring. [headerName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 430
    :cond_1
    invoke-static {p2}, Lcom/amazon/startactions/plugin/StartActionsState;->fromString(Ljava/lang/String;)Lcom/amazon/startactions/plugin/StartActionsState;

    move-result-object p1

    if-nez p1, :cond_2

    .line 432
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->access$600()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown start actions state received. [value="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 437
    :cond_2
    iget-object p2, p0, Lcom/amazon/startactions/plugin/StartActionsController$1;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {p2}, Lcom/amazon/startactions/plugin/StartActionsController;->access$800(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;->getControlForReader()Lcom/amazon/kindle/krx/settings/OnOffToggle;

    move-result-object p2

    sget-object v0, Lcom/amazon/startactions/plugin/StartActionsState;->ON:Lcom/amazon/startactions/plugin/StartActionsState;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->setVisibility(Z)V

    .line 439
    invoke-virtual {p1}, Lcom/amazon/startactions/plugin/StartActionsState;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "startactions.config"

    const-string/jumbo v0, "server_state"

    .line 438
    invoke-static {p2, v0, p1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setStringPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
