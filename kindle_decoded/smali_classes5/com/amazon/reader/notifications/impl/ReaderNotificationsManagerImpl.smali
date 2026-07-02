.class public Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerImpl;
.super Ljava/lang/Object;
.source "ReaderNotificationsManagerImpl.java"

# interfaces
.implements Lcom/amazon/reader/notifications/ReaderNotificationsManager;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ReaderNotificationsManagerImpl"

.field public static final PREF_FILENAME:Ljava/lang/String; = "Notifications.pref"

.field private static executor:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private channelsManager:Lcom/amazon/reader/notifications/impl/ChannelsManager;

.field private final context:Landroid/content/Context;

.field private notificationMessageValidator:Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;

.field private final parser:Lcom/amazon/reader/notifications/impl/GCMMessageParser;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 62
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0xa

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v7, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerImpl;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 77
    iput-object p1, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerImpl;->context:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 81
    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugProvider;

    invoke-direct {v1}, Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugProvider;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 82
    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/reader/notifications/logging/Log;->setLogger(Lcom/amazon/kindle/krx/logging/ILogger;)V

    .line 85
    :cond_0
    new-instance p2, Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;

    invoke-direct {p2}, Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;-><init>()V

    iput-object p2, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerImpl;->notificationMessageValidator:Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;

    .line 86
    new-instance p2, Lcom/amazon/reader/notifications/impl/GCMChannelsManager;

    invoke-direct {p2, p1}, Lcom/amazon/reader/notifications/impl/GCMChannelsManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerImpl;->channelsManager:Lcom/amazon/reader/notifications/impl/ChannelsManager;

    .line 87
    sget-object p1, Lcom/amazon/reader/notifications/pubsub/AndroidPlatformType;->THIRD_PARTY:Lcom/amazon/reader/notifications/pubsub/AndroidPlatformType;

    invoke-static {p1}, Lcom/amazon/reader/notifications/pubsub/Pubsub;->initConfig(Lcom/amazon/reader/notifications/pubsub/AndroidPlatformType;)V

    .line 88
    new-instance p1, Lcom/amazon/reader/notifications/impl/GCMMessageParser;

    invoke-direct {p1}, Lcom/amazon/reader/notifications/impl/GCMMessageParser;-><init>()V

    iput-object p1, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerImpl;->parser:Lcom/amazon/reader/notifications/impl/GCMMessageParser;

    return-void

    .line 75
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateDeviceAttributes(Lcom/amazon/reader/notifications/DeviceAttributes;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 129
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/DeviceAttributes;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/DeviceAttributes;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/DeviceAttributes;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/DeviceAttributes;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/DeviceAttributes;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/DeviceAttributes;->getOsVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 138
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Os version cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Device type cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "App version cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Custom data cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public checkForChannelUpdates(Ljava/lang/String;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerImpl;->channelsManager:Lcom/amazon/reader/notifications/impl/ChannelsManager;

    invoke-virtual {v0, p1}, Lcom/amazon/reader/notifications/impl/ChannelsManager;->downloadChannelSettingsAsynchronously(Ljava/lang/String;)V

    return-void
.end method

.method public clearChannelSettings()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerImpl;->channelsManager:Lcom/amazon/reader/notifications/impl/ChannelsManager;

    invoke-virtual {v0}, Lcom/amazon/reader/notifications/impl/ChannelsManager;->invalidateChannelSettings()V

    return-void
.end method

.method public finishGetuiRegistration(Ljava/lang/String;Lcom/amazon/reader/notifications/DeviceAttributes;Lcom/amazon/reader/notifications/getui/GetuiRegistrationCallbacks;)V
    .locals 2

    .line 114
    new-instance v0, Lcom/amazon/reader/notifications/getui/GetuiRegistrationTask;

    iget-object v1, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerImpl;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/amazon/reader/notifications/getui/GetuiRegistrationTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/reader/notifications/DeviceAttributes;Lcom/amazon/reader/notifications/getui/GetuiRegistrationCallbacks;)V

    .line 115
    sget-object p1, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerImpl;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/reader/notifications/channel/ChannelDescription;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerImpl;->channelsManager:Lcom/amazon/reader/notifications/impl/ChannelsManager;

    invoke-virtual {v0}, Lcom/amazon/reader/notifications/impl/ChannelsManager;->loadChannelSettings()Lcom/amazon/reader/notifications/channel/ChannelSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/amazon/reader/notifications/channel/ChannelSettings;->getChannels()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 191
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isMessageValid(Lcom/amazon/reader/notifications/message/NotificationMessage;Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;)Z
    .locals 1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerImpl;->notificationMessageValidator:Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;->shouldShowMessage(Lcom/amazon/reader/notifications/message/NotificationMessage;Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "ReaderNotificationsManagerImpl"

    const-string v0, "Exception when checking if notification message should be shown"

    .line 180
    invoke-static {p2, v0, p1}, Lcom/amazon/reader/notifications/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public parseMessage(Landroid/os/Bundle;)Lcom/amazon/reader/notifications/message/NotificationMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/reader/notifications/exception/MessageParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerImpl;->parser:Lcom/amazon/reader/notifications/impl/GCMMessageParser;

    invoke-virtual {v0, p1}, Lcom/amazon/reader/notifications/impl/GCMMessageParser;->parseMessage(Landroid/os/Bundle;)Lcom/amazon/reader/notifications/message/NotificationMessage;

    move-result-object p1

    return-object p1

    .line 167
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Extras map cannot be null/empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public register(Lcom/amazon/reader/notifications/DeviceAttributes;Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;)V
    .locals 3

    .line 101
    invoke-direct {p0, p1}, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerImpl;->validateDeviceAttributes(Lcom/amazon/reader/notifications/DeviceAttributes;)V

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerImpl;->validateForGooglePlayServicesAvailability()V
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 105
    new-instance v1, Lcom/amazon/reader/notifications/impl/GCMNotAvailableException;

    iget v2, v0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->errorCode:I

    invoke-direct {v1, v0, v2}, Lcom/amazon/reader/notifications/impl/GCMNotAvailableException;-><init>(Ljava/lang/Throwable;I)V

    invoke-interface {p2, v1}, Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;->onException(Ljava/lang/Exception;)V

    .line 108
    :goto_0
    new-instance v0, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;

    iget-object v1, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerImpl;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;-><init>(Landroid/content/Context;Lcom/amazon/reader/notifications/DeviceAttributes;Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;)V

    .line 109
    sget-object p1, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerImpl;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method validateForGooglePlayServicesAvailability()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    new-instance v1, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw v1
.end method
