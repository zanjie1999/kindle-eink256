.class public Lcom/amazon/kindle/download/ReaderDownloadModule;
.super Ljava/lang/Object;
.source "ReaderDownloadModule.java"

# interfaces
.implements Lcom/amazon/kindle/download/IReaderDownloadModule;


# instance fields
.field public assetStateManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            ">;"
        }
    .end annotation
.end field

.field public downloadManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/services/download/IReaderDownloadManager;",
            ">;"
        }
    .end annotation
.end field

.field public downloadServiceLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/services/download/IDownloadService;",
            ">;"
        }
    .end annotation
.end field

.field public webRequestExecutorLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/webservices/IWebRequestExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/download/ReaderDownloadModule;->assetStateManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/download/assets/IAssetStateManager;

    return-object v0
.end method

.method public getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/download/ReaderDownloadModule;->downloadServiceLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/download/IDownloadService;

    return-object v0
.end method

.method public getReaderDownloadManager()Lcom/amazon/kindle/services/download/IReaderDownloadManager;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/download/ReaderDownloadModule;->downloadManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/download/IReaderDownloadManager;

    return-object v0
.end method
