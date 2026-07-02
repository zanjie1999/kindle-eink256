.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$SendProvisioningData;
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
    name = "SendProvisioningData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ClientProvisioningDataModel;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDeviceSession:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

.field private final mWJProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$SendProvisioningData;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$SendProvisioningData;->mWJProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    .line 116
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$SendProvisioningData;->mDeviceSession:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 110
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ClientProvisioningDataModel;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$SendProvisioningData;->apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ClientProvisioningDataModel;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ClientProvisioningDataModel;)Ljava/lang/Void;
    .locals 2

    if-eqz p1, :cond_0

    .line 126
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;-><init>()V

    .line 127
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ClientProvisioningDataModel;->getWifiConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;->setChosenWifiConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$SendProvisioningData;->mDeviceSession:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    .line 128
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->getProvisioningDetails()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;->getDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;->setDeviceDetails(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;

    .line 129
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ClientProvisioningDataModel;->saveNetworkToLocker()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;->setSaveWifiNetworkToLocker(Z)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;

    .line 130
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ClientProvisioningDataModel;->getCustomConfiguration()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;->setCustomClientConfiguration(Ljava/util/Map;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;

    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$SendProvisioningData;->mDeviceSession:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    .line 131
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->getProvisioningDetails()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;->getAvailableWifiNetworks()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;->setAvailableNetworks(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;

    new-instance p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest;

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest$Scheme;->CODE_BASED_LINKING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest$Scheme;

    invoke-direct {p1, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest$Scheme;)V

    .line 132
    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;->setRegistrationRequest(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;

    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$SendProvisioningData;->mDeviceSession:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    .line 133
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->getProvisionableReportUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;->setProvisionableReportUrl(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;

    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$SendProvisioningData;->mDeviceSession:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    .line 134
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->getDiscoverySessionToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;->setSessionToken(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;

    .line 135
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;->create()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;

    move-result-object p1

    .line 137
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$SendProvisioningData;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$SendProvisioningData;->mWJProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->provisionDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)V

    const/4 p1, 0x0

    return-object p1

    .line 123
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wifi config can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
