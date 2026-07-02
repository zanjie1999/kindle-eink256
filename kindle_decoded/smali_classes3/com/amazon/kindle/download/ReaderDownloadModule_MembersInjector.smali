.class public final Lcom/amazon/kindle/download/ReaderDownloadModule_MembersInjector;
.super Ljava/lang/Object;
.source "ReaderDownloadModule_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/amazon/kindle/download/ReaderDownloadModule;",
        ">;"
    }
.end annotation


# instance fields
.field private final assetStateManagerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadManagerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IReaderDownloadManager;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadServiceLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IDownloadService;",
            ">;"
        }
    .end annotation
.end field

.field private final webRequestExecutorLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/webservices/IWebRequestExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectAssetStateManagerLazy(Lcom/amazon/kindle/download/ReaderDownloadModule;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/ReaderDownloadModule;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            ">;)V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/amazon/kindle/download/ReaderDownloadModule;->assetStateManagerLazy:Ldagger/Lazy;

    return-void
.end method

.method public static injectDownloadManagerLazy(Lcom/amazon/kindle/download/ReaderDownloadModule;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/ReaderDownloadModule;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/services/download/IReaderDownloadManager;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/amazon/kindle/download/ReaderDownloadModule;->downloadManagerLazy:Ldagger/Lazy;

    return-void
.end method

.method public static injectDownloadServiceLazy(Lcom/amazon/kindle/download/ReaderDownloadModule;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/ReaderDownloadModule;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/services/download/IDownloadService;",
            ">;)V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/amazon/kindle/download/ReaderDownloadModule;->downloadServiceLazy:Ldagger/Lazy;

    return-void
.end method

.method public static injectWebRequestExecutorLazy(Lcom/amazon/kindle/download/ReaderDownloadModule;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/ReaderDownloadModule;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/webservices/IWebRequestExecutor;",
            ">;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/amazon/kindle/download/ReaderDownloadModule;->webRequestExecutorLazy:Ldagger/Lazy;

    return-void
.end method
