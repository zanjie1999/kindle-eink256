.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;
.source "ControlledSetupPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ControlledSetupPresenter"


# instance fields
.field private mContext:Landroid/content/Context;

.field mFFSArcusSyncCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

.field private mIsAttached:Z

.field mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

.field private mProvisioningDisposable:Lio/reactivex/disposables/Disposable;

.field private mStreamSubscription:Lio/reactivex/disposables/Disposable;

.field private mUGSClientWorkflowController:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;

.field private final mWorkflow:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->initializeBaseComponent(Landroid/content/Context;)V

    .line 72
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->getBaseComponent()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    move-result-object p1

    .line 74
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->MANUAL:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;)V

    .line 75
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;->HIGH_POWER_LOW_LATENCY:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    new-instance p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;

    invoke-direct {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;-><init>()V

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->getOveractiveConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {v0, p1, p3, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;->initProvisioningComponent(Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;ZLcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mProvisioningDisposable:Lio/reactivex/disposables/Disposable;

    .line 77
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;->getProvisioningDependencyInjector()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningDependencyInjector;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningDependencyInjector;->inject(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;)V

    .line 80
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/PresenterValidator;->validatePreconditions(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V

    .line 82
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mFFSArcusSyncCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->initializeWithProvisionerClientData(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V

    .line 84
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mFFSArcusSyncCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->getFFSArcusSettings()Lio/reactivex/Single;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;->createWorkflow(Lio/reactivex/Single;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/WorkflowComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/WorkflowComponent;->getControlledSetupWorkflow()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mWorkflow:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;

    .line 86
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->stopFFSWorkflowBeforeControlledSetup()V

    .line 88
    iput-boolean p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mIsAttached:Z

    .line 89
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mWorkflow:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->start()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mContext:Landroid/content/Context;

    .line 104
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->stopFFSWorkflowBeforeControlledSetup()V

    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mIsAttached:Z

    .line 107
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mWorkflow:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;

    .line 108
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->start()V

    return-void
.end method

.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;-><init>()V

    .line 93
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->stopFFSWorkflowBeforeControlledSetup()V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mIsAttached:Z

    .line 96
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mWorkflow:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;

    .line 97
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->start()V

    return-void
.end method

.method static synthetic access$002(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mUGSClientWorkflowController:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;

    return-object p1
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->consumeViewModel(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;)V

    return-void
.end method

.method private consumeViewModel(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;)V
    .locals 3

    .line 191
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/IdleViewModel;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;->mView:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/IdleViewModel;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;->showIdleState(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/IdleViewModel;)V

    goto :goto_0

    .line 193
    :cond_0
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/InProgressViewModel;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;->mView:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/InProgressViewModel;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;->showInProgress(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/InProgressViewModel;)V

    goto :goto_0

    .line 195
    :cond_1
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/DiscoveredDevicesViewModel;

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;->mView:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/DiscoveredDevicesViewModel;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;->showDiscoveredDevices(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/DiscoveredDevicesViewModel;)V

    goto :goto_0

    .line 197
    :cond_2
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;->mView:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;->showProvisioningDetails(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;)V

    goto :goto_0

    .line 199
    :cond_3
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;

    if-eqz v0, :cond_4

    .line 200
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;->mView:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;->showWifiConnectionError(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;)V

    goto :goto_0

    .line 201
    :cond_4
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;

    if-eqz v0, :cond_5

    .line 202
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;->mView:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;->showSetupFailure(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;)V

    goto :goto_0

    .line 203
    :cond_5
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupCompleteViewModel;

    if-eqz v0, :cond_6

    .line 204
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;->mView:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupCompleteViewModel;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;->showSetupComplete(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupCompleteViewModel;)V

    :goto_0
    return-void

    .line 206
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected View Model "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private startFFSWorkflowAfterControlledSetup()V
    .locals 3

    .line 233
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startFFSWorkflowAfterControlledSetup"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 236
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.amazon.whisperjoin.deviceprovisioningservice.FFSServiceAction.StartFFS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.amazon.whisperjoin.deviceprovisioningservice.FFSServiceAction.permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private stopFFSWorkflowBeforeControlledSetup()V
    .locals 3

    .line 222
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopFFSWorkflowBeforeControlledSetup"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 225
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.amazon.whisperjoin.deviceprovisioningservice.FFSServiceAction.StopFFS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.amazon.whisperjoin.deviceprovisioningservice.FFSServiceAction.permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private verifyAttached()V
    .locals 2

    .line 211
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mIsAttached:Z

    if-eqz v0, :cond_0

    return-void

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t perform action if detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public attachView(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;)V
    .locals 1

    .line 143
    invoke-super {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;->attachView(Ljava/lang/Object;)V

    .line 144
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->TAG:Ljava/lang/String;

    const-string v0, "Attaching View"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mWorkflow:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->getPresentationStream()Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter$1;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;)V

    .line 146
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    check-cast v0, Lio/reactivex/disposables/Disposable;

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mStreamSubscription:Lio/reactivex/disposables/Disposable;

    const/4 p1, 0x1

    .line 163
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mIsAttached:Z

    return-void
.end method

.method public bridge synthetic attachView(Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->attachView(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;)V

    return-void
.end method

.method public chooseDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->verifyAttached()V

    .line 120
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mUGSClientWorkflowController:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;->chooseDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 177
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->TAG:Ljava/lang/String;

    const-string v1, "Destroy"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mUGSClientWorkflowController:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;->terminateSetup()V

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mUGSClientWorkflowController:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mProvisioningDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 183
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 186
    :cond_1
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->startFFSWorkflowAfterControlledSetup()V

    .line 187
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mWorkflow:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->stop()V

    return-void
.end method

.method public detachView()V
    .locals 1

    .line 168
    invoke-super {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;->detachView()V

    .line 169
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mStreamSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mStreamSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mIsAttached:Z

    return-void
.end method

.method public discoverDevices()V
    .locals 1

    .line 113
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->verifyAttached()V

    .line 114
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mUGSClientWorkflowController:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;->discoverDevices()V

    return-void
.end method

.method public provisionDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ClientProvisioningDataModel;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->verifyAttached()V

    .line 126
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mUGSClientWorkflowController:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;->sendProvisioningData(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ClientProvisioningDataModel;)V

    return-void
.end method

.method public refreshAvailableNetworks()V
    .locals 1

    .line 131
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->verifyAttached()V

    .line 132
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mUGSClientWorkflowController:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;->refreshAvailableNetworks()V

    return-void
.end method

.method public terminateSetup()V
    .locals 1

    .line 137
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->verifyAttached()V

    .line 138
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->mUGSClientWorkflowController:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;->terminateSetup()V

    return-void
.end method
