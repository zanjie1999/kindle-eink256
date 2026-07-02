.class public final Lcom/amazon/whispersync/dcp/ota/Update;
.super Ljava/lang/Object;
.source "Update.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whispersync/dcp/ota/Update;",
            ">;"
        }
    .end annotation
.end field

.field private static final DUMMY_URI:Ljava/lang/String; = "content://authority.ignored"

.field private static final FRIENDLY_PATTERN:Ljava/util/regex/Pattern;

.field private static final VERSION:I = 0xb


# instance fields
.field private mAllowSilentDownloadOverWan:Z

.field private mBinaryType:Ljava/lang/String;

.field private mBytesDownloaded:J

.field private mDownloadID:J

.field private mDownloadProgress:F

.field private mFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field private mForceInstall:Z

.field private mId:J

.field private mInstallOrder:Ljava/lang/Integer;

.field private mInstallSchedulerStartTimeMillis:J

.field private mNetworkType:Lcom/amazon/whispersync/dcp/ota/NetworkType;

.field private mPackageName:Ljava/lang/String;

.field private mPackageVersionCode:Ljava/lang/Integer;

.field private mPackageVersionName:Ljava/lang/String;

.field private mPauseWhenMetered:Z

.field private mReleaseNotes:Ljava/lang/String;

.field private mRemoteFileSize:J

.field private mRemoteUri:Landroid/net/Uri;

.field private mStartDateMillis:J

.field private mState:Lcom/amazon/whispersync/dcp/ota/UpdateState;

