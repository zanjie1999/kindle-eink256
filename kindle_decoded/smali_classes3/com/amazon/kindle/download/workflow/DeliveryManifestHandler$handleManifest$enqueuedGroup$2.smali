.class final Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DeliveryManifestHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->handleManifest$com_amazon_kindle_dm(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/services/download/IAssetGroup;",
        "Lcom/amazon/kindle/services/download/IDownloadRequestGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $manifestRequest:Lcom/amazon/kindle/webservices/IManifestWebRequest;

.field final synthetic $params:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

.field final synthetic this$0:Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lcom/amazon/kindle/webservices/IManifestWebRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$2;->this$0:Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;

    iput-object p2, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$2;->$params:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    iput-object p3, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$2;->$manifestRequest:Lcom/amazon/kindle/webservices/IManifestWebRequest;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/services/download/IAssetGroup;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;
    .locals 8

    const-string v0, "assetGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$2;->this$0:Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;

    invoke-static {v0}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->access$getDownloadGroupFactory$p(Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;)Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getAssets()Ljava/util/Collection;

    move-result-object v2

    const-string v0, "assetGroup.assets"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getRevision()Ljava/lang/String;

    move-result-object v4

    .line 229
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getGroupContext()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$2;->$params:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    iget-object p1, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$2;->$manifestRequest:Lcom/amazon/kindle/webservices/IManifestWebRequest;

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getHeaders()Ljava/util/Map;

    move-result-object v7

    .line 228
    invoke-interface/range {v1 .. v7}, Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;->createDownloadRequestGroup(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Ljava/util/Map;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Lcom/amazon/kindle/services/download/IAssetGroup;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$2;->invoke(Lcom/amazon/kindle/services/download/IAssetGroup;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object p1

    return-object p1
.end method
