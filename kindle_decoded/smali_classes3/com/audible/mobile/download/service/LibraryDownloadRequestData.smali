.class public interface abstract Lcom/audible/mobile/download/service/LibraryDownloadRequestData;
.super Ljava/lang/Object;
.source "LibraryDownloadRequestData.java"

# interfaces
.implements Lcom/audible/mobile/downloader/factory/DownloadRequestData;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/downloader/factory/DownloadRequestData<",
        "Lcom/audible/mobile/download/ContentType;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getAdditionalPayload()Ljava/lang/String;
.end method

.method public abstract getAsin()Lcom/audible/mobile/domain/Asin;
.end method

.method public abstract getBaseDownloadService()Lcom/audible/mobile/download/service/BaseDownloadService;
.end method

.method public abstract getCustomerId()Lcom/audible/mobile/domain/CustomerId;
.end method

.method public abstract getDownloadRequest()Lcom/audible/mobile/download/Request;
.end method

.method public abstract getDownloadUri()Landroid/net/Uri;
.end method

.method public abstract getStartId()I
.end method
