.class public final Lcom/amazon/whispersync/dcp/provider/PendingUpdatesContract$Updates;
.super Ljava/lang/Object;
.source "PendingUpdatesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/provider/PendingUpdatesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Updates"
.end annotation


# static fields
.field public static final ALLOW_SILENT_DOWNLOAD_OVER_WAN:Ljava/lang/String; = "AllowSilentDownloadOverWan"

.field public static final BINARY_TYPE:Ljava/lang/String; = "BinaryType"

.field public static final BYTES_DOWNLOADED:Ljava/lang/String; = "BytesDownloaded"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.amazon.dcp.ota.update"

.field public static final CONTENT_MIME_SUBTYPE:Ljava/lang/String; = "vnd.amazon.dcp.ota.update"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.amazon.dcp.ota.update"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DOWNLOAD_NETWORK_TYPE:Ljava/lang/String; = "DownloadNetworkType"

.field public static final DOWNLOAD_PROGRESS:Ljava/lang/String; = "DownloadProgress"

.field public static final FAILURE_REASON:Ljava/lang/String; = "FailureReason"

.field public static final FILE_SIZE:Ljava/lang/String; = "FileSize"

.field public static final FORCE_INSTALL:Ljava/lang/String; = "ForceInstall"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final INSTALL_ORDER:Ljava/lang/String; = "InstallOrder"

.field public static final INSTALL_SCHEDULER_START_TIME:Ljava/lang/String; = "InstallSchedulerStartTime"

.field public static final LOCAL_PATH:Ljava/lang/String; = "LocalPath"

.field public static final LOCAL_URI:Ljava/lang/String; = "LocalURI"

.field public static final MANIFEST_ID:Ljava/lang/String; = "ManifestID"

.field public static final NETWORK_TYPE_LAN:I = 0x1

.field public static final NETWORK_TYPE_ROAMING:I = 0x3

.field public static final NETWORK_TYPE_WAN:I = 0x2

.field public static final PACKAGE_NAME:Ljava/lang/String; = "PackageName"

.field public static final PACKAGE_VERSION_CODE:Ljava/lang/String; = "PackageVersionCode"

.field public static final PACKAGE_VERSION_NAME:Ljava/lang/String; = "PackageVersionName"

.field public static final PAUSE_WHEN_METERED:Ljava/lang/String; = "PauseWhenMetered"

.field public static final RELEASE_NOTES:Ljava/lang/String; = "ReleaseNotes"

.field public static final REMOTE_URI:Ljava/lang/String; = "RemoteURI"

.field public static final START_DATE:Ljava/lang/String; = "StartDate"

.field public static final STATE:Ljava/lang/String; = "State"

.field public static final STATE_COMPLETE:I = 0x5

.field public static final STATE_DEDUPED:I = 0x7

.field public static final STATE_DOWNLOADED:I = 0x2

.field public static final STATE_DOWNLOADING:I = 0x1

.field public static final STATE_DOWNLOADPAUSED:I = 0x8

.field public static final STATE_FAILED:I = 0x6

.field public static final STATE_INSTALLED:I = 0x4

.field public static final STATE_INSTALLING:I = 0x3

.field public static final STATE_PENDING:I = 0x0

.field public static final STATE_QUEUED_FOR_WIFI:I = 0x9

.field public static final TYPE_APP:I = 0x1

.field public static final TYPE_OS:I = 0x0

.field public static final UPDATE_TYPE:Ljava/lang/String; = "UpdateType"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    sget-object v0, Lcom/amazon/whispersync/dcp/provider/PendingUpdatesContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "updates"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/provider/PendingUpdatesContract$Updates;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
