.class public final Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest;
.super Lcom/audible/mobile/downloader/AbstractDownloadRequest;
.source "SampleAudiobookDownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest$Key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/downloader/AbstractDownloadRequest<",
        "Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest$Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest$Key;)V
    .locals 7

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 22
    invoke-direct/range {v0 .. v6}, Lcom/audible/mobile/downloader/AbstractDownloadRequest;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;Lcom/audible/mobile/downloader/policy/RetryPolicy;ZLcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;)V

    return-void
.end method
