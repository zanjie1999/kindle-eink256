.class final Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$1;
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
        "Lcom/amazon/kindle/download/manifest/MDSManifest;",
        "Lcom/amazon/kindle/services/download/IAssetGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $job:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;

.field final synthetic this$0:Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$1;->this$0:Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;

    iput-object p2, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$1;->$job:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/download/manifest/MDSManifest;)Lcom/amazon/kindle/services/download/IAssetGroup;
    .locals 2

    const-string v0, "manifest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->access$getTAG$cp()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delivery manifest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$1;->this$0:Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;

    iget-object v1, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$1;->$job:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->createAssetGroup$com_amazon_kindle_dm(Lcom/amazon/kindle/download/manifest/MDSManifest;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;)Lcom/amazon/kindle/services/download/IAssetGroup;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Lcom/amazon/kindle/download/manifest/MDSManifest;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$1;->invoke(Lcom/amazon/kindle/download/manifest/MDSManifest;)Lcom/amazon/kindle/services/download/IAssetGroup;

    move-result-object p1

    return-object p1
.end method
