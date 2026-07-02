.class Lcom/amazon/whispersync/communication/ParcelableStatus$Creator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/communication/ParcelableStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/whispersync/communication/ParcelableStatus;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/communication/ParcelableStatus;
    .locals 1

    new-instance v0, Lcom/amazon/whispersync/communication/ParcelableStatus;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/communication/ParcelableStatus;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/communication/ParcelableStatus$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/communication/ParcelableStatus;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/whispersync/communication/ParcelableStatus;
    .locals 0

    new-array p1, p1, [Lcom/amazon/whispersync/communication/ParcelableStatus;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/communication/ParcelableStatus$Creator;->newArray(I)[Lcom/amazon/whispersync/communication/ParcelableStatus;

    move-result-object p1

    return-object p1
.end method
