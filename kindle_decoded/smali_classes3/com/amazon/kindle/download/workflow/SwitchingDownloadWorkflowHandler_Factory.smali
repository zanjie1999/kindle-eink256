.class public final Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler_Factory;
.super Ljava/lang/Object;
.source "SwitchingDownloadWorkflowHandler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final assetStateManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            ">;"
        }
    .end annotation
.end field

.field private final coroutineWorkflowProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final legacyWorkflowProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler_Factory;->assetStateManagerProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler_Factory;->coroutineWorkflowProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p3, p0, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler_Factory;->legacyWorkflowProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;",
            ">;)",
            "Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler_Factory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;",
            ">;)",
            "Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;

    .line 36
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/download/assets/IAssetStateManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;-><init>(Lcom/amazon/kindle/download/assets/IAssetStateManager;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler_Factory;->assetStateManagerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler_Factory;->coroutineWorkflowProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler_Factory;->legacyWorkflowProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler_Factory;->get()Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;

    move-result-object v0

    return-object v0
.end method
