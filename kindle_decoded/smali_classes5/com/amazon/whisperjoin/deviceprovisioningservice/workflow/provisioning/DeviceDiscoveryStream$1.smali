.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream$1;
.super Ljava/lang/Object;
.source "DeviceDiscoveryStream.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;

.field final synthetic val$provisioningManagerProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;

    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream$1;->val$provisioningManagerProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;

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

    .line 100
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Removing discovery observer"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;->stopDiscovery()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream$1;->val$provisioningManagerProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;

    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream$EventObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;->removeDiscoveryEventObserver(Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent;)V

    return-void
.end method
