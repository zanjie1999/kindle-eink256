.class public Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerFPT;
.super Ljava/lang/Object;
.source "ReaderNotificationsManagerFPT.java"

# interfaces
.implements Lcom/amazon/reader/notifications/ReaderNotificationsManager;


# static fields
.field private static final CLASS_ADM:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "RNManagerFirstPartyTask"

.field private static executor:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private channelsManager:Lcom/amazon/reader/notifications/impl/ChannelsManager;

.field private final context:Landroid/content/Context;

.field private notificationMessageValidator:Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;

.field private final parser:Lcom/amazon/reader/notifications/impl/FPTMessageParser;

.field private registrationTask:Lcom/amazon/reader/notifications/impl/RegistrationTaskFPT;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 50
    const-class v0, Lcom/amazon/device/messaging/ADM;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerFPT;->CLASS_ADM:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerFPT;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 82
    iput-object p1, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerFPT;->context:Landroid/content/Context;

    .line 83
    new-instance v0, Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;

    invoke-direct {v0}, Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;-><init>()V

    iput-object v0, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerFPT;->notificationMessageValidator:Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;

    .line 84
    new-instance v0, Lcom/amazon/reader/notifications/impl/FPTChannelsManager;

    invoke-direct {v0, p1}, Lcom/amazon/reader/notifications/impl/FPTChannelsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerFPT;->channelsManager:Lcom/amazon/reader/notifications/impl/ChannelsManager;

    if-eqz p2, :cond_0

    .line 88
    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugProvider;

    invoke-direct {v0}, Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugProvider;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 89
    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/reader/notifications/logging/Log;->setLogger(Lcom/amazon/kindle/krx/logging/ILogger;)V

    .line 92
    :cond_0
    sget-object p1, Lcom/amazon/reader/notifications/pubsub/AndroidPlatformType;->FIRST_PARTY:Lcom/amazon/reader/notifications/pubsub/AndroidPlatformType;

    invoke-static {p1}, Lcom/amazon/reader/notifications/pubsub/Pubsub;->initConfig(Lcom/amazon/reader/notifications/pubsub/AndroidPlatformType;)V

    .line 93
    new-instance p1, Lcom/amazon/reader/notifications/impl/FPTMessageParser;

    invoke-direct {p1}, Lcom/amazon/reader/notifications/impl/FPTMessageParser;-><init>()V

    iput-object p1, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerFPT;->parser:Lcom/amazon/reader/notifications/impl/FPTMessageParser;

    return-void

    .line 80
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateDeviceAttributes(Lcom/amazon/reader/notifications/DeviceAttributes;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Custom data cannot be null"

    .line 126
    invoke-static {p1, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/DeviceAttributes;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "App version cannot be null or empty"

    invoke-static {v1, v3, v2}, Lorg/apache/commons/lang3/Validate;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 128
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/DeviceAttributes;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "Device type cannot be null or empty"

    invoke-static {v1, v3, v2}, Lorg/apache/commons/lang3/Validate;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 129
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/DeviceAttributes;->getOsVersion()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Os version cannot be null or empty"

    invoke-static {p1, v1, v0}, Lorg/apache/commons/lang3/Validate;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    return-void
.end method

.method private validateForADMAvailability()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/reader/notifications/exception/RegistrationServiceNotAvailableException;
        }
    .end annotation

    .line 141
    :try_start_0
    sget-object v0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerFPT;->CLASS_ADM:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 144
    new-instance v1, Lcom/amazon/reader/notifications/exception/RegistrationServiceNotAvailableException;

    const-string v2, "ADM isn\'t available on this device"

    invoke-direct {v1, v2, v0}, Lcom/amazon/reader/notifications/exception/RegistrationServiceNotAvailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public checkForChannelUpdates(Ljava/lang/String;)V
    .locals 2

    const-string v0, "RNManagerFirstPartyTask"

    const-string v1, "Check For Channel Updates"

    .line 185
    invoke-static {v0, v1}, Lcom/amazon/reader/notifications/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerFPT;->channelsManager:Lcom/amazon/reader/notifications/impl/ChannelsManager;

    invoke-virtual {v0, p1}, Lcom/amazon/reader/notifications/impl/ChannelsManager;->downloadChannelSettingsAsynchronously(Ljava/lang/String;)V

    return-void
.end method

.method public clearChannelSettings()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerFPT;->channelsManager:Lcom/amazon/reader/notifications/impl/ChannelsManager;

    invoke-virtual {v0}, Lcom/amazon/reader/notifications/impl/ChannelsManager;->invalidateChannelSettings()V

    return-void
.end method

.method public finishGetuiRegistration(Ljava/lang/String;Lcom/amazon/reader/notifications/DeviceAttributes;Lcom/amazon/reader/notifications/getui/GetuiRegistrationCallbacks;)V
    .locals 0

    .line 116
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Kindle for Tate shouldn\'t be using Getui"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 175
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerFPT;->channelsManager:Lcom/amazon/reader/notifications/impl/ChannelsManager;

    invoke-virtual {v0}, Lcom/amazon/reader/notifications/impl/ChannelsManager;->loadChannelSettings()Lcom/amazon/reader/notifications/channel/ChannelSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/amazon/reader/notifications/channel/ChannelSettings;->getChannels()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 179
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isMessageValid(Lcom/amazon/reader/notifications/message/NotificationMessage;Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;)Z
    .locals 1

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerFPT;->notificationMessageValidator:Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;->shouldShowMessage(Lcom/amazon/reader/notifications/message/NotificationMessage;Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "RNManagerFirstPartyTask"

    const-string v0, "Exception when checking if notification message should be shown"

    .line 168
    invoke-static {p2, v0, p1}, Lcom/amazon/reader/notifications/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onNewRegistrationId(Ljava/lang/String;Lcom/amazon/reader/notifications/DeviceAttributes;)V
    .locals 2

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerFPT;->registrationTask:Lcom/amazon/reader/notifications/impl/RegistrationTaskFPT;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerFPT;->registrationTask:Lcom/amazon/reader/notifications/impl/RegistrationTaskFPT;

    iget-object v1, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerFPT;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/amazon/reader/notifications/impl/RegistrationTaskFPT;->registerWithSNS(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/reader/notifications/DeviceAttributes;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "RNManagerFirstPartyTask"

    const-string p2, "Failure in registering with SNS. Will retry in the next attempt"

    .line 206
    invoke-static {p1, p2}, Lcom/amazon/reader/notifications/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public parseMessage(Landroid/os/Bundle;)Lcom/amazon/reader/notifications/message/NotificationMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/reader/notifications/exception/MessageParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerFPT;->parser:Lcom/amazon/reader/notifications/impl/FPTMessageParser;

    invoke-virtual {v0, p1}, Lcom/amazon/reader/notifications/impl/FPTMessageParser;->parseMessage(Landroid/os/Bundle;)Lcom/amazon/reader/notifications/message/NotificationMessage;

    move-result-object p1

    return-object p1

    .line 155
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Extras map cannot be null/empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public register(Lcom/amazon/reader/notifications/DeviceAttributes;Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;)V
    .locals 2

    .line 104
    invoke-direct {p0, p1}, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerFPT;->validateDeviceAttributes(Lcom/amazon/reader/notifications/DeviceAttributes;)V

    .line 106
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerFPT;->validateForADMAvailability()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 108
    invoke-interface {p2, v0}, Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;->onException(Ljava/lang/Exception;)V

    .line 110
    :goto_0
    new-instance v0, Lcom/amazon/reader/notifications/impl/RegistrationTaskFPT;

    iget-object v1, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerFPT;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/amazon/reader/notifications/impl/RegistrationTaskFPT;-><init>(Landroid/content/Context;Lcom/amazon/reader/notifications/DeviceAttributes;Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;)V

    iput-object v0, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerFPT;->registrationTask:Lcom/amazon/reader/notifications/impl/RegistrationTaskFPT;

    .line 111
    sget-object p1, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerFPT;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
