.class public final Lcom/amazon/whispersync/dcp/framework/MediaScannerHelper;
.super Ljava/lang/Object;
.source "MediaScannerHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs scanFiles(Landroid/content/Context;[Ljava/io/File;)V
    .locals 3

    .line 18
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 20
    invoke-static {p0, v2}, Lcom/amazon/whispersync/dcp/framework/MediaScannerHelper;->sendMediaScannerBroadcast(Landroid/content/Context;Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static sendMediaScannerBroadcast(Landroid/content/Context;Ljava/io/File;)V
    .locals 2

    .line 29
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
