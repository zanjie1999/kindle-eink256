.class public final Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequest;
.super Lcom/audible/mobile/downloader/AbstractDownloadRequest;
.source "CoverArtDownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequest$Key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/downloader/AbstractDownloadRequest<",
        "Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequest$Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequest$Key;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p5}, Lcom/audible/mobile/downloader/AbstractDownloadRequest;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;)V

    return-void
.end method
