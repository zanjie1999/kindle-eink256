.class Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$7;
.super Ljava/lang/Object;
.source "FFSProvisioningService.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->cleanupWorkflow()Lio/reactivex/functions/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$7;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 284
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cleanup"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$7;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    iget-object v0, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mDevicePowerMonitor:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->onWorkflowActivationStateChange(Z)V

    .line 286
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$7;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$800(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$7;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$800(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method
