.class public Lcom/amazon/device/utils/det/NetworkManager;
.super Ljava/lang/Object;
.source "NetworkManager.java"


# static fields
.field private static final TYPE_WAN_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sNetworkManager:Lcom/amazon/device/utils/det/NetworkManager;


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mNetworkBroadcastReceiver:Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x5

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    .line 33
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v1, v5

    .line 34
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    .line 29
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/utils/det/NetworkManager;->TYPE_WAN_LIST:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/amazon/device/utils/det/NetworkManager;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/amazon/device/utils/det/NetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/amazon/device/utils/det/NetworkManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo v0, "power"

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/amazon/device/utils/det/NetworkManager;->mPowerManager:Landroid/os/PowerManager;

    .line 49
    new-instance p1, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;

    iget-object v0, p0, Lcom/amazon/device/utils/det/NetworkManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/device/utils/det/NetworkManager;->mNetworkBroadcastReceiver:Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;

    return-void
.end method

.method public static declared-synchronized instance(Landroid/content/Context;)Lcom/amazon/device/utils/det/NetworkManager;
    .locals 2

    const-class v0, Lcom/amazon/device/utils/det/NetworkManager;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/amazon/device/utils/det/NetworkManager;->sNetworkManager:Lcom/amazon/device/utils/det/NetworkManager;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lcom/amazon/device/utils/det/NetworkManager;

    invoke-direct {v1, p0}, Lcom/amazon/device/utils/det/NetworkManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/device/utils/det/NetworkManager;->sNetworkManager:Lcom/amazon/device/utils/det/NetworkManager;

    .line 66
    :cond_0
    sget-object p0, Lcom/amazon/device/utils/det/NetworkManager;->sNetworkManager:Lcom/amazon/device/utils/det/NetworkManager;
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

    .line 175
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
.method public isConnected()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/device/utils/det/NetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEthernetConnected()Z
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/amazon/device/utils/det/NetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/16 v1, 0x9

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/utils/det/NetworkManager;->isConnectedToType(Landroid/net/NetworkInfo;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public isWanConnected()Z
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/amazon/device/utils/det/NetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 94
    sget-object v1, Lcom/amazon/device/utils/det/NetworkManager;->TYPE_WAN_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 95
    invoke-direct {p0, v0, v2}, Lcom/amazon/device/utils/det/NetworkManager;->isConnectedToType(Landroid/net/NetworkInfo;Ljava/lang/Integer;)Z

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

    .line 82
    iget-object v0, p0, Lcom/amazon/device/utils/det/NetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/utils/det/NetworkManager;->isConnectedToType(Landroid/net/NetworkInfo;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method
