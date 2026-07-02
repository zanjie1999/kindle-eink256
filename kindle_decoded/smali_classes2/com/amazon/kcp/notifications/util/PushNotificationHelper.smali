.class public final Lcom/amazon/kcp/notifications/util/PushNotificationHelper;
.super Ljava/lang/Object;
.source "PushNotificationHelper.java"


# static fields
.field private static final CHANNELS_FILE_NAME:Ljava/lang/String; = "notificationChannels.json"

.field public static final KINDLE_DEALS_CAMPAIGN:Ljava/lang/String; = "kindle_deals"

.field private static final REGISTER_ATTEMPT_FAILED:Ljava/lang/String; = "PushNotification.RegisterAttemptFailed"

.field private static final REGISTER_CALLED_ON_EXCEPTION:Ljava/lang/String; = "PushNotification.RegisterCalledOnException"

.field private static final REGISTER_ENDPOINT_ARN_SUCCESS:Ljava/lang/String; = "PushNotification.RegisterEndpointArnSuccess"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/amazon/kcp/notifications/util/PushNotificationHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/notifications/util/PushNotificationHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kcp/notifications/util/PushNotificationHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static doesChannelsFileExist(Landroid/content/Context;)Z
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    const-string v0, "notificationChannels.json"

    .line 160
    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 161
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static getAllDeviceAttributes(Landroid/content/Context;)Lcom/amazon/reader/notifications/DeviceAttributes;
    .locals 4

    .line 89
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    .line 90
    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderNotificationsManager()Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;

    move-result-object p0

    .line 92
    invoke-static {}, Lcom/amazon/kcp/notifications/util/PushNotificationHelper;->getDefaultDeviceAttributes()Lcom/amazon/reader/notifications/DeviceAttributes;

    move-result-object v0

    .line 93
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    .line 94
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getNotificationSettingsManager()Lcom/amazon/kcp/notifications/INotificationSettingsManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/notifications/INotificationSettingsManager;->areNotificationsEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/reader/notifications/DeviceAttributes;->setUserEnabled(Ljava/lang/Boolean;)V

    .line 96
    invoke-interface {p0}, Lcom/amazon/reader/notifications/ReaderNotificationsManager;->getChannels()Ljava/util/List;

    move-result-object p0

    .line 98
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/reader/notifications/channel/ChannelDescription;

    .line 100
    invoke-virtual {v1}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getNotificationSettingsManager()Lcom/amazon/kcp/notifications/INotificationSettingsManager;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/amazon/kcp/notifications/INotificationSettingsManager;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/amazon/reader/notifications/DeviceAttributes;->setOptInSetting(Ljava/lang/String;Z)Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getDefaultDeviceAttributes()Lcom/amazon/reader/notifications/DeviceAttributes;
    .locals 4

    .line 112
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    .line 113
    new-instance v1, Lcom/amazon/reader/notifications/DeviceAttributes;

    invoke-direct {v1}, Lcom/amazon/reader/notifications/DeviceAttributes;-><init>()V

    .line 115
    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/reader/notifications/DeviceAttributes;->setDeviceType(Ljava/lang/String;)V

    .line 116
    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/reader/notifications/DeviceAttributes;->setDsn(Ljava/lang/String;)V

    .line 117
    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/reader/notifications/DeviceAttributes;->setOsVersion(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getAppVersionNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/reader/notifications/DeviceAttributes;->setAppVersion(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/reader/notifications/DeviceAttributes;->setDeviceLocale(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/reader/notifications/DeviceAttributes;->setTimezone(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 123
    sget-object v2, Lcom/amazon/kcp/application/IAuthenticationManager;->DEFAULT_USER_ID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    invoke-virtual {v1, v0}, Lcom/amazon/reader/notifications/DeviceAttributes;->setDirectedId(Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method public static register(Landroid/content/Context;)V
    .locals 3

    .line 54
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->arePromotionsAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-static {p0}, Lcom/amazon/kcp/notifications/ReaderNotificationsDomainSetup;->setup(Landroid/content/Context;)V

    .line 62
    :cond_1
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderNotificationsManager()Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;

    move-result-object v0

    .line 65
    :try_start_0
    invoke-static {p0}, Lcom/amazon/kcp/notifications/util/PushNotificationHelper;->getAllDeviceAttributes(Landroid/content/Context;)Lcom/amazon/reader/notifications/DeviceAttributes;

    move-result-object p0

    new-instance v1, Lcom/amazon/kcp/notifications/util/PushNotificationHelper$1;

    invoke-direct {v1}, Lcom/amazon/kcp/notifications/util/PushNotificationHelper$1;-><init>()V

    invoke-interface {v0, p0, v1}, Lcom/amazon/reader/notifications/ReaderNotificationsManager;->register(Lcom/amazon/reader/notifications/DeviceAttributes;Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 80
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/notifications/util/PushNotificationHelper;->TAG:Ljava/lang/String;

    const-string v2, "PushNotification.RegisterAttemptFailed"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/amazon/kcp/notifications/util/PushNotificationHelper;->TAG:Ljava/lang/String;

    const-string v1, "Failure attempting to register for push notifications."

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static updateNotificationsChannelsFile(Landroid/content/Context;)V
    .locals 1

    .line 134
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getUserPFM()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 147
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    .line 149
    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderNotificationsManager()Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;

    move-result-object p0

    .line 150
    invoke-interface {p0, v0}, Lcom/amazon/reader/notifications/ReaderNotificationsManager;->checkForChannelUpdates(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
