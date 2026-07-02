.class public Lcom/amazon/whisperjoin/provisionerSDK/radios/error/GattConnectionError;
.super Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ConnectionFailureException;
.source "GattConnectionError.java"


# instance fields
.field final mGattStatusCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ConnectionFailureException;-><init>()V

    .line 15
    iput p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/GattConnectionError;->mGattStatusCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 32
    const-class v2, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/GattConnectionError;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 33
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/GattConnectionError;

    .line 34
    iget v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/GattConnectionError;->mGattStatusCode:I

    iget p1, p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/GattConnectionError;->mGattStatusCode:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getGattStatusCode()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/GattConnectionError;->mGattStatusCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 39
    iget v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/GattConnectionError;->mGattStatusCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 24
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/GattConnectionError;->mGattStatusCode:I

    const-string v2, "mGattStatusCode"

    .line 25
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 26
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
