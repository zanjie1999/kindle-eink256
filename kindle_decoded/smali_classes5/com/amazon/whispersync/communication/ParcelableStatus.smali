.class public Lcom/amazon/whispersync/communication/ParcelableStatus;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/communication/ParcelableStatus$Creator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whispersync/communication/ParcelableStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStatusCode:I

.field private mStatusMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/whispersync/communication/ParcelableStatus$Creator;

    invoke-direct {v0}, Lcom/amazon/whispersync/communication/ParcelableStatus$Creator;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/communication/ParcelableStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/communication/ParcelableStatus;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/communication/ParcelableStatus;->mStatusCode:I

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ParcelableStatus;->mStatusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amazon/whispersync/communication/ParcelableStatus;->mStatusCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/communication/ParcelableStatus;->mStatusMessage:Ljava/lang/String;

    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    iput p1, p0, Lcom/amazon/whispersync/communication/ParcelableStatus;->mStatusCode:I

    return-void
.end method

.method public setStatusMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/communication/ParcelableStatus;->mStatusMessage:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/amazon/whispersync/communication/ParcelableStatus;->mStatusCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/amazon/whispersync/communication/ParcelableStatus;->mStatusMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
