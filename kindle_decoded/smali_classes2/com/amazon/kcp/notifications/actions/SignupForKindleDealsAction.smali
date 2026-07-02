.class public Lcom/amazon/kcp/notifications/actions/SignupForKindleDealsAction;
.super Ljava/lang/Object;
.source "SignupForKindleDealsAction.java"

# interfaces
.implements Lcom/amazon/kcp/notifications/actions/NotificationTapAction;


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final notificationSettingsManager:Lcom/amazon/kcp/notifications/INotificationSettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/amazon/kcp/notifications/actions/SignupForKindleDealsAction;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/notifications/actions/SignupForKindleDealsAction;->TAG:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getNotificationSettingsManager()Lcom/amazon/kcp/notifications/INotificationSettingsManager;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/notifications/actions/SignupForKindleDealsAction;->notificationSettingsManager:Lcom/amazon/kcp/notifications/INotificationSettingsManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isChannelIdValid(Ljava/lang/String;)Z
    .locals 5

    .line 84
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderNotificationsManager()Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;

    move-result-object v0

    .line 86
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 87
    sget-object p1, Lcom/amazon/kcp/notifications/actions/SignupForKindleDealsAction;->TAG:Ljava/lang/String;

    const-string v0, "ChannelId cannot be null or empty"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 90
    :cond_0
    invoke-interface {v0}, Lcom/amazon/reader/notifications/ReaderNotificationsManager;->getChannels()Ljava/util/List;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 92
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/services/authentication/TokenKey;->COR:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v1, v3}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/reader/notifications/channel/ChannelDescription;

    .line 94
    invoke-virtual {v3}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 95
    invoke-virtual {v3, v1}, Lcom/amazon/reader/notifications/channel/ChannelDescription;->isCountryPermitted(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    .line 98
    :cond_2
    sget-object p1, Lcom/amazon/kcp/notifications/actions/SignupForKindleDealsAction;->TAG:Ljava/lang/String;

    const-string v0, "Channel is not permitted in customer\'s current CoR"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 105
    :cond_3
    sget-object p1, Lcom/amazon/kcp/notifications/actions/SignupForKindleDealsAction;->TAG:Ljava/lang/String;

    const-string v0, "ChannelId is not associated with any channels the user is eligible for"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public isTapActionValid(Lcom/amazon/reader/notifications/message/NotificationAction;)Z
    .locals 4

    .line 58
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/amazon/kcp/notifications/actions/SignupForKindleDealsAction;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not authenticated, cannot handle action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationAction;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "kindle_deals"

    .line 62
    invoke-direct {p0, v0}, Lcom/amazon/kcp/notifications/actions/SignupForKindleDealsAction;->isChannelIdValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 66
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    .line 67
    sget-object v0, Lcom/amazon/kcp/notifications/actions/SignupForKindleDealsAction;->notificationSettingsManager:Lcom/amazon/kcp/notifications/INotificationSettingsManager;

    sget-object v2, Lcom/amazon/kcp/application/UserSettingsController$Setting;->KINDLE_DEALS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/kcp/notifications/INotificationSettingsManager;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    sget-object v0, Lcom/amazon/kcp/notifications/actions/SignupForKindleDealsAction;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received sign up for kindle deals notification when deals is on, cannot handle action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationAction;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 72
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationAction;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is valid"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public performTapAction(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    .line 38
    :try_start_0
    sget-object p2, Lcom/amazon/kcp/notifications/actions/SignupForKindleDealsAction;->notificationSettingsManager:Lcom/amazon/kcp/notifications/INotificationSettingsManager;

    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->KINDLE_DEALS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/amazon/kcp/notifications/INotificationSettingsManager;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 39
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "campaign"

    const-string v1, "kindle_deals"

    .line 40
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "notifications"

    .line 41
    sget-object v1, Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;->ACTION_DIALOG_LAUNCH:Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;

    .line 42
    invoke-virtual {v1}, Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 41
    invoke-static {v0, v1, p1, p2}, Lcom/amazon/kcp/application/KindleProtocol;->createNotificationsIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const v0, 0x10008000

    .line 44
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAppSettingsController;->setLaunchToNotification(Z)V

    .line 46
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    sget-object p2, Lcom/amazon/kcp/notifications/actions/SignupForKindleDealsAction;->TAG:Ljava/lang/String;

    const-string v0, "Exception thrown while performing action SIGNUP_FOR_KINDLE_DEALS"

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
