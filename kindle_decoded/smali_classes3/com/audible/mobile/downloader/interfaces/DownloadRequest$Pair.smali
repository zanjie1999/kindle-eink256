.class public interface abstract Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Pair;
.super Ljava/lang/Object;
.source "DownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/downloader/interfaces/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Pair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/audible/mobile/downloader/interfaces/DownloadRequest<",
        "TT;>;T::",
        "Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getKey()Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getRequest()Lcom/audible/mobile/downloader/interfaces/DownloadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method
