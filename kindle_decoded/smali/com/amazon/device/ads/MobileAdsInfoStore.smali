.class Lcom/amazon/device/ads/MobileAdsInfoStore;
.super Ljava/lang/Object;
.source "MobileAdsInfoStore.java"


# static fields
.field private static instance:Lcom/amazon/device/ads/MobileAdsInfoStore;


# instance fields
.field private appInfo:Lcom/amazon/device/ads/AppInfo;

.field protected applicationContext:Landroid/content/Context;

.field private contextReceived:Z

.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private deviceInfo:Lcom/amazon/device/ads/DeviceInfo;

.field private filesDirectory:Ljava/io/File;

.field private isAppDisabled:Z

.field private isRegistered:Z

.field private noRetryTtlExpiresMillis:J

.field private noRetryTtlMillis:I

.field private registrationInfo:Lcom/amazon/device/ads/RegistrationInfo;

.field private final settings:Lcom/amazon/device/ads/Settings;

.field private sisRegistration:Lcom/amazon/device/ads/SISRegistration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v1

    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsInfoStore;-><init>(Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/DebugProperties;)V

    sput-object v0, Lcom/amazon/device/ads/MobileAdsInfoStore;->instance:Lcom/amazon/device/ads/MobileAdsInfoStore;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/DebugProperties;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->isAppDisabled:Z

    .line 36
    iput-object p1, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->settings:Lcom/amazon/device/ads/Settings;

    .line 37
    iput-object p2, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    .line 38
    new-instance p1, Lcom/amazon/device/ads/RegistrationInfo;

    invoke-direct {p1}, Lcom/amazon/device/ads/RegistrationInfo;-><init>()V

    iput-object p1, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->registrationInfo:Lcom/amazon/device/ads/RegistrationInfo;

    return-void
.end method

.method public static getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;
    .locals 1

    .line 43
    sget-object v0, Lcom/amazon/device/ads/MobileAdsInfoStore;->instance:Lcom/amazon/device/ads/MobileAdsInfoStore;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized contextReceived(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 66
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->contextReceived:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->contextReceived:Z

    .line 69
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->setApplicationContextFromContext(Landroid/content/Context;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->setFilesDirectory(Landroid/content/Context;)V

    .line 71
    iget-object v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->settings:Lcom/amazon/device/ads/Settings;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/Settings;->contextReceived(Landroid/content/Context;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->createAppInfo(Landroid/content/Context;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->createDeviceInfo(Landroid/content/Context;)Lcom/amazon/device/ads/DeviceInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->deviceInfo:Lcom/amazon/device/ads/DeviceInfo;

    .line 75
    invoke-virtual {p0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->createSISRegistration()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected createAppInfo(Landroid/content/Context;)V
    .locals 1

    .line 95
    new-instance v0, Lcom/amazon/device/ads/AppInfo;

    invoke-direct {v0, p1}, Lcom/amazon/device/ads/AppInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->appInfo:Lcom/amazon/device/ads/AppInfo;

    return-void
.end method

.method protected createDeviceInfo(Landroid/content/Context;)Lcom/amazon/device/ads/DeviceInfo;
    .locals 2

    .line 104
    new-instance v0, Lcom/amazon/device/ads/DeviceInfo;

    new-instance v1, Lcom/amazon/device/ads/UserAgentManager;

    invoke-direct {v1}, Lcom/amazon/device/ads/UserAgentManager;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/amazon/device/ads/DeviceInfo;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/UserAgentManager;)V

    return-object v0
.end method

.method protected createSISRegistration()V
    .locals 1

    .line 115
    new-instance v0, Lcom/amazon/device/ads/SISRegistration;

    invoke-direct {v0}, Lcom/amazon/device/ads/SISRegistration;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->sisRegistration:Lcom/amazon/device/ads/SISRegistration;

    return-void
.end method

.method public getAppInfo()Lcom/amazon/device/ads/AppInfo;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->appInfo:Lcom/amazon/device/ads/AppInfo;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->deviceInfo:Lcom/amazon/device/ads/DeviceInfo;

    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->filesDirectory:Ljava/io/File;

    return-object v0
.end method

.method public getIsAppDisabled()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->isAppDisabled:Z

    return v0
.end method

.method public getNoRetryTtlRemainingMillis()I
    .locals 8

    .line 129
    iget v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->noRetryTtlMillis:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->noRetryTtlExpiresMillis:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 133
    iget-wide v6, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->noRetryTtlExpiresMillis:J

    cmp-long v0, v2, v6

    if-ltz v0, :cond_1

    .line 135
    iput v1, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->noRetryTtlMillis:I

    .line 136
    iput-wide v4, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->noRetryTtlExpiresMillis:J

    return v1

    :cond_1
    sub-long/2addr v6, v2

    long-to-int v0, v6

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->registrationInfo:Lcom/amazon/device/ads/RegistrationInfo;

    return-object v0
.end method

.method public getSISRegistration()Lcom/amazon/device/ads/SISRegistration;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->sisRegistration:Lcom/amazon/device/ads/SISRegistration;

    return-object v0
.end method

.method public register()V
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getSISRegistration()Lcom/amazon/device/ads/SISRegistration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/SISRegistration;->registerApp()V

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->isRegistered:Z

    return-void
.end method

.method protected setApplicationContextFromContext(Landroid/content/Context;)V
    .locals 0

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method protected setFilesDirectory(Landroid/content/Context;)V
    .locals 0

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->filesDirectory:Ljava/io/File;

    return-void
.end method

.method public setIsAppDisabled(Z)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->isAppDisabled:Z

    return-void
.end method

.method public setNoRetryTtl(I)V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const v1, 0x493e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "debug.noRetryTTLMax"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    move p1, v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 157
    iput p1, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->noRetryTtlMillis:I

    const-wide/16 v0, 0x0

    .line 158
    iput-wide v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->noRetryTtlExpiresMillis:J

    goto :goto_0

    :cond_1
    mul-int/lit16 p1, p1, 0x3e8

    .line 162
    iput p1, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->noRetryTtlMillis:I

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget p1, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->noRetryTtlMillis:I

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/device/ads/MobileAdsInfoStore;->noRetryTtlExpiresMillis:J

    :goto_0
    return-void
.end method
