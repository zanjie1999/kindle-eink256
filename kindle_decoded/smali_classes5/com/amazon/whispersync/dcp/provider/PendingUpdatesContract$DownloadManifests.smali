.class public final Lcom/amazon/whispersync/dcp/provider/PendingUpdatesContract$DownloadManifests;
.super Ljava/lang/Object;
.source "PendingUpdatesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/provider/PendingUpdatesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadManifests"
.end annotation


# static fields
.field public static final CONTENT_MIME_SUBTYPE:Ljava/lang/String; = "vnd.amazon.dcp.ota.downloadmanifest"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MANIFEST_CONTENT:Ljava/lang/String; = "ManifestContent"

.field public static final MANIFEST_IDENTIFIER:Ljava/lang/String; = "ManifestIdentifier"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    sget-object v0, Lcom/amazon/whispersync/dcp/provider/PendingUpdatesContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "downloadmanifests"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/provider/PendingUpdatesContract$DownloadManifests;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
