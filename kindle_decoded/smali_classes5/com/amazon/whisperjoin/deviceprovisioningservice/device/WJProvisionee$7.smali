.class Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$7;
.super Ljava/lang/Object;
.source "WJProvisionee.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->getVisibleNetworks()Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/SingleSource<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$7;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/SingleSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/SingleSource<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$7;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;->getVisibleNetworks(I)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Single;->fromFuture(Ljava/util/concurrent/Future;)Lio/reactivex/Single;

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

    .line 170
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$7;->call()Lio/reactivex/SingleSource;

    move-result-object v0

    return-object v0
.end method
