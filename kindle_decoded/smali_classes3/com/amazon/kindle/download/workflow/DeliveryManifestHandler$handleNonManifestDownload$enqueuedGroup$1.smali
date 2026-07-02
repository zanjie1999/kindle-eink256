.class final synthetic Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleNonManifestDownload$enqueuedGroup$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "DeliveryManifestHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->handleNonManifestDownload$com_amazon_kindle_dm(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/services/download/IDownloadRequestGroup;",
        "Lcom/amazon/kindle/services/download/IDownloadRequestGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;)V
    .locals 7

    const-class v3, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;

    const/4 v1, 0x1

    const-string v4, "persistDownloadRequestGroup"

    const-string v5, "persistDownloadRequestGroup$com_amazon_kindle_dm(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;
    .locals 1

    const-string v0, "p1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;

    .line 210
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->persistDownloadRequestGroup$com_amazon_kindle_dm(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleNonManifestDownload$enqueuedGroup$1;->invoke(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object p1

    return-object p1
.end method
