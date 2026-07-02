.class Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection$1;
.super Ljava/lang/Object;
.source "CreateConnection.java"

# interfaces
.implements Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEClients;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection;->call()Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$gattClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

.field final synthetic val$serviceClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection;Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;Lcom/amazon/whisperbridge/ble/BleGattClient;)V
    .locals 0

    .line 63
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection$1;->val$serviceClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    iput-object p3, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection$1;->val$gattClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGattClient()Lcom/amazon/whisperbridge/ble/BleGattClient;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection$1;->val$gattClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

    return-object v0
.end method

.method public getServiceClient()Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection$1;->val$serviceClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    return-object v0
.end method
