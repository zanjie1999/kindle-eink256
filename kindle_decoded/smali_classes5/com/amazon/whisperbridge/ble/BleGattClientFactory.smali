.class public Lcom/amazon/whisperbridge/ble/BleGattClientFactory;
.super Ljava/lang/Object;
.source "BleGattClientFactory.java"


# static fields
.field private static final INSTANCE:Lcom/amazon/whisperbridge/ble/BleGattClientFactory;

.field private static final TAG:Ljava/lang/String; = "BleGattClientFactory"


# instance fields
.field mBluetoothGattFactory:Lcom/amazon/whisperbridge/ble/BluetoothGattFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    invoke-static {}, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientFactoryComponent;->create()Lcom/amazon/whisperbridge/ble/BleGattClientFactoryComponent;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/amazon/whisperbridge/ble/BleGattClientFactory;

    invoke-direct {v1}, Lcom/amazon/whisperbridge/ble/BleGattClientFactory;-><init>()V

    .line 37
    invoke-interface {v0, v1}, Lcom/amazon/whisperbridge/ble/BleGattClientFactoryComponent;->inject(Lcom/amazon/whisperbridge/ble/BleGattClientFactory;)V

    .line 38
    sput-object v1, Lcom/amazon/whisperbridge/ble/BleGattClientFactory;->INSTANCE:Lcom/amazon/whisperbridge/ble/BleGattClientFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/whisperbridge/ble/BleGattClientFactory;
    .locals 1

    .line 42
    sget-object v0, Lcom/amazon/whisperbridge/ble/BleGattClientFactory;->INSTANCE:Lcom/amazon/whisperbridge/ble/BleGattClientFactory;

    return-object v0
.end method


# virtual methods
.method public createGattClient(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/amazon/whisperbridge/ble/BleGattClient$Callback;Z)Lcom/amazon/whisperbridge/ble/BleGattClient;
    .locals 6

    .line 63
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whisperbridge/ble/BleGattClientFactory;->createGattClientWithCommandQueue(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/amazon/whisperbridge/ble/BleGattClient$Callback;ZLjava/util/Queue;)Lcom/amazon/whisperbridge/ble/BleGattClient;

    move-result-object p1

    return-object p1
.end method

.method createGattClientWithCommandQueue(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/amazon/whisperbridge/ble/BleGattClient$Callback;ZLjava/util/Queue;)Lcom/amazon/whisperbridge/ble/BleGattClient;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/amazon/whisperbridge/ble/BleGattClient$Callback;",
            "Z",
            "Ljava/util/Queue<",
            "Lcom/amazon/whisperbridge/ble/command/BleCommand;",
            ">;)",
            "Lcom/amazon/whisperbridge/ble/BleGattClient;"
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    if-eqz p5, :cond_1

    .line 92
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleGattClient;

    invoke-direct {v0, p2, p3, p5}, Lcom/amazon/whisperbridge/ble/BleGattClient;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/amazon/whisperbridge/ble/BleGattClient$Callback;Ljava/util/Queue;)V

    .line 94
    sget-object p3, Lcom/amazon/whisperbridge/ble/BleGattClientFactory;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating GATT client on build Version = "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object p3, p0, Lcom/amazon/whisperbridge/ble/BleGattClientFactory;->mBluetoothGattFactory:Lcom/amazon/whisperbridge/ble/BluetoothGattFactory;

    invoke-virtual {v0}, Lcom/amazon/whisperbridge/ble/BleGattClient;->getGattCallback()Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;

    move-result-object p5

    invoke-interface {p3, p1, p2, p5, p4}, Lcom/amazon/whisperbridge/ble/BluetoothGattFactory;->createGattClient(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCallback;Z)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperbridge/ble/BleGattClient;->setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 97
    invoke-virtual {v0}, Lcom/amazon/whisperbridge/ble/BleGattClient;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object v0

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to open Android BluetoothGatt."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "commandQueue cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "btDevice cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
