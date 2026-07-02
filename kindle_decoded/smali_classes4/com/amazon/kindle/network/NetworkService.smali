.class public Lcom/amazon/kindle/network/NetworkService;
.super Ljava/lang/Object;
.source "NetworkService.java"

# interfaces
.implements Lcom/amazon/kindle/network/INetworkService;


# static fields
.field public static final ANY_CONNECTION_TYPE:Ljava/lang/Integer;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private lockManager:Lcom/amazon/kindle/network/IWifiLockManager;

.field private maxBytes:J

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/kindle/network/NetworkService;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/network/NetworkService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLandroid/content/Context;Lcom/amazon/kindle/network/IWifiLockManager;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 34
    iput-wide v0, p0, Lcom/amazon/kindle/network/NetworkService;->maxBytes:J

    .line 54
    iput-wide p1, p0, Lcom/amazon/kindle/network/NetworkService;->maxBytes:J

    .line 55
    iput-object p4, p0, Lcom/amazon/kindle/network/NetworkService;->lockManager:Lcom/amazon/kindle/network/IWifiLockManager;

    .line 56
    iput-object p3, p0, Lcom/amazon/kindle/network/NetworkService;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/network/IWifiLockManager;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 46
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/amazon/kindle/network/NetworkService;-><init>(JLandroid/content/Context;Lcom/amazon/kindle/network/IWifiLockManager;)V

    return-void
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/network/NetworkService;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/network/NetworkService;->context:Landroid/content/Context;

    const-string v1, "phone"

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/amazon/kindle/network/NetworkService;->telephonyManager:Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    sget-object v0, Lcom/amazon/kindle/network/NetworkService;->TAG:Ljava/lang/String;

    const-string v1, "WirelessUtil >>> Unable to get TelephonyManager service"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/network/NetworkService;->telephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static hasNetworkConnectivity(Landroid/content/Context;Ljava/lang/Integer;Z)Z
    .locals 1

    const-string v0, "connectivity"

    .line 139
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    .line 144
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    return v0

    :cond_2
    if-eqz p2, :cond_3

    .line 149
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    :goto_1
    return p0
.end method


# virtual methods
.method public bridge synthetic acquireLock()Lcom/amazon/kindle/krx/network/IWifiLockManager$IWifiLock;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/amazon/kindle/network/NetworkService;->acquireLock()Lcom/amazon/kindle/network/IWifiLockManager$IWifiLock;

    move-result-object v0

    return-object v0
.end method

.method public acquireLock()Lcom/amazon/kindle/network/IWifiLockManager$IWifiLock;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/kindle/network/NetworkService;->lockManager:Lcom/amazon/kindle/network/IWifiLockManager;

    invoke-interface {v0}, Lcom/amazon/kindle/network/IWifiLockManager;->getNewWifiLock()Lcom/amazon/kindle/network/IWifiLockManager$IWifiLock;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/amazon/kindle/network/NetworkService;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 170
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkProperties()Lcom/amazon/kindle/network/NetworkProperties;
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/amazon/kindle/network/NetworkService;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 156
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 157
    sget-object v1, Lcom/amazon/kindle/network/NetworkProperties;->FACTORY:Lcom/amazon/kindle/network/NetworkProperties$FACTORY;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/network/NetworkProperties$FACTORY;->buildM(Landroid/net/ConnectivityManager;)Lcom/amazon/kindle/network/NetworkProperties;

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    sget-object v1, Lcom/amazon/kindle/network/NetworkProperties;->FACTORY:Lcom/amazon/kindle/network/NetworkProperties$FACTORY;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/network/NetworkProperties$FACTORY;->build(Landroid/net/ConnectivityManager;)Lcom/amazon/kindle/network/NetworkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getWANType()Ljava/lang/String;
    .locals 2

    .line 174
    invoke-direct {p0}, Lcom/amazon/kindle/network/NetworkService;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const-string v1, "UNKNOWN"

    if-nez v0, :cond_0

    return-object v1

    .line 179
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "NEW_NETWORK_UNDEFINED"

    return-object v0

    :pswitch_0
    const-string v0, "4G"

    return-object v0

    :pswitch_1
    const-string v0, "3G"

    return-object v0

    :pswitch_2
    const-string v0, "2G"

    return-object v0

    :pswitch_3
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public hasNetworkConnectivity()Z
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/network/NetworkService;->context:Landroid/content/Context;

    sget-object v1, Lcom/amazon/kindle/network/NetworkService;->ANY_CONNECTION_TYPE:Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/network/NetworkService;->hasNetworkConnectivity(Landroid/content/Context;Ljava/lang/Integer;Z)Z

    move-result v0

    return v0
.end method

.method public isDataConnected()Z
    .locals 3

    .line 90
    invoke-direct {p0}, Lcom/amazon/kindle/network/NetworkService;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/amazon/kindle/network/NetworkService;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isDownloadSizeLimited(J)Z
    .locals 6

    .line 105
    iget-wide v0, p0, Lcom/amazon/kindle/network/NetworkService;->maxBytes:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-ltz v5, :cond_3

    invoke-virtual {p0}, Lcom/amazon/kindle/network/NetworkService;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/network/NetworkService;->isWanConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 108
    iget-wide v3, p0, Lcom/amazon/kindle/network/NetworkService;->maxBytes:J

    cmp-long v0, p1, v3

    if-ltz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 110
    :cond_2
    sget-object p1, Lcom/amazon/kindle/network/NetworkService;->TAG:Ljava/lang/String;

    const-string p2, "No network connection to download the content"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method public isTransportExcluded(Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;)Z
    .locals 3

    .line 116
    invoke-virtual {p0}, Lcom/amazon/kindle/network/NetworkService;->isWifiConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/network/NetworkService;->isWanConnected()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 119
    sget-object v0, Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;->WAN:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 122
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    return v2
.end method

.method public isWanConnected()Z
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/amazon/kindle/network/NetworkService;->getActiveNetworkProperties()Lcom/amazon/kindle/network/NetworkProperties;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/amazon/kindle/network/NetworkProperties;->getTransportMethod()Lcom/amazon/kindle/network/TransportType;

    move-result-object v1

    instance-of v1, v1, Lcom/amazon/kindle/network/TransportType$Wan;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/network/NetworkProperties;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWifiConnected()Z
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/amazon/kindle/network/NetworkService;->getActiveNetworkProperties()Lcom/amazon/kindle/network/NetworkProperties;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/amazon/kindle/network/NetworkProperties;->getTransportMethod()Lcom/amazon/kindle/network/TransportType;

    move-result-object v1

    instance-of v1, v1, Lcom/amazon/kindle/network/TransportType$WiFi;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/network/NetworkProperties;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
