.class public Lcom/amazon/whisperbridge/ble/GattClientModule;
.super Ljava/lang/Object;
.source "GattClientModule.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GattClientModule"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/amazon/whisperbridge/ble/GattClientModule;->TAG:Ljava/lang/String;

    const-string v1, "Creating Android BLE module"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public provideBluetoothGattFactory()Lcom/amazon/whisperbridge/ble/BluetoothGattFactory;
    .locals 1

    .line 32
    new-instance v0, Lcom/amazon/whisperbridge/ble/AndroidBleGattClientFactory;

    invoke-direct {v0}, Lcom/amazon/whisperbridge/ble/AndroidBleGattClientFactory;-><init>()V

    return-object v0
.end method
