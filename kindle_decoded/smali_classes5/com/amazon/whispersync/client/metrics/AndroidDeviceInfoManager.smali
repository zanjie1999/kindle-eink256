.class public Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;
.super Ljava/lang/Object;
.source "AndroidDeviceInfoManager.java"

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/DeviceInfoManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "Metrics.AndroidDeviceInfoManager"

.field protected static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field protected final mDeviceUtil:Lcom/amazon/whispersync/device/utils/DeviceUtil;

.field protected final mMetricsDeviceInfo:Lcom/amazon/whispersync/client/metrics/MetricsDeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    invoke-direct {v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/device/utils/DeviceUtil;)V
    .locals 8

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 56
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/whispersync/device/utils/DeviceUtil;

    .line 58
    new-instance p1, Lcom/amazon/whispersync/client/metrics/MetricsDeviceInfo;

    invoke-direct {p1}, Lcom/amazon/whispersync/client/metrics/MetricsDeviceInfo;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->mMetricsDeviceInfo:Lcom/amazon/whispersync/client/metrics/MetricsDeviceInfo;

    .line 59
    sget-object p1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string/jumbo v0, "softwareVersion"

    invoke-direct {p0, v0, p1}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object p1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "hardware"

    invoke-direct {p0, v1, p1}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "buildType"

    invoke-direct {p0, v2, p1}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v3, "platform"

    invoke-direct {p0, v3, p1}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "model"

    invoke-direct {p0, v4, p1}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object p1, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->mMetricsDeviceInfo:Lcom/amazon/whispersync/client/metrics/MetricsDeviceInfo;

    invoke-virtual {v7, v0}, Lcom/amazon/whispersync/client/metrics/MetricsDeviceInfo;->getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const/4 v0, 0x3

    iget-object v6, p0, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->mMetricsDeviceInfo:Lcom/amazon/whispersync/client/metrics/MetricsDeviceInfo;

    invoke-virtual {v6, v1}, Lcom/amazon/whispersync/client/metrics/MetricsDeviceInfo;->getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x4

    aput-object v2, v5, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->mMetricsDeviceInfo:Lcom/amazon/whispersync/client/metrics/MetricsDeviceInfo;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/client/metrics/MetricsDeviceInfo;->getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x6

    aput-object v3, v5, v0

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->mMetricsDeviceInfo:Lcom/amazon/whispersync/client/metrics/MetricsDeviceInfo;

    invoke-virtual {v1, v3}, Lcom/amazon/whispersync/client/metrics/MetricsDeviceInfo;->getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/16 v0, 0x8

    aput-object v4, v5, v0

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->mMetricsDeviceInfo:Lcom/amazon/whispersync/client/metrics/MetricsDeviceInfo;

    invoke-virtual {v1, v4}, Lcom/amazon/whispersync/client/metrics/MetricsDeviceInfo;->getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v0, "Metrics.AndroidDeviceInfoManager"

    const-string v1, "deviceInfo"

    invoke-virtual {p1, v0, v1, v5}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Device Util must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/amazon/whispersync/device/utils/DeviceUtil;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/device/utils/DeviceUtil;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;-><init>(Lcom/amazon/whispersync/device/utils/DeviceUtil;)V

    if-eqz p2, :cond_1

    .line 85
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v1, v2

    const-string p2, "Metrics.AndroidDeviceInfoManager"

    const-string v2, "extraInfo"

    invoke-virtual {v0, p2, v2, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    .line 83
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Extra info must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 93
    sget-object p1, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Metrics.AndroidDeviceInfoManager"

    const-string v1, "Not adding key-value to metrics device info as key is null"

    invoke-virtual {p1, v0, v1, p2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->mMetricsDeviceInfo:Lcom/amazon/whispersync/client/metrics/MetricsDeviceInfo;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/client/metrics/MetricsDeviceInfo;->addDeviceInfoData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getCountryOfResidence()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/whispersync/device/utils/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/whispersync/device/utils/DeviceUtil;->fetchCountryOfResidence()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceLanguage()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/whispersync/device/utils/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/whispersync/device/utils/DeviceUtil;->fetchDeviceLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceMode()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/whispersync/device/utils/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/whispersync/device/utils/DeviceUtil;->fetchDeviceMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferredMarketplace()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/whispersync/device/utils/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/whispersync/device/utils/DeviceUtil;->fetchPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRsmGroup()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/whispersync/device/utils/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/whispersync/device/utils/DeviceUtil;->fetchRsmGroupName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCustomerID()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/whispersync/device/utils/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/whispersync/device/utils/DeviceUtil;->fetchCustomerID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/amazon/whispersync/client/metrics/MetricsDeviceInfo;
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceId"

    invoke-direct {p0, v1, v0}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceType"

    invoke-direct {p0, v1, v0}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->getCountryOfResidence()Ljava/lang/String;

    move-result-object v0

    const-string v1, "countryOfResidence"

    invoke-direct {p0, v1, v0}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketplaceID"

    invoke-direct {p0, v1, v0}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceLanguage"

    invoke-direct {p0, v1, v0}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->getDeviceMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceMode"

    invoke-direct {p0, v1, v0}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->getRsmGroup()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "remoteSettingsGroup"

    invoke-direct {p0, v1, v0}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->getSessionID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Session"

    invoke-direct {p0, v1, v0}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->getCustomerID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomerId"

    invoke-direct {p0, v1, v0}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTP_USER_AGENT"

    invoke-direct {p0, v1, v0}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "REMOTE_ADDR"

    invoke-direct {p0, v1, v0}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->mMetricsDeviceInfo:Lcom/amazon/whispersync/client/metrics/MetricsDeviceInfo;

    return-object v0
.end method

.method protected getDeviceSerialNumber()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/whispersync/device/utils/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/whispersync/device/utils/DeviceUtil;->fetchDeviceSerialNumberOrAnonymous()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDeviceType()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/whispersync/device/utils/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/whispersync/device/utils/DeviceUtil;->fetchDeviceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/whispersync/device/utils/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/whispersync/device/utils/DeviceUtil;->fetchRemoteIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/whispersync/device/utils/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/whispersync/device/utils/DeviceUtil;->fetchSessionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/whispersync/device/utils/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/whispersync/device/utils/DeviceUtil;->fetchUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
