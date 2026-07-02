.class final Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$4;
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
        "Lcom/amazon/kindle/services/download/IDownloadRequestGroup;",
        "Lcom/amazon/kindle/services/download/IDownloadRequestGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $params:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

.field final synthetic this$0:Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$4;->this$0:Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;

    iput-object p2, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$4;->$params:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;
    .locals 9

    const-string v0, "downloadGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$4;->this$0:Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;

    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$4;->$params:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getTrigger()Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    move-result-object v4

    const/4 v3, 0x1

    const-wide/16 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->verifyFileSystem$default(Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;Lcom/amazon/kindle/services/download/IDownloadRequestGroup;ZLcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;JILjava/lang/Object;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$4;->invoke(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object p1

    return-object p1
.end method
