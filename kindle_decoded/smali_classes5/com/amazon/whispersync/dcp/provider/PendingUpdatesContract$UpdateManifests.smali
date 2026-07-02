.class public final Lcom/amazon/whispersync/dcp/provider/PendingUpdatesContract$UpdateManifests;
.super Ljava/lang/Object;
.source "PendingUpdatesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/provider/PendingUpdatesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateManifests"
.end annotation


# static fields
.field public static final CHECK_REASON:Ljava/lang/String; = "CheckReason"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.amazon.dcp.ota.updatemanifest"

.field public static final CONTENT_MIME_SUBTYPE:Ljava/lang/String; = "vnd.amazon.dcp.ota.updatemanifest"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.amazon.dcp.ota.updatemanifest"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MANIFEST_IDENTIFIER:Ljava/lang/String; = "ManifestIdentifier"

.field public static final PRIORITY:Ljava/lang/String; = "Priority"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    sget-object v0, Lcom/amazon/whispersync/dcp/provider/PendingUpdatesContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "updatemanifests"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/provider/PendingUpdatesContract$UpdateManifests;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
