.class public final Lcom/amazon/kindle/download/assets/AnnotationsSidecarHookProvider;
.super Ljava/lang/Object;
.source "AssetDownloadRequestHooks.kt"


# instance fields
.field private final krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)V
    .locals 1

    const-string v0, "krlDownloadFacade"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/assets/AnnotationsSidecarHookProvider;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    return-void
.end method


# virtual methods
.method public final hook(Lcom/amazon/kindle/services/download/IDownloadRequest;)Z
    .locals 1

    const-string v0, "downloadRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->hasAnnotationSidecar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AnnotationsSidecarHookProvider;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->isAnnotationsSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AnnotationsSidecarHookProvider;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->requestAnnotationsDownload(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
