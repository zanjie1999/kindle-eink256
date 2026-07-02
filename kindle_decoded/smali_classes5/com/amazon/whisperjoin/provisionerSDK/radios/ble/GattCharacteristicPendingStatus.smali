.class Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;
.super Ljava/lang/Object;
.source "GattCharacteristicPendingStatus.java"


# instance fields
.field private final mAddtionalUpdates:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;

.field private final mHandled:Z


# direct methods
.method public constructor <init>(ZLcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;->mHandled:Z

    .line 14
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;->mAddtionalUpdates:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;

    return-void
.end method


# virtual methods
.method additionalUpdates()Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;->mAddtionalUpdates:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;

    return-object v0
.end method

.method public handled()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;->mHandled:Z

    return v0
.end method
