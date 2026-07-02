.class public Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;
.super Ljava/lang/Object;
.source "BluetoothFFSEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BluetoothAuthMaterial"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMacAddress:Ljava/lang/String;

.field private mRssi:I

.field private mScanRecord:[B

.field private mTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;->mMacAddress:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;->mRssi:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;->mTimeStamp:J

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;->mScanRecord:[B

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$1;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ[B)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;->mMacAddress:Ljava/lang/String;

    .line 89
    iput p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;->mRssi:I

    .line 90
    iput-wide p3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;->mTimeStamp:J

    .line 91
    iput-object p5, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;->mScanRecord:[B

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;->mMacAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;->mRssi:I

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;)J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;->mTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;)[B
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;->mScanRecord:[B

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 73
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;->mRssi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-wide v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;->mScanRecord:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
