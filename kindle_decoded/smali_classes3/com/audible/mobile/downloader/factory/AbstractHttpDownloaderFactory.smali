.class public abstract Lcom/audible/mobile/downloader/factory/AbstractHttpDownloaderFactory;
.super Ljava/lang/Object;
.source "AbstractHttpDownloaderFactory.java"

# interfaces
.implements Lcom/audible/mobile/downloader/factory/DownloaderFactory;


# instance fields
.field protected final identityManager:Lcom/audible/mobile/identity/IdentityManager;


# direct methods
.method protected constructor <init>(Lcom/audible/mobile/identity/IdentityManager;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/audible/mobile/downloader/factory/AbstractHttpDownloaderFactory;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    return-void
.end method


# virtual methods
.method protected final newNonSecureHttpDownloader()Lcom/audible/mobile/downloader/interfaces/Downloader;
    .locals 1

    .line 22
    new-instance v0, Lcom/audible/mobile/downloader/HTTPDownloader;

    invoke-direct {v0}, Lcom/audible/mobile/downloader/HTTPDownloader;-><init>()V

    return-object v0
.end method

.method protected final newSecureHttpDownloader()Lcom/audible/mobile/downloader/interfaces/Downloader;
    .locals 2

    .line 27
    new-instance v0, Lcom/audible/mobile/downloader/DeferredAuthenticatedHttpDownloader;

    iget-object v1, p0, Lcom/audible/mobile/downloader/factory/AbstractHttpDownloaderFactory;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    invoke-direct {v0, v1}, Lcom/audible/mobile/downloader/DeferredAuthenticatedHttpDownloader;-><init>(Lcom/audible/mobile/identity/IdentityManager;)V

    return-object v0
.end method
