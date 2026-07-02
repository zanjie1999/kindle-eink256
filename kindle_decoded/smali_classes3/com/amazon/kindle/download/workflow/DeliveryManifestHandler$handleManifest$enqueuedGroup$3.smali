.class final Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$3;
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
.field final synthetic $manifestRequest:Lcom/amazon/kindle/webservices/IManifestWebRequest;

.field final synthetic this$0:Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;Lcom/amazon/kindle/webservices/IManifestWebRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$3;->this$0:Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;

    iput-object p2, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$3;->$manifestRequest:Lcom/amazon/kindle/webservices/IManifestWebRequest;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;
    .locals 3

    const-string v0, "downloadGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$3;->$manifestRequest:Lcom/amazon/kindle/webservices/IManifestWebRequest;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/webservices/IManifestWebRequest;->setManifestParsingDoneTime(J)V

    .line 232
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$3;->this$0:Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->verifyDownloadRequestGroup$com_amazon_kindle_dm(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$3;->invoke(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object p1

    return-object p1
.end method
