.class Lcom/amazon/kindle/annotation/AnnotationsManager$10;
.super Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;
.source "AnnotationsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/annotation/AnnotationsManager;->downloadSidecarAsync(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/foundation/internal/IObjectCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

.field final synthetic val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field final synthetic val$callback:Lcom/amazon/foundation/internal/IObjectCallback;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/annotation/AnnotationsManager;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/foundation/internal/IObjectCallback;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$10;->this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

    iput-object p4, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$10;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    iput-object p5, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$10;->val$callback:Lcom/amazon/foundation/internal/IObjectCallback;

    invoke-direct {p0, p2, p3}, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    return-void
.end method


# virtual methods
.method public onRequestComplete()Z
    .locals 8

    .line 576
    invoke-super {p0}, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->onRequestComplete()Z

    move-result v0

    .line 577
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v1

    if-nez v1, :cond_1

    .line 578
    iget-object v1, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$10;->this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

    invoke-static {v1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->access$700(Lcom/amazon/kindle/annotation/AnnotationsManager;)Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->filenameAndPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 580
    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getSettingsFileName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 579
    invoke-static {v1, v2, v3, v4}, Lcom/amazon/kindle/io/FileSystemHelper;->rename(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 581
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "DownloadSidecarCommand"

    const-string v4, "SidecarAddToLibraryFailed"

    invoke-virtual {v1, v3, v4, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 584
    iget-object v1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$10;->this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

    invoke-static {v1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->access$700(Lcom/amazon/kindle/annotation/AnnotationsManager;)Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->filenameAndPath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 585
    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_WRITE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {p0, v1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    goto :goto_0

    .line 588
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/annotation/AnnotationsManager;->access$600()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find ASIN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->asin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in the library, can\'t add sidecar."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 590
    iget-object v1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$10;->this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

    invoke-static {v1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->access$700(Lcom/amazon/kindle/annotation/AnnotationsManager;)Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->filenameAndPath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 591
    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {p0, v1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    .line 592
    iget-object v1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$10;->this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

    invoke-static {v1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->access$800(Lcom/amazon/kindle/annotation/AnnotationsManager;)Lcom/amazon/kindle/metrics/AppInternalErrorGranularDetailMetricsEmitter;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_BOOKITEM_NULL:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    .line 593
    invoke-static {}, Lcom/amazon/kindle/annotation/AnnotationsManager;->access$600()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$10;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    .line 592
    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kindle/metrics/AppInternalErrorGranularDetailMetricsEmitter;->reportGranularAppInternalError(Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;)V

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 598
    iget-object v1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$10;->this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

    invoke-static {v1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->access$400(Lcom/amazon/kindle/annotation/AnnotationsManager;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;

    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;->ANNOTATIONS_SIDECAR_REQUEST_WILL_NOT_COMPLETE:Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;

    iget-object v4, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$10;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 600
    invoke-interface {v4}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/amazon/kindle/model/content/LastPageRead;

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-direct {v5, v7, v7, v6}, Lcom/amazon/kindle/model/content/LastPageRead;-><init>(II[B)V

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;-><init>(Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;Ljava/lang/String;Lcom/amazon/kindle/model/content/LastPageRead;I)V

    .line 598
    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 604
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$10;->val$callback:Lcom/amazon/foundation/internal/IObjectCallback;

    if-eqz v1, :cond_3

    .line 605
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/foundation/internal/IObjectCallback;->execute(Ljava/lang/Object;)V

    :cond_3
    return v0
.end method