.field private final mType:Lcom/amazon/whispersync/dcp/ota/UpdateType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/Update$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/ota/Update$1;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/Update;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "[0-9].*"

    .line 38
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/Update;->FRIENDLY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/amazon/whispersync/dcp/ota/UpdateType;)V
    .locals 5

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 49
    iput-wide v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mId:J

    const-string v2, ""

    .line 50
    iput-object v2, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mPackageVersionName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 51
    iput-object v2, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mReleaseNotes:Ljava/lang/String;

    const/4 v2, 0x0

    .line 52
    iput-boolean v2, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mForceInstall:Z

    .line 53
    iput-boolean v2, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mAllowSilentDownloadOverWan:Z

    .line 55
    sget-object v3, Lcom/amazon/whispersync/dcp/ota/NetworkType;->LAN:Lcom/amazon/whispersync/dcp/ota/NetworkType;

    iput-object v3, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mNetworkType:Lcom/amazon/whispersync/dcp/ota/NetworkType;

    .line 57
    sget-object v3, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Pending:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    iput-object v3, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mState:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    .line 58
    sget-object v3, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->None:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    iput-object v3, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 59
    iput-wide v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mDownloadID:J

    const-wide/16 v3, 0x0

    .line 60
    iput-wide v3, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mRemoteFileSize:J

    .line 61
    iput-wide v3, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mBytesDownloaded:J

    const/4 v3, 0x0

    .line 62
    iput v3, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mDownloadProgress:F

    .line 64
    iput-wide v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mInstallSchedulerStartTimeMillis:J

    .line 72
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateType;->Unknown:Lcom/amazon/whispersync/dcp/ota/UpdateType;

    const-class v1, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Unknown is not an acceptable update type"

    invoke-static {v0, p1, v1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mType:Lcom/amazon/whispersync/dcp/ota/UpdateType;

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lcom/amazon/whispersync/dcp/ota/Update;
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->fromParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/dcp/ota/Update;

    move-result-object p0

    return-object p0
.end method

.method static fromCursorRow(Landroid/database/Cursor;)Lcom/amazon/whispersync/dcp/ota/Update;
    .locals 6

    .line 443
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 444
    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 446
    new-instance p0, Lcom/amazon/whispersync/dcp/ota/Update;

    const-string v1, "UpdateType"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/ota/UpdateType;->fromValue(I)Lcom/amazon/whispersync/dcp/ota/UpdateType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;-><init>(Lcom/amazon/whispersync/dcp/ota/UpdateType;)V

    const-string v1, "_id"

    .line 447
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/amazon/whispersync/dcp/ota/Update;->setId(J)V

    const-string v1, "State"

    .line 448
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/ota/UpdateState;->fromValue(I)Lcom/amazon/whispersync/dcp/ota/UpdateState;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;->setState(Lcom/amazon/whispersync/dcp/ota/UpdateState;)V

    const-string v1, "FailureReason"

    .line 449
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->fromValue(I)Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;->setFailureReason(Lcom/amazon/whispersync/dcp/ota/OTAFailure;)V

    const-string v1, "InstallOrder"

    .line 450
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;->setInstallOrder(I)V

    const-string v1, "PackageName"

    .line 451
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;->setPackageName(Ljava/lang/String;)V

    const-string v1, "PackageVersionCode"

    .line 452
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;->setPackageVersionCode(I)V

    const-string v1, "PackageVersionName"

    .line 453
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;->setPackageVersionName(Ljava/lang/String;)V

    const-string v1, "RemoteURI"

    .line 454
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;->setRemoteUri(Landroid/net/Uri;)V

    const-string v1, "FileSize"

    .line 456
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 459
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/amazon/whispersync/dcp/ota/Update;->setRemoteFileSize(J)V

    :cond_0
    const-string v1, "BytesDownloaded"

    .line 462
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/amazon/whispersync/dcp/ota/Update;->setBytesDownloaded(J)V

    const-string v1, "DownloadProgress"

    .line 463
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;->setDownloadProgress(F)V

    const-string v1, "DownloadNetworkType"

    .line 464
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/ota/NetworkType;->fromValue(I)Lcom/amazon/whispersync/dcp/ota/NetworkType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;->setNetworkType(Lcom/amazon/whispersync/dcp/ota/NetworkType;)V

    const-string v1, "ForceInstall"

    .line 469
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;->setForceInstall(Z)V

    const-string v1, "ReleaseNotes"

    .line 471
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 474
    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;->setReleaseNotes(Ljava/lang/String;)V

    :cond_2
    const-string v1, "LocalURI"

    .line 477
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-wide/16 v4, -0x1

    goto :goto_1

    .line 478
    :cond_3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 479
    :goto_1
    invoke-virtual {p0, v4, v5}, Lcom/amazon/whispersync/dcp/ota/Update;->setDownloadID(J)V

    const-string v1, "InstallSchedulerStartTime"

    .line 480
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/amazon/whispersync/dcp/ota/Update;->setInstallSchedulerStartTime(J)V

    const-string v1, "StartDate"

    .line 481
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/amazon/whispersync/dcp/ota/Update;->setStartDateMillis(J)V

    const-string v1, "PauseWhenMetered"

    .line 482
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;->setPauseWhenMetered(Z)V

    const-string v1, "AllowSilentDownloadOverWan"

    .line 483
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-virtual {p0, v2}, Lcom/amazon/whispersync/dcp/ota/Update;->setAllowSilentDownloadOverWan(Z)V

    const-string v1, "BinaryType"

    .line 484
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/dcp/ota/Update;->setBinaryType(Ljava/lang/String;)V

    return-object p0
.end method

.method private static fromParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/dcp/ota/Update;
    .locals 7

    .line 606
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/16 v1, 0xb

    .line 607
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

    invoke-static {v1, v2, v3, v0, v4}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 612
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/Update;

    const-class v1, Lcom/amazon/whispersync/dcp/ota/UpdateType;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/dcp/ota/UpdateType;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;-><init>(Lcom/amazon/whispersync/dcp/ota/UpdateType;)V

    .line 613
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/amazon/whispersync/dcp/ota/Update;->mId:J

    .line 614
    const-class v1, Lcom/amazon/whispersync/dcp/ota/UpdateState;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/dcp/ota/UpdateState;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;->setState(Lcom/amazon/whispersync/dcp/ota/UpdateState;)V

    .line 615
    const-class v1, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;->setFailureReason(Lcom/amazon/whispersync/dcp/ota/OTAFailure;)V

    .line 616
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;->setInstallOrder(I)V

    .line 617
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;->setPackageName(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;->setPackageVersionCode(I)V

    .line 619
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;->setPackageVersionName(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 622
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 624
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;->setReleaseNotes(Ljava/lang/String;)V

    .line 627
    :cond_0
    const-class v1, Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;->setRemoteUri(Landroid/net/Uri;)V

    .line 628
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/ota/Update;->setRemoteFileSize(J)V

    .line 629
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/ota/Update;->setBytesDownloaded(J)V

    .line 630
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;->setDownloadProgress(F)V

    .line 631
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v6, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;->setForceInstall(Z)V

    .line 632
    const-class v1, Lcom/amazon/whispersync/dcp/ota/NetworkType;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/dcp/ota/NetworkType;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;->setNetworkType(Lcom/amazon/whispersync/dcp/ota/NetworkType;)V

    .line 633
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/ota/Update;->setInstallSchedulerStartTime(J)V

    .line 634
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/ota/Update;->setStartDateMillis(J)V

    .line 635
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v6, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;->setPauseWhenMetered(Z)V

    .line 636
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v6, :cond_3

    const/4 v5, 0x1

    :cond_3
    invoke-virtual {v0, v5}, Lcom/amazon/whispersync/dcp/ota/Update;->setAllowSilentDownloadOverWan(Z)V

    .line 637
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/ota/Update;->setBinaryType(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/ota/Update;->setDownloadID(J)V

    return-object v0
.end method

.method private varargs isAnyObjectNull([Ljava/lang/Object;)Z
    .locals 4

    .line 112
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

.method private setPauseWhenMetered(Z)V
    .locals 0

    .line 394
    iput-boolean p1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mPauseWhenMetered:Z

    return-void
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

    .line 524
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispersync/dcp/ota/Update;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 529
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 534
    :cond_2
    check-cast p1, Lcom/amazon/whispersync/dcp/ota/Update;

    .line 535
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getUpdateType()Lcom/amazon/whispersync/dcp/ota/UpdateType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/ota/Update;->getUpdateType()Lcom/amazon/whispersync/dcp/ota/UpdateType;

    move-result-object v3

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getInstallOrder()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/ota/Update;->getInstallOrder()I

    move-result v3

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/ota/Update;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getPackageVersionCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/ota/Update;->getPackageVersionCode()I

    move-result v3

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getPackageVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/ota/Update;->getPackageVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getRemoteUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/ota/Update;->getRemoteUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->shouldForceInstall()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/ota/Update;->shouldForceInstall()Z

    move-result v3

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getNetworkType()Lcom/amazon/whispersync/dcp/ota/NetworkType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/ota/Update;->getNetworkType()Lcom/amazon/whispersync/dcp/ota/NetworkType;

    move-result-object p1

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBinaryType()Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mBinaryType:Ljava/lang/String;

    return-object v0
.end method

.method public getBytesDownloaded()J
    .locals 2

    .line 289
    iget-wide v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mBytesDownloaded:J

    return-wide v0
.end method

.method public getDownloadID()J
    .locals 2

    .line 364
    iget-wide v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mDownloadID:J

    return-wide v0
.end method

.method public getDownloadProgress()F
    .locals 1

    .line 301
    iget v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mDownloadProgress:F

    return v0
.end method

.method public getFailureReason()Lcom/amazon/whispersync/dcp/ota/OTAFailure;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mId:J

    return-wide v0
.end method

.method public getInstallOrder()I
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mInstallOrder:Ljava/lang/Integer;

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "The install order has not been set"

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mInstallOrder:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getInstallSchedulerStartTime()J
    .locals 2

    .line 376
    iget-wide v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mInstallSchedulerStartTimeMillis:J

    return-wide v0
.end method

.method public getNetworkType()Lcom/amazon/whispersync/dcp/ota/NetworkType;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mNetworkType:Lcom/amazon/whispersync/dcp/ota/NetworkType;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mPackageName:Ljava/lang/String;

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "The package name has not been set"

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageVersionCode()I
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mPackageVersionCode:Ljava/lang/Integer;

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "The version code has not been set"

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mPackageVersionCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPackageVersionFriendlyName()Ljava/lang/String;
    .locals 2

    .line 236
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/Update;->FRIENDLY_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mPackageVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mPackageVersionName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find version in packageVersionName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mPackageVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Update"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mPackageVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageVersionName()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mPackageVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getPauseWhenMetered()Z
    .locals 1

    .line 400
    iget-boolean v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mPauseWhenMetered:Z

    return v0
.end method

.method public getReleaseNotes()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mReleaseNotes:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteFileSize()J
    .locals 2

    .line 277
    iget-wide v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mRemoteFileSize:J

    return-wide v0
.end method

.method public getRemoteUri()Landroid/net/Uri;
    .locals 4

    .line 262
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mRemoteUri:Landroid/net/Uri;

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "The remote uri has not been set"

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mRemoteUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getStartDateMillis()J
    .locals 2

    .line 652
    iget-wide v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mStartDateMillis:J

    return-wide v0
.end method

.method public getState()Lcom/amazon/whispersync/dcp/ota/UpdateState;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mState:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    return-object v0
.end method

.method public getUpdateType()Lcom/amazon/whispersync/dcp/ota/UpdateType;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mType:Lcom/amazon/whispersync/dcp/ota/UpdateType;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 3

    .line 97
    sget-object v0, Lcom/amazon/whispersync/dcp/provider/PendingUpdatesContract$Updates;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 548
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x3af

    .line 556
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getUpdateType()Lcom/amazon/whispersync/dcp/ota/UpdateType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x29

    .line 557
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getInstallOrder()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x29

    .line 558
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x29

    .line 559
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getPackageVersionCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x29

    .line 560
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getPackageVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x29

    .line 561
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getRemoteUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x29

    .line 562
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->shouldForceInstall()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x29

    .line 563
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getNetworkType()Lcom/amazon/whispersync/dcp/ota/NetworkType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isDone()Z
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/whispersync/dcp/ota/UpdateState;

    .line 131
    sget-object v1, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Complete:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Deduped:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Failed:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/dcp/ota/Update;->isInState([Lcom/amazon/whispersync/dcp/ota/UpdateState;)Z

    move-result v0

    return v0
.end method

.method public varargs isInState([Lcom/amazon/whispersync/dcp/ota/UpdateState;)Z
    .locals 5

    .line 137
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 139
    iget-object v4, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mState:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    if-ne v3, v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isValid()Z
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mType:Lcom/amazon/whispersync/dcp/ota/UpdateType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mInstallOrder:Ljava/lang/Integer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mPackageVersionCode:Ljava/lang/Integer;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mRemoteUri:Landroid/net/Uri;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/ota/Update;->isAnyObjectNull([Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public setAllowSilentDownloadOverWan(Z)V
    .locals 0

    .line 335
    iput-boolean p1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mAllowSilentDownloadOverWan:Z

    return-void
.end method

.method public setBinaryType(Ljava/lang/String;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mBinaryType:Ljava/lang/String;

    return-void
.end method

.method public setBytesDownloaded(J)V
    .locals 0

    .line 283
    iput-wide p1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mBytesDownloaded:J

    return-void
.end method

.method public setDownloadID(J)V
    .locals 0

    .line 358
    iput-wide p1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mDownloadID:J

    return-void
.end method

.method public setDownloadProgress(F)V
    .locals 0

    .line 295
    iput p1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mDownloadProgress:F

    return-void
.end method

.method public setFailureReason(Lcom/amazon/whispersync/dcp/ota/OTAFailure;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    return-void
.end method

.method public setForceInstall(Z)V
    .locals 0

    .line 320
    iput-boolean p1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mForceInstall:Z

    return-void
.end method

.method public setId(J)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 83
    :goto_0
    const-class v2, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "id must be non-negative"

    invoke-static {v1, v2, v3, v0}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iput-wide p1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mId:J

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

    .line 175
    :goto_0
    const-class v2, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "The install order must be non-negative"

    invoke-static {v1, v2, v3, v0}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mInstallOrder:Ljava/lang/Integer;

    return-void
.end method

.method public setInstallSchedulerStartTime(J)V
    .locals 0

    .line 370
    iput-wide p1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mInstallSchedulerStartTimeMillis:J

    return-void
.end method

.method public setNetworkType(Lcom/amazon/whispersync/dcp/ota/NetworkType;)V
    .locals 4

    .line 341
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "The networkType may not be null"

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/NetworkType;->Unknown:Lcom/amazon/whispersync/dcp/ota/NetworkType;

    const-class v2, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "The networkType may not be Unknown"

    invoke-static {v0, p1, v2, v3, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mNetworkType:Lcom/amazon/whispersync/dcp/ota/NetworkType;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 4

    .line 191
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "The package name may not be null"

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "The package name may not empty"

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mPackageName:Ljava/lang/String;

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

    .line 207
    :goto_0
    const-class v2, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "The version code must be non-negative"

    invoke-static {v1, v2, v3, v0}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mPackageVersionCode:Ljava/lang/Integer;

    return-void
.end method

.method public setPackageVersionName(Ljava/lang/String;)V
    .locals 3

    .line 224
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "The version name may not be null"

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mPackageVersionName:Ljava/lang/String;

    return-void
.end method

.method public setReleaseNotes(Ljava/lang/String;)V
    .locals 3

    .line 307
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Release notes may not be null or empty"

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mReleaseNotes:Ljava/lang/String;

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

    .line 270
    :goto_0
    const-class v2, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "The size must be greater than or equal to zero"

    invoke-static {v1, v2, v3, v0}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkTrue(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    iput-wide p1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mRemoteFileSize:J

    return-void
.end method

.method public setRemoteUri(Landroid/net/Uri;)V
    .locals 5

    .line 251
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "The remote uri may not be null"

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file"

    const-string v3, "http"

    const-string v4, "https"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/whispersync/dcp/framework/StringUtils;->equalsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    const-class v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "The remote uri must use a file, http or https scheme, not %s"

    invoke-static {v0, v2, v1, v3}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkTrue(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mRemoteUri:Landroid/net/Uri;

    return-void
.end method

.method public setStartDateMillis(J)V
    .locals 0

    .line 646
    iput-wide p1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mStartDateMillis:J

    return-void
.end method

.method public setState(Lcom/amazon/whispersync/dcp/ota/UpdateState;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mState:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    return-void
.end method

.method public shouldAllowSilentDownloadOverWan()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mAllowSilentDownloadOverWan:Z

    return v0
.end method

.method public shouldForceInstall()Z
    .locals 1

    .line 325
    iget-boolean v0, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mForceInstall:Z

    return v0
.end method

.method toContentValues()Landroid/content/ContentValues;
    .locals 6

    .line 406
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 407
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getUpdateType()Lcom/amazon/whispersync/dcp/ota/UpdateType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/ota/UpdateType;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "UpdateType"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 408
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getState()Lcom/amazon/whispersync/dcp/ota/UpdateState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/ota/UpdateState;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "State"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 409
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getFailureReason()Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FailureReason"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 410
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getInstallOrder()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "InstallOrder"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 411
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getPackageVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PackageVersionCode"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 413
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getPackageVersionName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageVersionName"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getRemoteUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteURI"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getRemoteFileSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "FileSize"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 416
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getNetworkType()Lcom/amazon/whispersync/dcp/ota/NetworkType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/ota/NetworkType;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DownloadNetworkType"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 417
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->shouldForceInstall()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ForceInstall"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 418
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getReleaseNotes()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReleaseNotes"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "StartDate"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 427
    iget-wide v1, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mDownloadID:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://authority.ignored/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mDownloadID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "LocalURI"

    .line 431
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getInstallSchedulerStartTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "InstallSchedulerStartTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 434
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getPauseWhenMetered()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "PauseWhenMetered"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 435
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->shouldAllowSilentDownloadOverWan()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "AllowSilentDownloadOverWan"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 436
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getBinaryType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BinaryType"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[updateType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getUpdateType()Lcom/amazon/whispersync/dcp/ota/UpdateType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " installOrder:"

    .line 494
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getInstallOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " packageName:"

    .line 495
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " packageVersionCode:"

    .line 496
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getPackageVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " remoteUri:"

    .line 497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getRemoteUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " rowId:"

    .line 498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " packageVersionName:"

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getPackageVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " shouldForceInstall:"

    .line 500
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->shouldForceInstall()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " networkType:"

    .line 501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getNetworkType()Lcom/amazon/whispersync/dcp/ota/NetworkType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " updateState:"

    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getState()Lcom/amazon/whispersync/dcp/ota/UpdateState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " failureReason:"

    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getFailureReason()Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " remoteFileSize:"

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getRemoteFileSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytesDownloaded:"

    .line 505
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getBytesDownloaded()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " downloadProgress:"

    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getDownloadProgress()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " installSchedulerStartTime:"

    .line 507
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getInstallSchedulerStartTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " startDate:"

    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getStartDateMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " pauseWhenMetered:"

    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getPauseWhenMetered()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " allowSilentDownloadOverWan:"

    .line 510
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->shouldAllowSilentDownloadOverWan()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " binaryType:"

    .line 511
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getBinaryType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 578
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->isValid()Z

    move-result p2

    const-class v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Can not parcel an invalid update"

    invoke-static {p2, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkTrue(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p2, 0xb

    .line 580
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getUpdateType()Lcom/amazon/whispersync/dcp/ota/UpdateType;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 582
    iget-wide v2, p0, Lcom/amazon/whispersync/dcp/ota/Update;->mId:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 583
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getState()Lcom/amazon/whispersync/dcp/ota/UpdateState;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 584
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getFailureReason()Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 585
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getInstallOrder()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getPackageVersionCode()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getPackageVersionName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getReleaseNotes()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getRemoteUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 591
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getRemoteFileSize()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 592
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getBytesDownloaded()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 593
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getDownloadProgress()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 594
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->shouldForceInstall()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getNetworkType()Lcom/amazon/whispersync/dcp/ota/NetworkType;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 596
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getInstallSchedulerStartTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 597
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getStartDateMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 598
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getPauseWhenMetered()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->shouldAllowSilentDownloadOverWan()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getBinaryType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Update;->getDownloadID()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
