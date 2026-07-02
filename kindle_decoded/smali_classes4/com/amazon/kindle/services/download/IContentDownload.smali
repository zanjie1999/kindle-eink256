.class public interface abstract Lcom/amazon/kindle/services/download/IContentDownload;
.super Ljava/lang/Object;
.source "IContentDownload.java"


# virtual methods
.method public abstract getBookId()Ljava/lang/String;
.end method

.method public abstract getDownloadStartTime()J
.end method

.method public abstract getDownloadTrigger()Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;
.end method

.method public abstract getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;
.end method

.method public abstract getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
.end method

.method public abstract getMainContentFile()Ljava/lang/String;
.end method

.method public abstract getMaxOpenableProgress()J
.end method

.method public abstract getMaxProgress()J
.end method

.method public abstract getOpenablePercentage()I
.end method

.method public abstract getOpenableProgress()J
.end method

.method public abstract getPercentage()I
.end method

.method public abstract getProgress()J
.end method

.method public abstract getState()Lcom/amazon/kindle/model/content/ContentState;
.end method

.method public abstract isLuna()Z
.end method
