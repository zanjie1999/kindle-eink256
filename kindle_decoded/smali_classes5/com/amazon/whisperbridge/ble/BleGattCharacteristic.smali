.class public Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;
.super Ljava/lang/Object;
.source "BleGattCharacteristic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;
    }
.end annotation


# instance fields
.field protected final mBleDescriptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lcom/amazon/whisperbridge/ble/BleGattDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field protected final mBluetoothGattCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field protected final mProperties:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;",
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

.method protected constructor <init>(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->mBleDescriptors:Ljava/util/Map;

    .line 136
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->mUuid:Ljava/util/UUID;

    .line 137
    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->mBluetoothGattCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 140
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    .line 141
    const-class v1, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->mProperties:Ljava/util/EnumSet;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    .line 142
    sget-object v2, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;->READ:Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->mProperties:Ljava/util/EnumSet;

    sget-object v2, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;->WRITE:Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    .line 144
    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->mProperties:Ljava/util/EnumSet;

    sget-object v2, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;->NOTIFY:Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_3

    .line 145
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->mProperties:Ljava/util/EnumSet;

    sget-object v1, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;->INDICATE:Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 149
    invoke-static {v0}, Lcom/amazon/whisperbridge/ble/BleGattDescriptor;->createDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Lcom/amazon/whisperbridge/ble/BleGattDescriptor;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->mBleDescriptors:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/amazon/whisperbridge/ble/BleGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static createCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;
    .locals 1

    if-eqz p0, :cond_0

    .line 67
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;

    invoke-direct {v0, p0}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;-><init>(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-object v0

    .line 64
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "characteristic cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public containsBleDescriptor(Ljava/util/UUID;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->mBleDescriptors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 210
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "uuid cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBleDescriptor(Ljava/util/UUID;)Lcom/amazon/whisperbridge/ble/BleGattDescriptor;
    .locals 3

    if-eqz p1, :cond_1

    .line 227
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->mBleDescriptors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->mBleDescriptors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperbridge/ble/BleGattDescriptor;

    return-object p1

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No descriptor with uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "uuid cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBluetoothGattCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->mBluetoothGattCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public declared-synchronized getStoredData()[B
    .locals 1

    monitor-enter p0

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->mBluetoothGattCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public isIndicatable()Z
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->mProperties:Ljava/util/EnumSet;

    sget-object v1, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;->INDICATE:Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNotifiable()Z
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->mProperties:Ljava/util/EnumSet;

    sget-object v1, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;->NOTIFY:Lcom/amazon/whisperbridge/ble/BleGattCharacteristic$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setStoredData([B)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 324
    :try_start_0
    array-length v0, p1

    const/16 v1, 0x200

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stored data in characteristic is limited to 512 bytes."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 328
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->mBluetoothGattCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleGattCharacteristic [uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
