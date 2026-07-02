.class public Lcom/amazon/kedu/ftue/assets/DownloadedAssetBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadedAssetBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method getAssetManager()Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;
    .locals 1

    .line 60
    invoke-static {}, Lcom/amazon/kedu/ftue/Plugin;->getAssetManager()Lcom/amazon/kedu/ftue/assets/IAssetManager;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;

    return-object v0
.end method

.method public isManifestOutOfSync(Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->getAssetManifest()Lcom/amazon/kedu/ftue/assets/AssetManifest;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->getLatestManifest()Lcom/amazon/kedu/ftue/assets/AssetManifest;

    move-result-object v0

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {v0}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result p1

    invoke-virtual {v1}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result v0

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p2, "connectivity"

    .line 24
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 25
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetBroadcastReceiver;->getAssetManager()Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;

    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetBroadcastReceiver;->isManifestOutOfSync(Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 35
    sget-object p2, Lcom/amazon/kedu/ftue/assets/DownloadedAssetBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v0, "Reconnected"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->synchronizeLatestManifest()V

    :cond_1
    return-void
.end method
