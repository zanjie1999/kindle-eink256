.class public Lcom/audible/mobile/downloader/DeferredAuthenticatedHttpDownloader;
.super Lcom/audible/mobile/downloader/HTTPDownloader;
.source "DeferredAuthenticatedHttpDownloader.java"


# instance fields
.field private final identityManager:Lcom/audible/mobile/identity/IdentityManager;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/identity/IdentityManager;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/audible/mobile/downloader/HTTPDownloader;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/audible/mobile/downloader/DeferredAuthenticatedHttpDownloader;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    return-void
.end method


# virtual methods
.method protected openUrl(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/audible/mobile/downloader/DeferredAuthenticatedHttpDownloader;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    invoke-interface {v0, p1}, Lcom/audible/mobile/identity/IdentityManager;->newAuthenticatedHttpUrlConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method
