.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;
.super Ljava/lang/Object;
.source "WorkflowPresentationUpdate.java"


# instance fields
.field private final mController:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;

.field private final mViewModel:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;->mViewModel:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;

    .line 17
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;->mController:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;

    return-void
.end method


# virtual methods
.method public getController()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;->mController:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;

    return-object v0
.end method

.method public getViewModel()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;->mViewModel:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;

    return-object v0
.end method
