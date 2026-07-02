.class public Lcom/amazon/whisperbridge/ble/BleGattDescriptor;
.super Ljava/lang/Object;
.source "BleGattDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;
    }
.end annotation


# static fields
.field private static final MAX_STORED_DATA_SIZE:I = 0x200

.field private static final TAG:Ljava/lang/String; = "BleGattDescriptor"


# instance fields
.field protected final mBluetoothGattDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

.field protected final mProperties:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattDescriptor;->mUuid:Ljava/util/UUID;

    .line 92
    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattDescriptor;->mBluetoothGattDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    .line 95
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getPermissions()I

    move-result p1

    .line 96
    const-class v0, Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattDescriptor;->mProperties:Ljava/util/EnumSet;

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 97
    sget-object v1, Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;->READ:Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_1

    .line 98
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattDescriptor;->mProperties:Ljava/util/EnumSet;

    sget-object v0, Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;->WRITE:Lcom/amazon/whisperbridge/ble/BleGattDescriptor$Properties;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static createDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Lcom/amazon/whisperbridge/ble/BleGattDescriptor;
    .locals 1

    if-eqz p0, :cond_0

    .line 58
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleGattDescriptor;

    invoke-direct {v0, p0}, Lcom/amazon/whisperbridge/ble/BleGattDescriptor;-><init>(Landroid/bluetooth/BluetoothGattDescriptor;)V

    return-object v0

    .line 55
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "characteristic cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getBluetoothGattDescriptor()Landroid/bluetooth/BluetoothGattDescriptor;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattDescriptor;->mBluetoothGattDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattDescriptor;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public declared-synchronized setStoredData([B)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 149
    :try_start_0
    array-length v0, p1

    const/16 v1, 0x200

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stored data in descriptor is limited to 512 bytes."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattDescriptor;->mBluetoothGattDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothGattDescriptor [uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattDescriptor;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
