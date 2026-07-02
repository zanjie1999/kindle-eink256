.class public final Lcom/amazon/dcp/ota/Update;
.super Ljava/lang/Object;
.source "Update.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/dcp/ota/Update;",
            ">;"
        }
    .end annotation
.end field

.field private static final VERSION:I = 0x7


# instance fields
.field private mBytesDownloaded:J

.field private mDownloadProgress:F

.field private mFailure:Lcom/amazon/dcp/ota/OTAFailure;

.field private mForceInstall:Z

.field private mId:J

.field private mInstallOrder:Ljava/lang/Integer;

.field private mInstallSchedulerStartTimeMillis:J

.field private mLocalUri:Landroid/net/Uri;

.field private mNetworkType:Lcom/amazon/dcp/ota/NetworkType;

.field private mPackageName:Ljava/lang/String;

.field private mPackageVersionCode:Ljava/lang/Integer;

.field private mPackageVersionName:Ljava/lang/String;

.field private mReleaseNotes:Ljava/lang/String;

.field private mRemoteFileSize:J

.field private mRemoteUri:Landroid/net/Uri;

.field private mState:Lcom/amazon/dcp/ota/UpdateState;

.field private final mType:Lcom/amazon/dcp/ota/UpdateType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/amazon/dcp/ota/Update$1;

    invoke-direct {v0}, Lcom/amazon/dcp/ota/Update$1;-><init>()V

    sput-object v0, Lcom/amazon/dcp/ota/Update;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/amazon/dcp/ota/UpdateType;)V
    .locals 6

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 43
    iput-wide v0, p0, Lcom/amazon/dcp/ota/Update;->mId:J

    const-string v2, ""

    .line 44
    iput-object v2, p0, Lcom/amazon/dcp/ota/Update;->mPackageVersionName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 45
    iput-object v2, p0, Lcom/amazon/dcp/ota/Update;->mReleaseNotes:Ljava/lang/String;

    const/4 v3, 0x0

    .line 46
    iput-boolean v3, p0, Lcom/amazon/dcp/ota/Update;->mForceInstall:Z

    .line 47
    sget-object v4, Lcom/amazon/dcp/ota/NetworkType;->LAN:Lcom/amazon/dcp/ota/NetworkType;

    iput-object v4, p0, Lcom/amazon/dcp/ota/Update;->mNetworkType:Lcom/amazon/dcp/ota/NetworkType;

    .line 49
    sget-object v4, Lcom/amazon/dcp/ota/UpdateState;->Pending:Lcom/amazon/dcp/ota/UpdateState;

    iput-object v4, p0, Lcom/amazon/dcp/ota/Update;->mState:Lcom/amazon/dcp/ota/UpdateState;

    .line 50
    sget-object v4, Lcom/amazon/dcp/ota/OTAFailure;->None:Lcom/amazon/dcp/ota/OTAFailure;

    iput-object v4, p0, Lcom/amazon/dcp/ota/Update;->mFailure:Lcom/amazon/dcp/ota/OTAFailure;

    .line 51
    iput-object v2, p0, Lcom/amazon/dcp/ota/Update;->mLocalUri:Landroid/net/Uri;

    const-wide/16 v4, 0x0

    .line 52
    iput-wide v4, p0, Lcom/amazon/dcp/ota/Update;->mRemoteFileSize:J

    .line 53
    iput-wide v4, p0, Lcom/amazon/dcp/ota/Update;->mBytesDownloaded:J

    const/4 v2, 0x0

    .line 54
    iput v2, p0, Lcom/amazon/dcp/ota/Update;->mDownloadProgress:F

    .line 56
    iput-wide v0, p0, Lcom/amazon/dcp/ota/Update;->mInstallSchedulerStartTimeMillis:J

    .line 60
    sget-object v0, Lcom/amazon/dcp/ota/UpdateType;->Unknown:Lcom/amazon/dcp/ota/UpdateType;

    const-class v1, Ljava/lang/IllegalArgumentException;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "Unknown is not an acceptable update type"

    invoke-static {v0, p1, v1, v3, v2}, Lcom/amazon/dcp/framework/Checks;->checkNotEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iput-object p1, p0, Lcom/amazon/dcp/ota/Update;->mType:Lcom/amazon/dcp/ota/UpdateType;

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lcom/amazon/dcp/ota/Update;
    .locals 0

    .line 16
    invoke-static {p0}, Lcom/amazon/dcp/ota/Update;->fromParcel(Landroid/os/Parcel;)Lcom/amazon/dcp/ota/Update;

    move-result-object p0

    return-object p0
.end method

