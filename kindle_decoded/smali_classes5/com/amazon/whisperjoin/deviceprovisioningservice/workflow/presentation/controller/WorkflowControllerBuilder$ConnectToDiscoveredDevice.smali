.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$ConnectToDiscoveredDevice;
.super Ljava/lang/Object;
.source "WorkflowControllerBuilder.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectToDiscoveredDevice"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDiscoveredDeviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrustState:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;Ljava/util/Map;Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;",
            ">;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;",
            ")V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$ConnectToDiscoveredDevice;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$ConnectToDiscoveredDevice;->mDiscoveredDeviceMap:Ljava/util/Map;

    .line 93
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$ConnectToDiscoveredDevice;->mTrustState:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 87
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$ConnectToDiscoveredDevice;->apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)Ljava/lang/Void;
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$ConnectToDiscoveredDevice;->mDiscoveredDeviceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    if-eqz v0, :cond_0

    .line 104
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$ConnectToDiscoveredDevice;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    move-result-object p1

    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;->builder()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$ConnectToDiscoveredDevice;->mTrustState:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    .line 105
    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$Builder;->withTrustState(Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$Builder;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$Builder;->build()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    move-result-object v1

    .line 104
    invoke-virtual {p1, v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->connectToDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)V

    const/4 p1, 0x0

    return-object p1

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
