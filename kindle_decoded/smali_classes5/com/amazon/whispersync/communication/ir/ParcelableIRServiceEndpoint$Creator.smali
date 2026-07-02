.class Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint$Creator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;
    .locals 12

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->parse(Ljava/lang/String;)Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;->parse(Ljava/lang/String;)Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;->parse(Ljava/lang/String;)Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    new-instance v10, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-ne v0, v9, :cond_0

    move-object v11, v8

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v11, v0

    :goto_0
    if-ne v3, v9, :cond_1

    move-object v9, v8

    goto :goto_1

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v9, v0

    :goto_1
    move-object v0, v10

    move-object v3, p1

    move-object v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;ILjava/lang/Integer;Ljava/lang/Integer;)V

    new-instance p1, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;

    invoke-direct {p1, v10}, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;-><init>(Lamazon/whispersync/communication/identity/IRServiceEndpoint;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;
    .locals 0

    new-array p1, p1, [Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint$Creator;->newArray(I)[Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;

    move-result-object p1

    return-object p1
.end method
