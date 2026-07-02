.class public Lcom/amazon/kcp/notifications/handlers/DefaultNotificationHandler;
.super Ljava/lang/Object;
.source "DefaultNotificationHandler.java"

# interfaces
.implements Lcom/amazon/kcp/notifications/handlers/NotificationHandler;


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/kcp/notifications/handlers/DefaultNotificationHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/notifications/handlers/DefaultNotificationHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private areActionsValid(Lcom/amazon/reader/notifications/message/NotificationMessage;)Z
    .locals 5

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageContent()Lcom/amazon/reader/notifications/message/MessageContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/reader/notifications/message/MessageContent;->getTapAction()Lcom/amazon/reader/notifications/message/NotificationAction;

    move-result-object v1

    .line 168
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageContent()Lcom/amazon/reader/notifications/message/MessageContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/reader/notifications/message/MessageContent;->getBigViewStyle()Lcom/amazon/reader/notifications/message/BigViewStyle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageContent()Lcom/amazon/reader/notifications/message/MessageContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/reader/notifications/message/MessageContent;->getBigViewStyle()Lcom/amazon/reader/notifications/message/BigViewStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/reader/notifications/message/BigViewStyle;->getBigViewData()Lcom/amazon/reader/notifications/message/BigViewData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageContent()Lcom/amazon/reader/notifications/message/MessageContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/reader/notifications/message/MessageContent;->getBigViewStyle()Lcom/amazon/reader/notifications/message/BigViewStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/reader/notifications/message/BigViewStyle;->getBigViewData()Lcom/amazon/reader/notifications/message/BigViewData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/reader/notifications/message/BigViewData;->getBigFirstButtonAction()Lcom/amazon/reader/notifications/message/NotificationAction;

    move-result-object v1

    .line 171
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageContent()Lcom/amazon/reader/notifications/message/MessageContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/MessageContent;->getBigViewStyle()Lcom/amazon/reader/notifications/message/BigViewStyle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/BigViewStyle;->getBigViewData()Lcom/amazon/reader/notifications/message/BigViewData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/BigViewData;->getBigSecondButtonAction()Lcom/amazon/reader/notifications/message/NotificationAction;

    move-result-object p1

    .line 173
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 177
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 178
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/reader/notifications/message/NotificationAction;

    if-nez v2, :cond_1

    goto :goto_1

    .line 183
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/notifications/actions/TapActionFactorySingleton;->getFactory()Lcom/amazon/kcp/notifications/actions/INotificationsTapActionFactory;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/reader/notifications/message/NotificationAction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/kcp/notifications/actions/INotificationsTapActionFactory;->getTapAction(Ljava/lang/String;)Lcom/amazon/kcp/notifications/actions/NotificationTapAction;

    move-result-object v3

    .line 184
    invoke-interface {v3, v2}, Lcom/amazon/kcp/notifications/actions/NotificationTapAction;->isTapActionValid(Lcom/amazon/reader/notifications/message/NotificationAction;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 185
    sget-object v0, Lcom/amazon/kcp/notifications/handlers/DefaultNotificationHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tap action: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amazon/reader/notifications/message/NotificationAction;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not valid to be displayed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 190
    sget-object v1, Lcom/amazon/kcp/notifications/handlers/DefaultNotificationHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported notification action to validate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amazon/reader/notifications/message/NotificationAction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private getValidationData()Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;
    .locals 6

    .line 111
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderNotificationsManager()Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;

    invoke-direct {v1}, Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;-><init>()V

    .line 113
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v2

    .line 115
    sget-object v3, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v2, v3}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;->setMarketplace(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-static {}, Lcom/amazon/kindle/services/authentication/DefaultAccount;->getInstance()Lcom/amazon/kindle/services/authentication/DefaultAccount;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kindle/services/authentication/AccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, ""

    .line 140
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 143
    :cond_1
    invoke-virtual {v1, v3}, Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;->setCustomerId(Ljava/lang/String;)V

    .line 145
    invoke-interface {v0}, Lcom/amazon/reader/notifications/ReaderNotificationsManager;->getChannels()Ljava/util/List;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 147
    sget-object v3, Lcom/amazon/kindle/services/authentication/TokenKey;->COR:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v2, v3}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    .line 149
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/reader/notifications/channel/ChannelDescription;

    .line 150
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getNotificationSettingsManager()Lcom/amazon/kcp/notifications/INotificationSettingsManager;

    move-result-object v4

    invoke-virtual {v3}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/amazon/kcp/notifications/INotificationSettingsManager;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v2}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->isCountryPermitted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 151
    invoke-virtual {v3}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;->addCampaign(Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private isUserOptedIn()Z
    .locals 1

    .line 102
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getNotificationSettingsManager()Lcom/amazon/kcp/notifications/INotificationSettingsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/notifications/INotificationSettingsManager;->areNotificationsEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isMessageValid(Lcom/amazon/reader/notifications/message/NotificationMessage;)Z
    .locals 2

    .line 80
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/amazon/kcp/notifications/handlers/DefaultNotificationHandler;->isUserOptedIn()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/notifications/handlers/DefaultNotificationHandler;->areActionsValid(Lcom/amazon/reader/notifications/message/NotificationMessage;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 91
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderNotificationsManager()Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;

    move-result-object v0

    .line 93
    invoke-direct {p0}, Lcom/amazon/kcp/notifications/handlers/DefaultNotificationHandler;->getValidationData()Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazon/reader/notifications/ReaderNotificationsManager;->isMessageValid(Lcom/amazon/reader/notifications/message/NotificationMessage;Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;)Z

    move-result p1

    return p1
.end method

.method public performAction(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 7

    .line 41
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderNotificationsManager()Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;

    move-result-object v0

    .line 42
    invoke-interface {v0, p2}, Lcom/amazon/reader/notifications/ReaderNotificationsManager;->parseMessage(Landroid/os/Bundle;)Lcom/amazon/reader/notifications/message/NotificationMessage;

    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/notifications/handlers/DefaultNotificationHandler;->isMessageValid(Lcom/amazon/reader/notifications/message/NotificationMessage;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->VALIDITY_FAILED:Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    invoke-static {p1, p2}, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->reportNotificationMessageReceived(Lcom/amazon/reader/notifications/message/MessageMetadata;Lcom/amazon/kcp/notifications/metrics/NotificationStatus;)V

    return-void

    .line 49
    :cond_0
    new-instance v1, Lcom/amazon/kcp/notifications/PushNotificationsScheduler;

    invoke-direct {v1}, Lcom/amazon/kcp/notifications/PushNotificationsScheduler;-><init>()V

    .line 50
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/notifications/PushNotificationsScheduler;->getEarliestDisplayTime(Lcom/amazon/reader/notifications/message/NotificationMessage;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 52
    sget-object p1, Lcom/amazon/kcp/notifications/handlers/DefaultNotificationHandler;->TAG:Ljava/lang/String;

    const-string p2, "Unable to parse start time for active period, cannot display notification"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->VALIDITY_FAILED:Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    invoke-static {p1, p2}, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->reportNotificationMessageReceived(Lcom/amazon/reader/notifications/message/MessageMetadata;Lcom/amazon/kcp/notifications/metrics/NotificationStatus;)V

    return-void

    .line 56
    :cond_1
    invoke-virtual {v1, v2, v3, v0}, Lcom/amazon/kcp/notifications/PushNotificationsScheduler;->isNotificationTimestampValid(JLcom/amazon/reader/notifications/message/NotificationMessage;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 57
    sget-object p1, Lcom/amazon/kcp/notifications/handlers/DefaultNotificationHandler;->TAG:Ljava/lang/String;

    const-string p2, "The time at which the notification can be shown is past the active period or expiry time of the notification"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->VALIDITY_FAILED:Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    invoke-static {p1, p2}, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->reportNotificationMessageReceived(Lcom/amazon/reader/notifications/message/MessageMetadata;Lcom/amazon/kcp/notifications/metrics/NotificationStatus;)V

    return-void

    .line 63
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduling notification to display after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " milliseconds"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    invoke-static {p1, p2, v2, v3}, Lcom/amazon/kcp/notifications/util/ReaderNotificationIntentServiceHelper;->scheduleNotificationMessage(Landroid/content/Context;Landroid/os/Bundle;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 70
    sget-object p2, Lcom/amazon/kcp/notifications/handlers/DefaultNotificationHandler;->TAG:Ljava/lang/String;

    const-string v0, "Failure in displaying notification"

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
