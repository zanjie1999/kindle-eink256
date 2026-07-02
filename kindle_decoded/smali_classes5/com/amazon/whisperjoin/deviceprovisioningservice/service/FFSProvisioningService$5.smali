.class Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$5;
.super Ljava/lang/Object;
.source "FFSProvisioningService.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


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
        "Lio/reactivex/functions/Consumer<",
        "Lio/reactivex/disposables/Disposable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$5;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 257
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$5;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    iget-object p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mDevicePowerMonitor:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->onWorkflowActivationStateChange(Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 254
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$5;->accept(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
