.class public interface abstract Lcom/amazon/kindle/webservices/IManifestWebRequest;
.super Ljava/lang/Object;
.source "IManifestWebRequest.java"

# interfaces
.implements Lcom/amazon/kindle/webservices/IWebRequest;


# virtual methods
.method public abstract getBookId()Lcom/amazon/kindle/model/content/IBookID;
.end method

.method public abstract getContentSize()J
.end method

.method public abstract getCorrelationId()Ljava/lang/String;
.end method

.method public abstract getDownloadDoneTime()J
.end method

.method public abstract getDownloadTrigger()Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;
.end method

.method public abstract getRequestEnqueueTime()J
.end method

.method public abstract getRequestStartTime()J
.end method

.method public abstract getStreamingStartTime()J
.end method

.method public abstract setContentSize(J)V
.end method

.method public abstract setDownloadDoneTime(J)V
.end method

.method public abstract setHttpEndTime(J)V
.end method

.method public abstract setManifestParsingDoneTime(J)V
.end method

.method public abstract setRequestEnqueueTime(J)V
.end method

.method public abstract setStreamingStartTime(J)V
.end method
