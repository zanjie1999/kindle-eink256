.class public Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lamazon/whispersync/communication/identity/IRServiceEndpoint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint$Creator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEndpoint:Lamazon/whispersync/communication/identity/IRServiceEndpoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint$Creator;

    invoke-direct {v0}, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint$Creator;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lamazon/whispersync/communication/identity/IRServiceEndpoint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;->mEndpoint:Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClearTextConnection()Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;->mEndpoint:Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    invoke-interface {v0}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->getClearTextConnection()Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    move-result-object v0

    return-object v0
.end method

.method public getDataCompression()Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;->mEndpoint:Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    invoke-interface {v0}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->getDataCompression()Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;

    move-result-object v0

    return-object v0
.end method

.method public getDirectConnection()Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;->mEndpoint:Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    invoke-interface {v0}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->getDirectConnection()Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;->mEndpoint:Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    invoke-interface {v0}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->getDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;->mEndpoint:Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    invoke-interface {v0}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->getHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;->mEndpoint:Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    invoke-interface {v0}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->getPort()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;->mEndpoint:Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    invoke-interface {v0}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->getRealm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecurePort()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;->mEndpoint:Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    invoke-interface {v0}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->getSecurePort()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;->mEndpoint:Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    invoke-interface {v0}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->getTimeout()I

    move-result v0

    return v0
.end method

.method public toResolvedUri(Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;->mEndpoint:Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    invoke-interface {v0, p1}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->toResolvedUri(Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;->mEndpoint:Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;->mEndpoint:Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    invoke-interface {p2}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->getHostname()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;->mEndpoint:Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    invoke-interface {p2}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->getDomain()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;->mEndpoint:Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    invoke-interface {p2}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->getDirectConnection()Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    move-result-object p2

    invoke-virtual {p2}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;->mEndpoint:Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    invoke-interface {p2}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->getDataCompression()Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;

    move-result-object p2

    invoke-virtual {p2}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;->mEndpoint:Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    invoke-interface {p2}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->getClearTextConnection()Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    move-result-object p2

    invoke-virtual {p2}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;->mEndpoint:Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    invoke-interface {p2}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->getTimeout()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;->mEndpoint:Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    invoke-interface {p2}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->getPort()Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, -0x1

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;->mEndpoint:Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    invoke-interface {p2}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->getPort()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;->mEndpoint:Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    invoke-interface {p2}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->getSecurePort()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;->mEndpoint:Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    invoke-interface {p2}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->getSecurePort()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;->mEndpoint:Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    invoke-interface {p2}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->getRealm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
