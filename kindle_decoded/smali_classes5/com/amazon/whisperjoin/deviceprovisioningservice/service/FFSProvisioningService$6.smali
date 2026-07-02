.class Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$6;
.super Ljava/lang/Object;
.source "FFSProvisioningService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->startWorkflowController()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/ObservableSource<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$6;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/ObservableSource;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ObservableSource<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;",
            ">;"
        }
    .end annotation

    .line 240
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creating ZTS controller"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$6;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$500(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->getThrottleSettings()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->getOveractiveConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$6;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$600(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$6;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    invoke-static {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->getScanningMode()Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$6;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    .line 246
    invoke-static {v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$500(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->getZeroTouchProvisioningSettings()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZeroTouchProvisioningSettings;->isPhilipsBLEWorkflowEnabled()Z

    move-result v4

    .line 245
    invoke-virtual {v2, v3, v4, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;->initProvisioningComponent(Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;ZLcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$802(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    .line 248
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$6;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$600(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$6;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    iget-object v3, v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$1000(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFactory;

    move-result-object v2

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$6;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    invoke-static {v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$500(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;->zeroTouchController(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFactory;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ZeroTouchControllerComponent;

    move-result-object v1

    .line 249
    invoke-interface {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ZeroTouchControllerComponent;->getZeroTouchWorkflowController()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;

    move-result-object v1

    .line 248
    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$902(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;

    .line 251
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$6;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$900(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;->start()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 237
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$6;->call()Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
