.class Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$2;
.super Ljava/lang/Object;
.source "AmazonPeripheralDevice.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;->getVisibleNetworks(I)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;

.field final synthetic val$maxResultCount:I


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;I)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$2;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;

    iput p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$2;->val$maxResultCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$2;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->GET_VISIBLE_NETWORKS:Lcom/amazon/whisperbridge/constants/Command;

    iget v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$2;->val$maxResultCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$2$1;

    invoke-direct {v3, p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$2$1;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->executeOperation(Lcom/amazon/whisperbridge/constants/Command;Ljava/lang/Object;Lcom/google/common/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$2;->call()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;

    move-result-object v0

    return-object v0
.end method
