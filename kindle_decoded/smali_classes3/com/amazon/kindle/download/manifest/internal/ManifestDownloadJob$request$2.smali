.class final Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$request$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ManifestDownloadJob.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;-><init>(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/webservices/IWebRequestManager;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;Lcom/amazon/foundation/internal/IThreadPoolManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/webservices/IManifestWebRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$request$2;->this$0:Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/webservices/IManifestWebRequest;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$request$2;->this$0:Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;

    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->getManifestRequestFactory()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$request$2;->this$0:Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;

    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->getParams()Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/webservices/IManifestWebRequest;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$request$2;->invoke()Lcom/amazon/kindle/webservices/IManifestWebRequest;

    move-result-object v0

    return-object v0
.end method
