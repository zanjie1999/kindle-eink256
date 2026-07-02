.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;
.super Ljava/lang/Object;
.source "DeviceActionCreator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceActionCreator"


# instance fields
.field private final deviceActions:Lio/reactivex/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lio/reactivex/subjects/ReplaySubject;->create()Lio/reactivex/subjects/ReplaySubject;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->deviceActions:Lio/reactivex/subjects/ReplaySubject;

    return-void
.end method

.method private onNext(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action;)V
    .locals 3

    .line 68
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending Action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->deviceActions:Lio/reactivex/subjects/ReplaySubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/ReplaySubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blessDiscoveredDevice(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)V
    .locals 1

    .line 40
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$BlessDiscoveredDevice;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$BlessDiscoveredDevice;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)V

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->onNext(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action;)V

    return-void
.end method

.method public connectToDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)V
    .locals 1

    .line 44
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$ConnectToDevice;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$ConnectToDevice;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)V

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->onNext(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action;)V

    return-void
.end method

.method public disconnect(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)V
    .locals 1

    .line 48
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$Disconnect;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$Disconnect;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)V

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->onNext(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action;)V

    return-void
.end method

.method public getDeviceActionStream()Lio/reactivex/subjects/ReplaySubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/ReplaySubject<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->deviceActions:Lio/reactivex/subjects/ReplaySubject;

    return-object v0
.end method

.method public getProvisioningDetails(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;)V
    .locals 1

    .line 52
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$GetProvisioningDetails;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$GetProvisioningDetails;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;)V

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->onNext(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action;)V

    return-void
.end method

.method public provisionDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)V
    .locals 1

    .line 56
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$ProvisionDevice;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$ProvisionDevice;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)V

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->onNext(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action;)V

    return-void
.end method

.method public startDiscovery()V
    .locals 1

    .line 32
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$StartDiscovery;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$StartDiscovery;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->onNext(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action;)V

    return-void
.end method

.method public stopDiscovery()V
    .locals 1

    .line 36
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$StopDiscovery;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$StopDiscovery;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->onNext(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action;)V

    return-void
.end method

.method public terminateSetup(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)V
    .locals 1

    .line 64
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$TerminateSetup;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$TerminateSetup;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)V

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->onNext(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action;)V

    return-void
.end method

.method public verifyProvisioning(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)V
    .locals 1

    .line 60
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$VerifyProvisioning;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$VerifyProvisioning;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)V

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->onNext(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action;)V

    return-void
.end method
