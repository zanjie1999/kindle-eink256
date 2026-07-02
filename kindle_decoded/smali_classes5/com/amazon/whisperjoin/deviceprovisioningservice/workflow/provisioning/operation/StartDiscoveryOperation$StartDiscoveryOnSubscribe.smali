.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$StartDiscoveryOnSubscribe;
.super Ljava/lang/Object;
.source "StartDiscoveryOperation.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartDiscoveryOnSubscribe"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDiscoverySettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;

.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$StartDiscoveryOnSubscribe;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$StartDiscoveryOnSubscribe;->mDiscoverySettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$StartDiscoveryOnSubscribe;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$DiscoveryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DiscoveryEventEmitter;->setEmitter(Lio/reactivex/ObservableEmitter;)V

    .line 132
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->access$200()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$StartDiscoveryOnSubscribe;->mDiscoverySettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;

    .line 133
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;->getDeviceFilter()Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "starting discovery using the filter: %s"

    .line 132
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$StartDiscoveryOnSubscribe;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$StartDiscoveryOnSubscribe;->mDiscoverySettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;->startDiscovery(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;)V

    return-void
.end method
