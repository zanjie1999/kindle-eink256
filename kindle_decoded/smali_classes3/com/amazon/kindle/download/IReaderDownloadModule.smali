.class public interface abstract Lcom/amazon/kindle/download/IReaderDownloadModule;
.super Ljava/lang/Object;
.source "IReaderDownloadModule.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;
.end method

.method public abstract getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;
.end method

.method public abstract getReaderDownloadManager()Lcom/amazon/kindle/services/download/IReaderDownloadManager;
.end method
