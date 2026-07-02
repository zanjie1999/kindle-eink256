.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/error/BluetoothLowEnergyNotSupportedException;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PreconditionFailureException;
.source "BluetoothLowEnergyNotSupportedException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PreconditionFailureException;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 10
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/BluetoothLowEnergyNotSupportedException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 15
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
