.class public Lcom/amazon/kcp/notifications/NotificationsCancellationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationsCancellationReceiver.java"


# static fields
.field private static final NOTIFICATION_ID_KEY:Ljava/lang/String; = "notificationId"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/kcp/notifications/NotificationsCancellationReceiver;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/notifications/NotificationsCancellationReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private dismissNotification(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "notification"

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 44
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 45
    sget-object p1, Lcom/amazon/kcp/notifications/NotificationsCancellationReceiver;->TAG:Ljava/lang/String;

    const-string v0, "Successfully dismissed push notification"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getNotificationController()Lcom/amazon/kcp/application/AndroidNotificationController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/AndroidNotificationController;->removePushNotification(I)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "notificationId"

    .line 30
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/notifications/NotificationsCancellationReceiver;->dismissNotification(Landroid/content/Context;I)V

    return-void
.end method
