.class final Lcom/amazon/whispersync/communication/ParcelablePolicy$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/communication/ParcelablePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/whispersync/communication/ParcelablePolicy;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/communication/ParcelablePolicy;
    .locals 12

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lamazon/whispersync/communication/connection/CompressionOption;->valueOf(Ljava/lang/String;)Lamazon/whispersync/communication/connection/CompressionOption;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lamazon/whispersync/communication/connection/Priority;->valueOf(Ljava/lang/String;)Lamazon/whispersync/communication/connection/Priority;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v9

    if-eqz v9, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-direct {v2}, Lamazon/whispersync/communication/connection/Policy$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lamazon/whispersync/communication/connection/Policy$Builder;->setCompressionOption(Lamazon/whispersync/communication/connection/CompressionOption;)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v2, v3}, Lamazon/whispersync/communication/connection/Policy$Builder;->setPriority(Lamazon/whispersync/communication/connection/Priority;)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v2, v4}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsLowLatencyNecessary(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v2, v5}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsRequestResponseOnly(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v2, v6}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsClearText(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v2, v7}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsWiFiNecessary(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v2, v8}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsAnonymousCredentialsAllowed(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v2, v1}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsDedicated(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    new-instance v0, Lamazon/whispersync/communication/connection/Purpose;

    invoke-direct {v0, p1}, Lamazon/whispersync/communication/connection/Purpose;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lamazon/whispersync/communication/connection/Policy$Builder;->setPurpose(Lamazon/whispersync/communication/connection/Purpose;)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v2}, Lamazon/whispersync/communication/connection/Policy$Builder;->build()Lamazon/whispersync/communication/connection/Policy;

    move-result-object p1

    new-instance v0, Lcom/amazon/whispersync/communication/ParcelablePolicy;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/communication/ParcelablePolicy;-><init>(Lamazon/whispersync/communication/connection/Policy;)V

    return-object v0

    :cond_6
    const/4 v3, 0x2

    if-ne v0, v3, :cond_e

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lamazon/whispersync/communication/connection/CompressionOption;->valueOf(Ljava/lang/String;)Lamazon/whispersync/communication/connection/CompressionOption;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lamazon/whispersync/communication/connection/Priority;->valueOf(Ljava/lang/String;)Lamazon/whispersync/communication/connection/Priority;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    goto :goto_8

    :cond_a
    const/4 v7, 0x0

    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x1

    goto :goto_9

    :cond_b
    const/4 v8, 0x0

    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v9

    if-eqz v9, :cond_c

    const/4 v9, 0x1

    goto :goto_a

    :cond_c
    const/4 v9, 0x0

    :goto_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v11

    if-eqz v11, :cond_d

    const/4 v1, 0x1

    :cond_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lamazon/whispersync/communication/connection/KeepAlive;->valueOf(Ljava/lang/String;)Lamazon/whispersync/communication/connection/KeepAlive;

    move-result-object p1

    new-instance v2, Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-direct {v2}, Lamazon/whispersync/communication/connection/Policy$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lamazon/whispersync/communication/connection/Policy$Builder;->setCompressionOption(Lamazon/whispersync/communication/connection/CompressionOption;)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v2, v3}, Lamazon/whispersync/communication/connection/Policy$Builder;->setPriority(Lamazon/whispersync/communication/connection/Priority;)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v2, v4}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsLowLatencyNecessary(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v2, v5}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsRequestResponseOnly(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v2, v6}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsClearText(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v2, v7}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsWiFiNecessary(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v2, v8}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsAnonymousCredentialsAllowed(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v2, v9}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsDedicated(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    new-instance v0, Lamazon/whispersync/communication/connection/Purpose;

    invoke-direct {v0, v10}, Lamazon/whispersync/communication/connection/Purpose;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lamazon/whispersync/communication/connection/Policy$Builder;->setPurpose(Lamazon/whispersync/communication/connection/Purpose;)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v2, v1}, Lamazon/whispersync/communication/connection/Policy$Builder;->setReconnectOnFailure(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v2, p1}, Lamazon/whispersync/communication/connection/Policy$Builder;->setKeepAlive(Lamazon/whispersync/communication/connection/KeepAlive;)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v2}, Lamazon/whispersync/communication/connection/Policy$Builder;->build()Lamazon/whispersync/communication/connection/Policy;

    move-result-object p1

    new-instance v0, Lcom/amazon/whispersync/communication/ParcelablePolicy;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/communication/ParcelablePolicy;-><init>(Lamazon/whispersync/communication/connection/Policy;)V

    return-object v0

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/communication/ParcelablePolicy$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/communication/ParcelablePolicy;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/whispersync/communication/ParcelablePolicy;
    .locals 0

    new-array p1, p1, [Lcom/amazon/whispersync/communication/ParcelablePolicy;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/communication/ParcelablePolicy$1;->newArray(I)[Lcom/amazon/whispersync/communication/ParcelablePolicy;

    move-result-object p1

    return-object p1
.end method
