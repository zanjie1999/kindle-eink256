.class Lcom/amazon/whisperbridge/ble/BleGattServiceClient$2;
.super Ljava/lang/Object;
.source "BleGattServiceClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->onCharacteristicChanged(Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperbridge/ble/BleGattServiceClient;

.field final synthetic val$bleCharacteristic:Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;


# direct methods
.method constructor <init>(Lcom/amazon/whisperbridge/ble/BleGattServiceClient;Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient$2;->this$0:Lcom/amazon/whisperbridge/ble/BleGattServiceClient;

    iput-object p2, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient$2;->val$bleCharacteristic:Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 417
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient$2;->val$bleCharacteristic:Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;

    invoke-virtual {v0}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->getStoredData()[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient$2;->this$0:Lcom/amazon/whisperbridge/ble/BleGattServiceClient;

    iget-object v1, v1, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBleClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

    invoke-virtual {v1}, Lcom/amazon/whisperbridge/ble/BleGattClient;->getMtu()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 418
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient$2;->this$0:Lcom/amazon/whisperbridge/ble/BleGattServiceClient;

    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient$2;->val$bleCharacteristic:Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->onCharacteristicUpdated(Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;)V

    goto :goto_1

    .line 421
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient$2;->this$0:Lcom/amazon/whisperbridge/ble/BleGattServiceClient;

    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient$2;->val$bleCharacteristic:Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;

    invoke-virtual {v1}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->readCharacteristic(Ljava/util/UUID;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperbridge/ble/command/BleReadCharacteristicCommand$Result;

    iget v0, v0, Lcom/amazon/whisperbridge/ble/command/BleReadCharacteristicCommand$Result;->status:I

    if-eqz v0, :cond_1

    .line 423
    invoke-static {}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to updated changed characteristic."

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient$2;->this$0:Lcom/amazon/whisperbridge/ble/BleGattServiceClient;

    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient$2;->val$bleCharacteristic:Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->onCharacteristicUpdated(Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 429
    :goto_0
    invoke-static {}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught while getting future: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
