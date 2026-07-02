.class public final Lcom/amazon/kindle/services/download/DownloadContentService_Factory;
.super Ljava/lang/Object;
.source "DownloadContentService_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/services/download/DownloadContentService;",
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

.field private final downloadManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IReaderDownloadManager;",
            ">;"
        }
    .end annotation
.end field

.field private final krlForDownloadFacadeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            ">;"
        }
    .end annotation
.end field

.field private final workflowHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IReaderDownloadManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/kindle/services/download/DownloadContentService_Factory;->krlForDownloadFacadeProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/amazon/kindle/services/download/DownloadContentService_Factory;->assetStateManagerProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p3, p0, Lcom/amazon/kindle/services/download/DownloadContentService_Factory;->downloadManagerProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p4, p0, Lcom/amazon/kindle/services/download/DownloadContentService_Factory;->workflowHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/services/download/DownloadContentService_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IReaderDownloadManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;",
            ">;)",
            "Lcom/amazon/kindle/services/download/DownloadContentService_Factory;"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/amazon/kindle/services/download/DownloadContentService_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/services/download/DownloadContentService_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newDownloadContentService(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/download/assets/IAssetStateManager;Lcom/amazon/kindle/services/download/IReaderDownloadManager;Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;)Lcom/amazon/kindle/services/download/DownloadContentService;
    .locals 1

    .line 67
    new-instance v0, Lcom/amazon/kindle/services/download/DownloadContentService;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/services/download/DownloadContentService;-><init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/download/assets/IAssetStateManager;Lcom/amazon/kindle/services/download/IReaderDownloadManager;Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/services/download/DownloadContentService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IReaderDownloadManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;",
            ">;)",
            "Lcom/amazon/kindle/services/download/DownloadContentService;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/amazon/kindle/services/download/DownloadContentService;

    .line 44
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    .line 45
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/download/assets/IAssetStateManager;

    .line 46
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/services/download/IReaderDownloadManager;

    .line 47
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/services/download/DownloadContentService;-><init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/download/assets/IAssetStateManager;Lcom/amazon/kindle/services/download/IReaderDownloadManager;Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/services/download/DownloadContentService;
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/services/download/DownloadContentService_Factory;->krlForDownloadFacadeProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/amazon/kindle/services/download/DownloadContentService_Factory;->assetStateManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/kindle/services/download/DownloadContentService_Factory;->downloadManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/amazon/kindle/services/download/DownloadContentService_Factory;->workflowHandlerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kindle/services/download/DownloadContentService_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/services/download/DownloadContentService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/amazon/kindle/services/download/DownloadContentService_Factory;->get()Lcom/amazon/kindle/services/download/DownloadContentService;

    move-result-object v0

    return-object v0
.end method
