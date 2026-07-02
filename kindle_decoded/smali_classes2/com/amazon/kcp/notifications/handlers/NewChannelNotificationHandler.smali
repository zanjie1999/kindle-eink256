.class public Lcom/amazon/kcp/notifications/handlers/NewChannelNotificationHandler;
.super Ljava/lang/Object;
.source "NewChannelNotificationHandler.java"

# interfaces
.implements Lcom/amazon/kcp/notifications/handlers/NotificationHandler;


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/kcp/notifications/handlers/NewChannelNotificationHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/notifications/handlers/NewChannelNotificationHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMessageValid(Lcom/amazon/reader/notifications/message/NotificationMessage;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public performAction(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 6

    .line 32
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/notifications/ReaderNotificationsAlarmReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "alarm"

    .line 33
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    const/high16 v2, 0x10000000

    const/4 v3, 0x0

    .line 34
    invoke-static {p1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 39
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderNotificationsManager()Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;

    move-result-object p1

    .line 40
    invoke-interface {p1, p2}, Lcom/amazon/reader/notifications/ReaderNotificationsManager;->parseMessage(Landroid/os/Bundle;)Lcom/amazon/reader/notifications/message/NotificationMessage;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->SILENTLY_EXECUTED:Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    invoke-static {p1, p2}, Lcom/amazon/kcp/notifications/metrics/ReaderNotificationsMetricsManager;->reportNotificationMessageReceived(Lcom/amazon/reader/notifications/message/MessageMetadata;Lcom/amazon/kcp/notifications/metrics/NotificationStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 46
    sget-object p2, Lcom/amazon/kcp/notifications/handlers/NewChannelNotificationHandler;->TAG:Ljava/lang/String;

    const-string v0, "Failure in executing silent notification"

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
