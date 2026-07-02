.class public final Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumerKt;
.super Ljava/lang/Object;
.source "AssetRequestDownloadManagerResumer.kt"


# static fields
.field private static final SHARED_PREFS_KEY:Ljava/lang/String; = "BookIDs"

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "AssetRequestDownloadManager"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumerKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumerKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
