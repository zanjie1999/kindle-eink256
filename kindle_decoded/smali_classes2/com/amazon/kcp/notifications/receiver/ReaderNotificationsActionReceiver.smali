.class public Lcom/amazon/kcp/notifications/receiver/ReaderNotificationsActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ReaderNotificationsActionReceiver.java"


# static fields
.field public static final IS_INTERNAL_KEY:Ljava/lang/String; = "isInternal"

.field private static final TAG:Ljava/lang/String;

.field private static final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const-class v0, Lcom/amazon/kcp/notifications/receiver/ReaderNotificationsActionReceiver;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/notifications/receiver/ReaderNotificationsActionReceiver;->TAG:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/notifications/receiver/ReaderNotificationsActionReceiver;

    .line 28
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/notifications/receiver/ReaderNotificationsActionReceiver;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receiving action Intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->blockOnAppInitialization()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 41
    sget-object v0, Lcom/amazon/kcp/notifications/ActionKey;->ACTION_NAME:Lcom/amazon/kcp/notifications/ActionKey;

    invoke-virtual {v0}, Lcom/amazon/kcp/notifications/ActionKey;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    sget-object v1, Lcom/amazon/kcp/notifications/ActionKey;->ACTION_SOURCE:Lcom/amazon/kcp/notifications/ActionKey;

    invoke-virtual {v1}, Lcom/amazon/kcp/notifications/ActionKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    sget-object v2, Lcom/amazon/kcp/notifications/ActionKey;->MESSAGE_ID:Lcom/amazon/kcp/notifications/ActionKey;

    invoke-virtual {v2}, Lcom/amazon/kcp/notifications/ActionKey;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    sget-object v3, Lcom/amazon/kcp/notifications/ActionKey;->MESSAGE_METADATA_KEY:Lcom/amazon/kcp/notifications/ActionKey;

    invoke-virtual {v3}, Lcom/amazon/kcp/notifications/ActionKey;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/notifications/ParcelableMetadata;

    .line 46
    invoke-static {v3, v1}, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->reportNotificationClicked(Lcom/amazon/kcp/notifications/ParcelableMetadata;Ljava/lang/String;)V

    .line 48
    sget-object v1, Lcom/amazon/kcp/notifications/ActionKey;->CAMPAIGN_NAME:Lcom/amazon/kcp/notifications/ActionKey;

    invoke-virtual {v1}, Lcom/amazon/kcp/notifications/ActionKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 50
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getNotificationController()Lcom/amazon/kcp/application/AndroidNotificationController;

    move-result-object v3

    .line 51
    invoke-virtual {v3, v1}, Lcom/amazon/kcp/application/AndroidNotificationController;->clearPushNotification(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    .line 53
    sget-object v1, Lcom/amazon/kcp/notifications/receiver/ReaderNotificationsActionReceiver;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v3, Lcom/amazon/kindle/krx/events/PushNotificationOpenedEvent;

    invoke-direct {v3, v2}, Lcom/amazon/kindle/krx/events/PushNotificationOpenedEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 56
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 61
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/notifications/actions/TapActionFactorySingleton;->getFactory()Lcom/amazon/kcp/notifications/actions/INotificationsTapActionFactory;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kcp/notifications/actions/INotificationsTapActionFactory;->getTapAction(Ljava/lang/String;)Lcom/amazon/kcp/notifications/actions/NotificationTapAction;

    move-result-object v1

    .line 62
    invoke-interface {v1, p1, p2}, Lcom/amazon/kcp/notifications/actions/NotificationTapAction;->performTapAction(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    sget-object p2, Lcom/amazon/kcp/notifications/receiver/ReaderNotificationsActionReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported notification action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method
