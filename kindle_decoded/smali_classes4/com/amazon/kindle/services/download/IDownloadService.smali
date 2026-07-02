.class public interface abstract Lcom/amazon/kindle/services/download/IDownloadService;
.super Ljava/lang/Object;
.source "IDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/services/download/IDownloadService$KRXDownloadStateUpdateEvent;,
        Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;,
        Lcom/amazon/kindle/services/download/IDownloadService$UntrackedDownloadStateChangedEvent;,
        Lcom/amazon/kindle/services/download/IDownloadService$DownloadStartedStateEvent;,
        Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;
    }
.end annotation


# virtual methods
.method public abstract cancel(Lcom/amazon/kindle/content/ContentMetadata;Z)Z
.end method

.method public abstract cancel(Ljava/lang/String;Z)Z
.end method

.method public abstract download(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z
.end method

.method public abstract download(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z
.end method

.method public abstract download(Ljava/util/Collection;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;",
            "Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract getContentDownload(Ljava/lang/String;)Lcom/amazon/kindle/services/download/IContentDownload;
.end method

.method public abstract getDownloadGroup(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;
.end method

.method public abstract handleDownloadError(Ljava/lang/String;)V
.end method

.method public abstract registerDownloadTracker(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)V
.end method

.method public varargs abstract reprioritizeDownload(Ljava/lang/String;[Ljava/lang/String;)Z
.end method

.method public abstract restartFailedDownloads(Ljava/lang/String;)V
.end method
