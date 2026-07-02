.class Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$9;
.super Ljava/lang/Object;
.source "AmazonPeripheralDevice.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;->addConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;)Ljava/util/concurrent/Future;
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

.field final synthetic val$configuration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$9;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;

    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$9;->val$configuration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

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

    .line 175
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$9;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$9;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->SET_CONFIGURATION:Lcom/amazon/whisperbridge/constants/Command;

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice$9;->val$configuration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->executeOperation(Lcom/amazon/whisperbridge/constants/Command;Ljava/lang/Object;Lcom/google/common/reflect/TypeToken;)Ljava/lang/Object;

    return-object v3
.end method