.method private static fromParcel(Landroid/os/Parcel;)Lcom/amazon/dcp/ota/Update;
    .locals 7

    .line 506
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x7

    .line 507
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Ljava/lang/IllegalArgumentException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x1

    aput-object v0, v4, v6

    const-string v0, "Expected parcel v%d, but received v%d."

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/amazon/dcp/framework/Checks;->checkEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    new-instance v0, Lcom/amazon/dcp/ota/Update;

    const-class v1, Lcom/amazon/dcp/ota/UpdateType;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amazon/dcp/ota/UpdateType;

    invoke-direct {v0, v1}, Lcom/amazon/dcp/ota/Update;-><init>(Lcom/amazon/dcp/ota/UpdateType;)V

    .line 513
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/amazon/dcp/ota/Update;->mId:J

    .line 514
    const-class v1, Lcom/amazon/dcp/ota/UpdateState;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amazon/dcp/ota/UpdateState;

    invoke-virtual {v0, v1}, Lcom/amazon/dcp/ota/Update;->setState(Lcom/amazon/dcp/ota/UpdateState;)V

    .line 515
    const-class v1, Lcom/amazon/dcp/ota/OTAFailure;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amazon/dcp/ota/OTAFailure;

    invoke-virtual {v0, v1}, Lcom/amazon/dcp/ota/Update;->setFailureReason(Lcom/amazon/dcp/ota/OTAFailure;)V

    .line 516
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/dcp/ota/Update;->setInstallOrder(I)V

    .line 517
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/dcp/ota/Update;->setPackageName(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/dcp/ota/Update;->setPackageVersionCode(I)V

    .line 519
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/dcp/ota/Update;->setPackageVersionName(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 522
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 524
    invoke-virtual {v0, v1}, Lcom/amazon/dcp/ota/Update;->setReleaseNotes(Ljava/lang/String;)V

    .line 527
    :cond_0
    const-class v1, Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/amazon/dcp/ota/Update;->setRemoteUri(Landroid/net/Uri;)V

    .line 528
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/dcp/ota/Update;->setRemoteFileSize(J)V

    .line 529
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/dcp/ota/Update;->setBytesDownloaded(J)V

    .line 530
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/dcp/ota/Update;->setDownloadProgress(F)V

    .line 531
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    invoke-virtual {v0, v5}, Lcom/amazon/dcp/ota/Update;->setForceInstall(Z)V

    .line 532
    const-class v1, Lcom/amazon/dcp/ota/NetworkType;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amazon/dcp/ota/NetworkType;

    invoke-virtual {v0, v1}, Lcom/amazon/dcp/ota/Update;->setNetworkType(Lcom/amazon/dcp/ota/NetworkType;)V

    .line 533
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/dcp/ota/Update;->setInstallSchedulerStartTime(J)V

    return-object v0
.end method

.method private varargs isAnyObjectNull([Ljava/lang/Object;)Z
    .locals 4

    .line 100
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-nez v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 429
    :cond_0
    instance-of v1, p1, Lcom/amazon/dcp/ota/Update;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 434
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 439
    :cond_2
    check-cast p1, Lcom/amazon/dcp/ota/Update;

    .line 440
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getUpdateType()Lcom/amazon/dcp/ota/UpdateType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/dcp/ota/Update;->getUpdateType()Lcom/amazon/dcp/ota/UpdateType;

    move-result-object v3

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getInstallOrder()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/dcp/ota/Update;->getInstallOrder()I

    move-result v3

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/dcp/ota/Update;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getPackageVersionCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/dcp/ota/Update;->getPackageVersionCode()I

    move-result v3

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getPackageVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/dcp/ota/Update;->getPackageVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getRemoteUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/dcp/ota/Update;->getRemoteUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->shouldForceInstall()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/dcp/ota/Update;->shouldForceInstall()Z

    move-result v3

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getNetworkType()Lcom/amazon/dcp/ota/NetworkType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/dcp/ota/Update;->getNetworkType()Lcom/amazon/dcp/ota/NetworkType;

    move-result-object p1

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBytesDownloaded()J
    .locals 2

    .line 272
    iget-wide v0, p0, Lcom/amazon/dcp/ota/Update;->mBytesDownloaded:J

    return-wide v0
.end method

.method public getDownloadProgress()F
    .locals 1

    .line 284
    iget v0, p0, Lcom/amazon/dcp/ota/Update;->mDownloadProgress:F

    return v0
.end method

.method public getFailureReason()Lcom/amazon/dcp/ota/OTAFailure;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/amazon/dcp/ota/Update;->mFailure:Lcom/amazon/dcp/ota/OTAFailure;

    return-object v0
.end method

.method public getInstallOrder()I
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/amazon/dcp/ota/Update;->mInstallOrder:Ljava/lang/Integer;

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "The install order has not been set"

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/amazon/dcp/ota/Update;->mInstallOrder:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getInstallSchedulerStartTime()J
    .locals 2

    .line 349
    iget-wide v0, p0, Lcom/amazon/dcp/ota/Update;->mInstallSchedulerStartTimeMillis:J

    return-wide v0
.end method

.method public getNetworkType()Lcom/amazon/dcp/ota/NetworkType;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/amazon/dcp/ota/Update;->mNetworkType:Lcom/amazon/dcp/ota/NetworkType;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/amazon/dcp/ota/Update;->mPackageName:Ljava/lang/String;

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "The package name has not been set"

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/amazon/dcp/ota/Update;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageVersionCode()I
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/amazon/dcp/ota/Update;->mPackageVersionCode:Ljava/lang/Integer;

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "The version code has not been set"

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lcom/amazon/dcp/ota/Update;->mPackageVersionCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPackageVersionName()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/amazon/dcp/ota/Update;->mPackageVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseNotes()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/amazon/dcp/ota/Update;->mReleaseNotes:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteFileSize()J
    .locals 2

    .line 260
    iget-wide v0, p0, Lcom/amazon/dcp/ota/Update;->mRemoteFileSize:J

    return-wide v0
.end method

.method public getRemoteUri()Landroid/net/Uri;
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/amazon/dcp/ota/Update;->mRemoteUri:Landroid/net/Uri;

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "The remote uri has not been set"

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lcom/amazon/dcp/ota/Update;->mRemoteUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getState()Lcom/amazon/dcp/ota/UpdateState;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/amazon/dcp/ota/Update;->mState:Lcom/amazon/dcp/ota/UpdateState;

    return-object v0
.end method

.method public getUpdateType()Lcom/amazon/dcp/ota/UpdateType;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/dcp/ota/Update;->mType:Lcom/amazon/dcp/ota/UpdateType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 453
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x3af

    .line 461
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getUpdateType()Lcom/amazon/dcp/ota/UpdateType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x29

    .line 462
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getInstallOrder()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x29

    .line 463
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x29

    .line 464
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getPackageVersionCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x29

    .line 465
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getPackageVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x29

    .line 466
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getRemoteUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x29

    .line 467
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->shouldForceInstall()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x29

    .line 468
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getNetworkType()Lcom/amazon/dcp/ota/NetworkType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 91
    iget-object v1, p0, Lcom/amazon/dcp/ota/Update;->mType:Lcom/amazon/dcp/ota/UpdateType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/dcp/ota/Update;->mInstallOrder:Ljava/lang/Integer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/dcp/ota/Update;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/amazon/dcp/ota/Update;->mPackageVersionCode:Ljava/lang/Integer;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/amazon/dcp/ota/Update;->mRemoteUri:Landroid/net/Uri;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Lcom/amazon/dcp/ota/Update;->isAnyObjectNull([Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public setBytesDownloaded(J)V
    .locals 0

    .line 266
    iput-wide p1, p0, Lcom/amazon/dcp/ota/Update;->mBytesDownloaded:J

    return-void
.end method

.method public setDownloadProgress(F)V
    .locals 0

    .line 278
    iput p1, p0, Lcom/amazon/dcp/ota/Update;->mDownloadProgress:F

    return-void
.end method

.method public setFailureReason(Lcom/amazon/dcp/ota/OTAFailure;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/amazon/dcp/ota/Update;->mFailure:Lcom/amazon/dcp/ota/OTAFailure;

    return-void
.end method

.method public setForceInstall(Z)V
    .locals 0

    .line 303
    iput-boolean p1, p0, Lcom/amazon/dcp/ota/Update;->mForceInstall:Z

    return-void
.end method

.method public setInstallOrder(I)V
    .locals 4

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 163
    :goto_0
    const-class v2, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "The install order must be non-negative"

    invoke-static {v1, v2, v3, v0}, Lcom/amazon/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/dcp/ota/Update;->mInstallOrder:Ljava/lang/Integer;

    return-void
.end method

.method public setInstallSchedulerStartTime(J)V
    .locals 0

    .line 343
    iput-wide p1, p0, Lcom/amazon/dcp/ota/Update;->mInstallSchedulerStartTimeMillis:J

    return-void
.end method

.method public setLocalUri(Landroid/net/Uri;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/amazon/dcp/ota/Update;->mLocalUri:Landroid/net/Uri;

    return-void
.end method

.method public setNetworkType(Lcom/amazon/dcp/ota/NetworkType;)V
    .locals 4

    .line 314
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "The networkType may not be null"

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    sget-object v0, Lcom/amazon/dcp/ota/NetworkType;->Unknown:Lcom/amazon/dcp/ota/NetworkType;

    const-class v2, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "The networkType may not be Unknown"

    invoke-static {v0, p1, v2, v3, v1}, Lcom/amazon/dcp/framework/Checks;->checkNotEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    iput-object p1, p0, Lcom/amazon/dcp/ota/Update;->mNetworkType:Lcom/amazon/dcp/ota/NetworkType;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 4

    .line 179
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "The package name may not be null"

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "The package name may not empty"

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/dcp/framework/Checks;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iput-object p1, p0, Lcom/amazon/dcp/ota/Update;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setPackageVersionCode(I)V
    .locals 4

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 195
    :goto_0
    const-class v2, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "The version code must be non-negative"

    invoke-static {v1, v2, v3, v0}, Lcom/amazon/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/dcp/ota/Update;->mPackageVersionCode:Ljava/lang/Integer;

    return-void
.end method

.method public setPackageVersionName(Ljava/lang/String;)V
    .locals 3

    .line 212
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "The version name may not be null"

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    iput-object p1, p0, Lcom/amazon/dcp/ota/Update;->mPackageVersionName:Ljava/lang/String;

    return-void
.end method

.method public setReleaseNotes(Ljava/lang/String;)V
    .locals 3

    .line 290
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Release notes may not be null or empty"

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/dcp/framework/Checks;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    iput-object p1, p0, Lcom/amazon/dcp/ota/Update;->mReleaseNotes:Ljava/lang/String;

    return-void
.end method

.method public setRemoteFileSize(J)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 253
    :goto_0
    const-class v2, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "The size must be greater than or equal to zero"

    invoke-static {v1, v2, v3, v0}, Lcom/amazon/dcp/framework/Checks;->checkTrue(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    iput-wide p1, p0, Lcom/amazon/dcp/ota/Update;->mRemoteFileSize:J

    return-void
.end method

.method public setRemoteUri(Landroid/net/Uri;)V
    .locals 6

    .line 225
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "The remote uri may not be null"

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file"

    const-string v3, "http"

    const-string v4, "https"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amazon/dcp/framework/StringUtils;->equalsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    const-class v3, Ljava/lang/IllegalArgumentException;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, "The remote uri must use a file, http or https scheme, not %s"

    invoke-static {v0, v3, v1, v4}, Lcom/amazon/dcp/framework/Checks;->checkTrue(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iput-object p1, p0, Lcom/amazon/dcp/ota/Update;->mRemoteUri:Landroid/net/Uri;

    .line 234
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getState()Lcom/amazon/dcp/ota/UpdateState;

    move-result-object p1

    sget-object v0, Lcom/amazon/dcp/ota/UpdateState;->Pending:Lcom/amazon/dcp/ota/UpdateState;

    if-ne p1, v0, :cond_0

    .line 236
    iget-object p1, p0, Lcom/amazon/dcp/ota/Update;->mRemoteUri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/amazon/dcp/ota/Update;->setLocalUri(Landroid/net/Uri;)V

    .line 238
    sget-object p1, Lcom/amazon/dcp/ota/UpdateState;->Downloaded:Lcom/amazon/dcp/ota/UpdateState;

    invoke-virtual {p0, p1}, Lcom/amazon/dcp/ota/Update;->setState(Lcom/amazon/dcp/ota/UpdateState;)V

    :cond_0
    return-void
.end method

.method public setState(Lcom/amazon/dcp/ota/UpdateState;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/amazon/dcp/ota/Update;->mState:Lcom/amazon/dcp/ota/UpdateState;

    return-void
.end method

.method public shouldForceInstall()Z
    .locals 1

    .line 308
    iget-boolean v0, p0, Lcom/amazon/dcp/ota/Update;->mForceInstall:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 483
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->isValid()Z

    move-result p2

    const-class v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Can not parcel an invalid update"

    invoke-static {p2, v0, v3, v2}, Lcom/amazon/dcp/framework/Checks;->checkTrue(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x7

    .line 485
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getUpdateType()Lcom/amazon/dcp/ota/UpdateType;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 487
    iget-wide v2, p0, Lcom/amazon/dcp/ota/Update;->mId:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 488
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getState()Lcom/amazon/dcp/ota/UpdateState;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 489
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getFailureReason()Lcom/amazon/dcp/ota/OTAFailure;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 490
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getInstallOrder()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getPackageVersionCode()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getPackageVersionName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getReleaseNotes()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getRemoteUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 496
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getRemoteFileSize()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 497
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getBytesDownloaded()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 498
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getDownloadProgress()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 499
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->shouldForceInstall()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getNetworkType()Lcom/amazon/dcp/ota/NetworkType;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 501
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/Update;->getInstallSchedulerStartTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
