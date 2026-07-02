.class final Lcom/amazon/whispersync/communication/ParcelableConnectionPolicy$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/communication/ParcelableConnectionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/whispersync/communication/ParcelableConnectionPolicy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/communication/ParcelableConnectionPolicy;
    .locals 7

    new-instance v0, Lcom/amazon/whispersync/communication/ParcelableConnectionPolicy;

    invoke-direct {v0}, Lcom/amazon/whispersync/communication/ParcelableConnectionPolicy;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->setIsRoamingAllowed(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->setIsShortLived(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->setIsLowLatencyNecessary(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->setIsRequestResponseOnly(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v4, Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;->ALLOWED:Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x2

    if-ne v1, v4, :cond_4

    sget-object v1, Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;->ALLOWED:Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;

    :goto_4
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->setCompressionOption(Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;)V

    goto :goto_5

    :cond_4
    sget-object v4, Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;->NOT_ALLOWED:Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v1, v4, :cond_5

    sget-object v1, Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;->NOT_ALLOWED:Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;

    goto :goto_4

    :cond_5
    sget-object v4, Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;->REQUIRED:Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v1, v4, :cond_6

    sget-object v1, Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;->REQUIRED:Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;

    goto :goto_4

    :cond_6
    new-array v4, v5, [Ljava/lang/Object;

    const-string v6, "Unknown ordinal value for CompressionOption "

    aput-object v6, v4, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Lcom/amazon/whispersync/dp/utils/FailFast;->expectTrue(Z[Ljava/lang/Object;)V

    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->setIsClearText(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_7

    :cond_8
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->setIsWiFiNecessary(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_8

    :cond_9
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->setIsInstanceLocked(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object v1, Lamazon/whispersync/communication/connection/Priority;->PRIORITY_HIGH:Lamazon/whispersync/communication/connection/Priority;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_a

    sget-object p1, Lamazon/whispersync/communication/connection/Priority;->PRIORITY_HIGH:Lamazon/whispersync/communication/connection/Priority;

    :goto_9
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->setPriority(Lamazon/whispersync/communication/connection/Priority;)V

    goto :goto_a

    :cond_a
    sget-object v1, Lamazon/whispersync/communication/connection/Priority;->PRIORITY_NORMAL:Lamazon/whispersync/communication/connection/Priority;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_b

    sget-object p1, Lamazon/whispersync/communication/connection/Priority;->PRIORITY_NORMAL:Lamazon/whispersync/communication/connection/Priority;

    goto :goto_9

    :cond_b
    sget-object v1, Lamazon/whispersync/communication/connection/Priority;->PRIORITY_LOW:Lamazon/whispersync/communication/connection/Priority;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_c

    sget-object p1, Lamazon/whispersync/communication/connection/Priority;->PRIORITY_LOW:Lamazon/whispersync/communication/connection/Priority;

    goto :goto_9

    :cond_c
    new-array v1, v5, [Ljava/lang/Object;

    const-string v4, "Unknown ordinal value for Priority "

    aput-object v4, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v3, v1}, Lcom/amazon/whispersync/dp/utils/FailFast;->expectTrue(Z[Ljava/lang/Object;)V

    :goto_a
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/communication/ParcelableConnectionPolicy$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/communication/ParcelableConnectionPolicy;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/whispersync/communication/ParcelableConnectionPolicy;
    .locals 0

    new-array p1, p1, [Lcom/amazon/whispersync/communication/ParcelableConnectionPolicy;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/communication/ParcelableConnectionPolicy$1;->newArray(I)[Lcom/amazon/whispersync/communication/ParcelableConnectionPolicy;

    move-result-object p1

    return-object p1
.end method
