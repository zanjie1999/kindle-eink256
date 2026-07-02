.class Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity$Creator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lamazon/whispersync/communication/identity/EndpointIdentityFactory;->createFromUrn(Ljava/lang/String;)Lamazon/whispersync/communication/identity/EndpointIdentity;

    move-result-object p1

    new-instance v0, Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;-><init>(Lamazon/whispersync/communication/identity/EndpointIdentity;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;
    .locals 0

    new-array p1, p1, [Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity$Creator;->newArray(I)[Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;

    move-result-object p1

    return-object p1
.end method
