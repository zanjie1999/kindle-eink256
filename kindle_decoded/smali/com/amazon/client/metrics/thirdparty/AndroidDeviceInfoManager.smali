.class public Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;
.super Ljava/lang/Object;
.source "AndroidDeviceInfoManager.java"

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/DeviceInfoManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "Metrics.AndroidDeviceInfoManager"

.field protected static final log:Lcom/amazon/dp/logger/DPLogger;


# instance fields
.field protected final mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

.field protected final mMetricsDeviceInfo:Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/amazon/dp/logger/DPLogger;

    invoke-direct {v0}, Lcom/amazon/dp/logger/DPLogger;-><init>()V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->log:Lcom/amazon/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/utils/thirdparty/DeviceUtil;)V
    .locals 8

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 52
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    .line 54
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;

    invoke-direct {p1}, Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;-><init>()V

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mMetricsDeviceInfo:Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;

    .line 55
    sget-object p1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string/jumbo v0, "softwareVersion"

    invoke-virtual {p0, v0, p1}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object p1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "hardware"

    invoke-virtual {p0, v1, p1}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "buildType"

    invoke-virtual {p0, v2, p1}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v3, "platform"

    invoke-virtual {p0, v3, p1}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v4, "model"

    invoke-virtual {p0, v4, p1}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object p1, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->log:Lcom/amazon/dp/logger/DPLogger;

    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mMetricsDeviceInfo:Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;

    .line 62
    invoke-virtual {v7, v0}, Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;->getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const/4 v0, 0x3

    iget-object v6, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mMetricsDeviceInfo:Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;

    .line 63
    invoke-virtual {v6, v1}, Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;->getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x4

    aput-object v2, v5, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mMetricsDeviceInfo:Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;

    .line 64
    invoke-virtual {v1, v2}, Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;->getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x6

    aput-object v3, v5, v0

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mMetricsDeviceInfo:Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;

    .line 65
    invoke-virtual {v1, v3}, Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;->getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/16 v0, 0x8

    aput-object v4, v5, v0

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mMetricsDeviceInfo:Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;

    .line 66
    invoke-virtual {v1, v4}, Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;->getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v0, "Metrics.AndroidDeviceInfoManager"

    const-string v1, "deviceInfo"

    .line 61
    invoke-virtual {p1, v0, v1, v5}, Lcom/amazon/dp/logger/DPLoggerBase;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Device Util must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getCountryOfResidence()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->fetchCountryOfResidence()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceLanguage()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->fetchDeviceLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceMode()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->fetchDeviceMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOSFileTag()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->fetchOSFileTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOTAGroup()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->fetchOTAGroupName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferredMarketplace()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->fetchPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRsmGroup()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->fetchRsmGroupName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 91
    sget-object p1, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Metrics.AndroidDeviceInfoManager"

    const-string v1, "Not adding key-value to metrics device info as key is null"

    invoke-virtual {p1, v0, v1, p2}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mMetricsDeviceInfo:Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;->addDeviceInfoData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected createCustomerID()Ljava/lang/String;
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->fetchDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-interface {v1}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->fetchDeviceSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SecureRandom;-><init>([B)V

    .line 209
    :goto_0
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    const/16 v2, 0x9

    invoke-interface {v1, v2, v0}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->getRandomDigits(ILjava/security/SecureRandom;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected createRandomDSN()Ljava/lang/String;
    .locals 4

    .line 191
    :try_start_0
    new-instance v0, Ljava/security/SecureRandom;

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-interface {v1}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->fetchDeviceSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SecureRandom;-><init>([B)V

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 193
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v0, 0x2

    .line 194
    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 196
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "createRandomDSN"

    const-string v3, "Failed to create a device id based on the actual DSN. Falling back on UUID"

    invoke-virtual {v1, v0, v3, v2}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected createSessionId()Ljava/lang/String;
    .locals 5

    .line 219
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->fetchDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-interface {v1}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->fetchDeviceSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SecureRandom;-><init>([B)V

    :goto_0
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 221
    iget-object v4, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-interface {v4, v1, v0}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->getRandomDigits(ILjava/security/SecureRandom;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->getRandomDigits(ILjava/security/SecureRandom;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    .line 222
    invoke-interface {v3, v4, v0}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->getRandomDigits(ILjava/security/SecureRandom;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "%s-%s-%s"

    .line 221
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerID()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->fetchCustomerID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceId"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceType"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->getCountryOfResidence()Ljava/lang/String;

    move-result-object v0

    const-string v1, "countryOfResidence"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketplaceID"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceLanguage"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->getDeviceMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceMode"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->getRsmGroup()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "remoteSettingsGroup"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->getOTAGroup()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "otaGroup"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->getOSFileTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "osFileTag"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->getSessionID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Session"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->getCustomerID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomerId"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "REMOTE_ADDR"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mMetricsDeviceInfo:Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;

    return-object v0
.end method

.method protected getDeviceSerialNumber()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->fetchDeviceSerialNumberOrAnonymous()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDeviceType()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->fetchDeviceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->fetchRemoteIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->fetchSessionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
