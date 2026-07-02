.class public Lcom/amazon/whisperbridge/ble/AndroidBleGattClientFactory;
.super Ljava/lang/Object;
.source "AndroidBleGattClientFactory.java"

# interfaces
.implements Lcom/amazon/whisperbridge/ble/BluetoothGattFactory;


# static fields
.field private static final CONNECT_GATT_METHOD_NAME:Ljava/lang/String; = "connectGatt"

.field private static final TAG:Ljava/lang/String; = "com.amazon.whisperbridge.ble.AndroidBleGattClientFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createGattClient(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCallback;Z)Landroid/bluetooth/BluetoothGatt;
    .locals 9

    .line 32
    :try_start_0
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "connectGatt"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/bluetooth/BluetoothGattCallback;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    .line 33
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v6

    aput-object p3, v1, v7

    .line 34
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v8

    .line 33
    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothGatt;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 40
    sget-object p2, Lcom/amazon/whisperbridge/ble/AndroidBleGattClientFactory;->TAG:Ljava/lang/String;

    const-string p3, "InvocationTargetException in createGattClientWithCommandQueue() "

    invoke-static {p2, p3, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 38
    sget-object p2, Lcom/amazon/whisperbridge/ble/AndroidBleGattClientFactory;->TAG:Ljava/lang/String;

    const-string p3, "IllegalAccessException in createGattClientWithCommandQueue() "

    invoke-static {p2, p3, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p1

    .line 36
    sget-object p2, Lcom/amazon/whisperbridge/ble/AndroidBleGattClientFactory;->TAG:Ljava/lang/String;

    const-string p3, "NoSuchMethodException in createGattClientWithCommandQueue() "

    invoke-static {p2, p3, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
