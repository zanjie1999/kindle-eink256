.class public final Lcom/amazon/kindle/inapp/notifications/util/NotificationValidator;
.super Ljava/lang/Object;
.source "NotificationValidator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationValidator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationValidator.kt\ncom/amazon/kindle/inapp/notifications/util/NotificationValidator\n*L\n1#1,24:1\n*E\n"
.end annotation


# instance fields
.field private final notification:Lcom/amazon/kindle/inapp/notifications/util/Notification;

.field private final subscribeManager:Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/inapp/notifications/util/Notification;Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager;)V
    .locals 1

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscribeManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/util/NotificationValidator;->notification:Lcom/amazon/kindle/inapp/notifications/util/Notification;

    iput-object p2, p0, Lcom/amazon/kindle/inapp/notifications/util/NotificationValidator;->subscribeManager:Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kindle/inapp/notifications/util/Notification;Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 12
    sget-object p2, Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager;->Companion:Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager$Companion;

    invoke-virtual {p2}, Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/inapp/notifications/util/NotificationValidator;-><init>(Lcom/amazon/kindle/inapp/notifications/util/Notification;Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager;)V

    return-void
.end method


# virtual methods
.method public final isDisplayable()Z
    .locals 6

    .line 18
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/NotificationValidator;->notification:Lcom/amazon/kindle/inapp/notifications/util/Notification;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/Notification;->getNotificationData()Lcom/amazon/kindle/inapp/notifications/util/NotificationData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;->getTapAction()Lcom/amazon/kindle/inapp/notifications/util/TapAction;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 19
    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/TapAction;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 20
    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_2

    return v1

    .line 21
    :cond_2
    iget-object v4, p0, Lcom/amazon/kindle/inapp/notifications/util/NotificationValidator;->subscribeManager:Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager;

    invoke-virtual {v4, v2}, Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager;->getSubscriber(Ljava/lang/String;)Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscriber;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscriber;->getNotificationHandler(Lcom/amazon/kindle/inapp/notifications/util/TapAction;)Lcom/amazon/kindle/inapp/notifications/tapaction/InAppTapActionHandler;

    move-result-object v2

    .line 22
    iget-object v4, p0, Lcom/amazon/kindle/inapp/notifications/util/NotificationValidator;->notification:Lcom/amazon/kindle/inapp/notifications/util/Notification;

    invoke-virtual {v4}, Lcom/amazon/kindle/inapp/notifications/util/Notification;->getTexts()Lcom/amazon/kindle/inapp/notifications/util/NotificationTexts;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/amazon/kindle/inapp/notifications/util/NotificationTexts;->getNotificationTitle()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v5

    :goto_2
    if-eqz v4, :cond_5

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v4, 0x1

    :goto_4
    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/amazon/kindle/inapp/notifications/util/NotificationValidator;->notification:Lcom/amazon/kindle/inapp/notifications/util/Notification;

    invoke-virtual {v4}, Lcom/amazon/kindle/inapp/notifications/util/Notification;->getTexts()Lcom/amazon/kindle/inapp/notifications/util/NotificationTexts;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/amazon/kindle/inapp/notifications/util/NotificationTexts;->getNotificationText()Ljava/lang/String;

    move-result-object v5

    :cond_6
    if-eqz v5, :cond_8

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v4, 0x1

    :goto_6
    if-nez v4, :cond_9

    invoke-interface {v2, v0}, Lcom/amazon/kindle/inapp/notifications/tapaction/InAppTapActionHandler;->isValid(Lcom/amazon/kindle/inapp/notifications/util/TapAction;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    :cond_9
    return v1
.end method
