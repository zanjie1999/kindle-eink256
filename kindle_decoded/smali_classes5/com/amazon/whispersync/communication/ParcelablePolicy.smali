.class public Lcom/amazon/whispersync/communication/ParcelablePolicy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whispersync/communication/ParcelablePolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final VERSION:I = 0x2


# instance fields
.field private final mPolicy:Lamazon/whispersync/communication/connection/Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/whispersync/communication/ParcelablePolicy$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/communication/ParcelablePolicy$1;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/communication/ParcelablePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lamazon/whispersync/communication/connection/Policy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/amazon/whispersync/communication/ParcelablePolicy;->mPolicy:Lamazon/whispersync/communication/connection/Policy;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "policy must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPolicy()Lamazon/whispersync/communication/connection/Policy;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ParcelablePolicy;->mPolicy:Lamazon/whispersync/communication/connection/Policy;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/amazon/whispersync/communication/ParcelablePolicy;->mPolicy:Lamazon/whispersync/communication/connection/Policy;

    invoke-virtual {p2}, Lamazon/whispersync/communication/connection/Policy;->getCompressionOption()Lamazon/whispersync/communication/connection/CompressionOption;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/amazon/whispersync/communication/ParcelablePolicy;->mPolicy:Lamazon/whispersync/communication/connection/Policy;

    invoke-virtual {p2}, Lamazon/whispersync/communication/connection/Policy;->getPriority()Lamazon/whispersync/communication/connection/Priority;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/amazon/whispersync/communication/ParcelablePolicy;->mPolicy:Lamazon/whispersync/communication/connection/Policy;

    invoke-virtual {p2}, Lamazon/whispersync/communication/connection/Policy;->isLowLatencyNecessary()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/amazon/whispersync/communication/ParcelablePolicy;->mPolicy:Lamazon/whispersync/communication/connection/Policy;

    invoke-virtual {p2}, Lamazon/whispersync/communication/connection/Policy;->isRequestResponseOnly()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/amazon/whispersync/communication/ParcelablePolicy;->mPolicy:Lamazon/whispersync/communication/connection/Policy;

    invoke-virtual {p2}, Lamazon/whispersync/communication/connection/Policy;->isClearText()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/amazon/whispersync/communication/ParcelablePolicy;->mPolicy:Lamazon/whispersync/communication/connection/Policy;

    invoke-virtual {p2}, Lamazon/whispersync/communication/connection/Policy;->isWiFiNecessary()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/amazon/whispersync/communication/ParcelablePolicy;->mPolicy:Lamazon/whispersync/communication/connection/Policy;

    invoke-virtual {p2}, Lamazon/whispersync/communication/connection/Policy;->isAnonymousCredentialsAllowed()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/amazon/whispersync/communication/ParcelablePolicy;->mPolicy:Lamazon/whispersync/communication/connection/Policy;

    invoke-virtual {p2}, Lamazon/whispersync/communication/connection/Policy;->isDedicated()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/amazon/whispersync/communication/ParcelablePolicy;->mPolicy:Lamazon/whispersync/communication/connection/Policy;

    invoke-virtual {p2}, Lamazon/whispersync/communication/connection/Policy;->getPurpose()Lamazon/whispersync/communication/connection/Purpose;

    move-result-object p2

    invoke-virtual {p2}, Lamazon/whispersync/communication/connection/Purpose;->getPurpose()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/amazon/whispersync/communication/ParcelablePolicy;->mPolicy:Lamazon/whispersync/communication/connection/Policy;

    invoke-virtual {p2}, Lamazon/whispersync/communication/connection/Policy;->getReconnectOnFailure()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/amazon/whispersync/communication/ParcelablePolicy;->mPolicy:Lamazon/whispersync/communication/connection/Policy;

    invoke-virtual {p2}, Lamazon/whispersync/communication/connection/Policy;->getKeepAlive()Lamazon/whispersync/communication/connection/KeepAlive;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
