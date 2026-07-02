.class Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$1;
.super Ljava/lang/Object;
.source "AmazonPeripheralDevice.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;->startNetworkScan()Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$1;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$1;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->START_NETWORK_SCAN:Lcom/amazon/whisperbridge/constants/Command;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->executeOperation(Lcom/amazon/whisperbridge/constants/Command;Ljava/lang/Object;Lcom/google/common/reflect/TypeToken;)Ljava/lang/Object;

    return-object v2
.end method
