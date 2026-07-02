.class public interface abstract Lcom/audible/mobile/downloader/interfaces/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Pair;,
        Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getCommand()Lcom/audible/mobile/downloader/interfaces/DownloadCommand;
.end method

.method public abstract getHandler()Lcom/audible/mobile/downloader/interfaces/DownloadHandler;
.end method

.method public abstract getKey()Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getNetworkPolicy()Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;
.end method

.method public abstract getRetryPolicy()Lcom/audible/mobile/downloader/policy/RetryPolicy;
.end method

.method public abstract requiresAuthentication()Z
.end method
