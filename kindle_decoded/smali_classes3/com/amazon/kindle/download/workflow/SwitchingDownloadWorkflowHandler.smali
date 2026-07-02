.class public final Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;
.super Ljava/lang/Object;
.source "SwitchingDownloadWorkflowHandler.kt"

# interfaces
.implements Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;


# instance fields
.field private assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

.field private final coroutineWorkflowProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadWorkflow$delegate:Lkotlin/Lazy;

.field private final legacyWorkflowProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final shouldUseCoroutines:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/download/assets/IAssetStateManager;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;",
            ">;)V"
        }
    .end annotation

    const-string v0, "assetStateManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineWorkflowProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legacyWorkflowProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler$1;->INSTANCE:Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler$1;

    .line 23
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;-><init>(Lcom/amazon/kindle/download/assets/IAssetStateManager;Lkotlin/jvm/functions/Function0;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/download/assets/IAssetStateManager;Lkotlin/jvm/functions/Function0;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;",
            ">;)V"
        }
    .end annotation

    const-string v0, "assetStateManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shouldUseCoroutines"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineWorkflowProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legacyWorkflowProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    iput-object p2, p0, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;->shouldUseCoroutines:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;->coroutineWorkflowProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;->legacyWorkflowProvider:Ljavax/inject/Provider;

    .line 30
    new-instance p1, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler$downloadWorkflow$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler$downloadWorkflow$2;-><init>(Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;->downloadWorkflow$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getCoroutineWorkflowProvider$p(Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;)Ljavax/inject/Provider;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;->coroutineWorkflowProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static final synthetic access$getLegacyWorkflowProvider$p(Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;)Ljavax/inject/Provider;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;->legacyWorkflowProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static final synthetic access$getShouldUseCoroutines$p(Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;->shouldUseCoroutines:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method private final getDownloadWorkflow()Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;->downloadWorkflow$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;

    return-object v0
.end method


# virtual methods
.method public cancelDownload(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;->getDownloadWorkflow()Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;->cancelDownload(Ljava/lang/String;)V

    return-void
.end method

.method public startDownload(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;->getDownloadWorkflow()Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;->startDownload(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)V

    return-void
.end method
