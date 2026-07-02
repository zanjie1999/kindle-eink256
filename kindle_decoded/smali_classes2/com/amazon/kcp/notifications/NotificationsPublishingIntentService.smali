.class public Lcom/amazon/kcp/notifications/NotificationsPublishingIntentService;
.super Landroid/app/IntentService;
.source "NotificationsPublishingIntentService.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kcp/notifications/NotificationsPublishingIntentService;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/notifications/NotificationsPublishingIntentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "NotificationsPublishingIntentService"

    .line 25
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private displayNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 53
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderNotificationsManager()Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;

    move-result-object v0

    .line 56
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/amazon/reader/notifications/ReaderNotificationsManager;->parseMessage(Landroid/os/Bundle;)Lcom/amazon/reader/notifications/message/NotificationMessage;

    move-result-object p2

    .line 57
    invoke-static {p1, p2}, Lcom/amazon/kcp/notifications/PushNotificationBuilderFactory;->constructNotificationBuilder(Landroid/content/Context;Lcom/amazon/reader/notifications/message/NotificationMessage;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 60
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getNotificationController()Lcom/amazon/kcp/application/AndroidNotificationController;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/application/AndroidNotificationController;->displayPushNotification(Landroid/app/Notification$Builder;Lcom/amazon/reader/notifications/message/NotificationMessage;)V
    :try_end_0
    .catch Lcom/amazon/reader/notifications/exception/MessageParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    sget-object p2, Lcom/amazon/kcp/notifications/NotificationsPublishingIntentService;->TAG:Ljava/lang/String;

    const-string v0, "Failure in displaying notification, unable to parse message"

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 41
    invoke-direct {p0, p0, p1}, Lcom/amazon/kcp/notifications/NotificationsPublishingIntentService;->displayNotification(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
