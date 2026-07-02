.class public Lcom/amazon/device/utils/thirdparty/NetworkManager;
.super Ljava/lang/Object;
.source "NetworkManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkManager"

.field private static final TYPE_WAN_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sNetworkManager:Lcom/amazon/device/utils/thirdparty/NetworkManager;


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mNetworkBroadcastReceiver:Lcom/amazon/device/utils/thirdparty/NetworkBroadcastReceiver;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x5

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v1, v5

    .line 36
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    .line 31
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/utils/thirdparty/NetworkManager;->TYPE_WAN_LIST:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/amazon/device/utils/thirdparty/NetworkManager;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/amazon/device/utils/thirdparty/NetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string/jumbo v0, "wifi"

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/amazon/device/utils/thirdparty/NetworkManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo v0, "power"

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/amazon/device/utils/thirdparty/NetworkManager;->mPowerManager:Landroid/os/PowerManager;

    .line 51
    new-instance p1, Lcom/amazon/device/utils/thirdparty/NetworkBroadcastReceiver;

    iget-object v0, p0, Lcom/amazon/device/utils/thirdparty/NetworkManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amazon/device/utils/thirdparty/NetworkBroadcastReceiver;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/device/utils/thirdparty/NetworkManager;->mNetworkBroadcastReceiver:Lcom/amazon/device/utils/thirdparty/NetworkBroadcastReceiver;

    return-void
.end method

.method public static declared-synchronized instance(Landroid/content/Context;)Lcom/amazon/device/utils/thirdparty/NetworkManager;
    .locals 2

    const-class v0, Lcom/amazon/device/utils/thirdparty/NetworkManager;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/amazon/device/utils/thirdparty/NetworkManager;->sNetworkManager:Lcom/amazon/device/utils/thirdparty/NetworkManager;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/amazon/device/utils/thirdparty/NetworkManager;

    invoke-direct {v1, p0}, Lcom/amazon/device/utils/thirdparty/NetworkManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/device/utils/thirdparty/NetworkManager;->sNetworkManager:Lcom/amazon/device/utils/thirdparty/NetworkManager;

    .line 69
    :cond_0
    sget-object p0, Lcom/amazon/device/utils/thirdparty/NetworkManager;->sNetworkManager:Lcom/amazon/device/utils/thirdparty/NetworkManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private isConnectedToType(Landroid/net/NetworkInfo;Ljava/lang/Integer;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public acquireWakeLock(Landroid/os/PowerManager$WakeLock;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 173
    :try_start_0
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "NetworkManager"

    const-string v1, "acquireWifiLock : SecurityException caught while trying to acquire wake lock: "

    .line 175
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public acquireWakeLock(Landroid/os/PowerManager$WakeLock;J)V
    .locals 3

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 187
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "NetworkManager"

    const-string p3, "acquireWifiLock : SecurityException caught while trying to acquire wake lock with timeout: "

    .line 189
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->acquireWakeLock(Landroid/os/PowerManager$WakeLock;)V

    :goto_0
    return-void
.end method

.method public acquireWifiLock(Landroid/net/wifi/WifiManager$WifiLock;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 139
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "NetworkManager"

    const-string v1, "acquireWifiLock : SecurityException caught while trying to acquire wifi lock: "

    .line 141
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public createWakeLock(Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/amazon/device/utils/thirdparty/NetworkManager;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 161
    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/amazon/device/utils/thirdparty/NetworkManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 123
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    const/4 v0, 0x3

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/utils/thirdparty/NetworkManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0, p1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public isEthernetConnected()Z
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/amazon/device/utils/thirdparty/NetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 91
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_0

    const/16 v1, 0x9

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->isConnectedToType(Landroid/net/NetworkInfo;Ljava/lang/Integer;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isWanConnected()Z
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/amazon/device/utils/thirdparty/NetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 103
    sget-object v1, Lcom/amazon/device/utils/thirdparty/NetworkManager;->TYPE_WAN_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 104
    invoke-direct {p0, v0, v2}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->isConnectedToType(Landroid/net/NetworkInfo;Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isWifiConnected()Z
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/amazon/device/utils/thirdparty/NetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->isConnectedToType(Landroid/net/NetworkInfo;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public releaseWifiLock(Landroid/net/wifi/WifiManager$WifiLock;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_0
    return-void
.end method
