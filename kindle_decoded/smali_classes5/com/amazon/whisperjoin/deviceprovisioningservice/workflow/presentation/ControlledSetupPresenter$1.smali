.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter$1;
.super Lio/reactivex/observers/DisposableObserver;
.source "ControlledSetupPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->attachView(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableObserver<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stream shouldn\'t even complete"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 155
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Something failed"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onNext(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;->getController()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->access$002(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;

    .line 150
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;->getViewModel()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 146
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter$1;->onNext(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;)V

    return-void
.end method
