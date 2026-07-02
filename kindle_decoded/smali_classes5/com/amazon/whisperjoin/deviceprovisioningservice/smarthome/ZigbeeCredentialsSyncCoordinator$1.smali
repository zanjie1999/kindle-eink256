.class Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator$1;
.super Ljava/lang/Object;
.source "ZigbeeCredentialsSyncCoordinator.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->fetchDataFromNetwork()Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsResponse;",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsResponse;)Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;

    invoke-static {v1, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsResponse;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;-><init>(Ljava/util/List;)V

    .line 83
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;)Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;->epochTimeMillis()J

    move-result-wide v1

    .line 84
    new-instance p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;J)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator$1;->apply(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsResponse;)Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeSyncResult;

    move-result-object p1

    return-object p1
.end method
