.class public final Lcom/amazon/whispersync/dcp/provider/PendingUpdatesContract;
.super Ljava/lang/Object;
.source "PendingUpdatesContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/provider/PendingUpdatesContract$Updates;,
        Lcom/amazon/whispersync/dcp/provider/PendingUpdatesContract$UpdateManifests;,
        Lcom/amazon/whispersync/dcp/provider/PendingUpdatesContract$DownloadManifests;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.amazon.whispersync.dcp.ota.pendingupdates.internal"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final ID_NAME:Ljava/lang/String; = "_id"

.field private static final MIME_DELIMITER:Ljava/lang/String; = "/"

.field public static final PERMISSION_QUERY_PENDING_UPDATES:Ljava/lang/String; = "com.amazon.whispersync.dcp.ota.permission.QUERY_PENDING_UPDATES"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.amazon.dcp.ota.pendingupdates.internal"

    .line 11
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/provider/PendingUpdatesContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
