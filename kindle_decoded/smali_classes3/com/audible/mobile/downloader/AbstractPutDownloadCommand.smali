.class public abstract Lcom/audible/mobile/downloader/AbstractPutDownloadCommand;
.super Lcom/audible/mobile/downloader/RetryablePayloadDownloadCommand;
.source "AbstractPutDownloadCommand.java"

# interfaces
.implements Lcom/audible/mobile/downloader/interfaces/DownloadCommand;


# direct methods
.method protected constructor <init>(Ljava/net/URL;[B)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/downloader/RetryablePayloadDownloadCommand;-><init>(Ljava/net/URL;[B)V

    return-void
.end method


# virtual methods
.method public final getMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "PUT"

    return-object v0
.end method
