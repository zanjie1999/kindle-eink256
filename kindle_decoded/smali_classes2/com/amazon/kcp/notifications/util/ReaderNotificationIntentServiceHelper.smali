.class public Lcom/amazon/kcp/notifications/util/ReaderNotificationIntentServiceHelper;
.super Ljava/lang/Object;
.source "ReaderNotificationIntentServiceHelper.java"


# static fields
.field private static final JOB_ID:I = 0x3e9

.field private static final MINIMUM_LATENCY_KFC:I = 0x1f4

.field private static final NOTIFICATION_MESSAGE_HANDLING_EXCEPTION:Ljava/lang/String; = "NotificationMessageHandlingException"

.field private static final NOTIFICATION_MESSAGE_PARSE_EXCEPTION:Ljava/lang/String; = "NotificationMessageParseException"

.field private static final NOTIFICATION_TYPE_NOT_SUPPORTED:Ljava/lang/String; = "NotificationTypeNotSupported"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/kcp/notifications/util/ReaderNotificationIntentServiceHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/notifications/util/ReaderNotificationIntentServiceHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getNotificationHandler(Ljava/lang/String;)Lcom/amazon/kcp/notifications/handlers/NotificationHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kcp/notifications/handlers/UnsupportNotificationException;
        }
    .end annotation

    .line 186
    new-instance v0, Lcom/amazon/kcp/notifications/handlers/NotificationHandlerFactory;

    invoke-direct {v0}, Lcom/amazon/kcp/notifications/handlers/NotificationHandlerFactory;-><init>()V

    .line 187
    invoke-virtual {v0, p0}, Lcom/amazon/kcp/notifications/handlers/NotificationHandlerFactory;->getNotificationHandler(Ljava/lang/String;)Lcom/amazon/kcp/notifications/handlers/NotificationHandler;

    move-result-object p0

    return-object p0
.end method

.method private static getRequestCode()I
    .locals 4

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xfffffff

    and-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public static handleMessage(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    .line 59
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderNotificationsManager()Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;

    move-result-object v0

    .line 60
    invoke-interface {v0, p1}, Lcom/amazon/reader/notifications/ReaderNotificationsManager;->parseMessage(Landroid/os/Bundle;)Lcom/amazon/reader/notifications/message/NotificationMessage;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getNotificationType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/notifications/util/ReaderNotificationIntentServiceHelper;->getNotificationHandler(Ljava/lang/String;)Lcom/amazon/kcp/notifications/handlers/NotificationHandler;

    move-result-object v0

    .line 62
    invoke-interface {v0, p0, p1}, Lcom/amazon/kcp/notifications/handlers/NotificationHandler;->performAction(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/amazon/reader/notifications/exception/MessageParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 67
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/notifications/util/ReaderNotificationIntentServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "NotificationMessageHandlingException"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object p1, Lcom/amazon/kcp/notifications/util/ReaderNotificationIntentServiceHelper;->TAG:Ljava/lang/String;

    const-string v0, "Failure in handling notification"

    invoke-static {p1, v0, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 64
    :catch_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p0

    sget-object p1, Lcom/amazon/kcp/notifications/util/ReaderNotificationIntentServiceHelper;->TAG:Ljava/lang/String;

    const-string v0, "NotificationMessageParseException"

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object p0, Lcom/amazon/kcp/notifications/util/ReaderNotificationIntentServiceHelper;->TAG:Ljava/lang/String;

    const-string p1, "Failure to parse the JSON message"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static isMessageValid(Lcom/amazon/reader/notifications/message/NotificationMessage;)Z
    .locals 4

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getNotificationType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/notifications/util/ReaderNotificationIntentServiceHelper;->getNotificationHandler(Ljava/lang/String;)Lcom/amazon/kcp/notifications/handlers/NotificationHandler;

    move-result-object v0

    .line 82
    invoke-interface {v0, p0}, Lcom/amazon/kcp/notifications/handlers/NotificationHandler;->isMessageValid(Lcom/amazon/reader/notifications/message/NotificationMessage;)Z

    move-result p0
    :try_end_0
    .catch Lcom/amazon/kcp/notifications/handlers/UnsupportNotificationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 84
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/notifications/util/ReaderNotificationIntentServiceHelper;->TAG:Ljava/lang/String;

    const-string v3, "NotificationTypeNotSupported"

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v1, Lcom/amazon/kcp/notifications/util/ReaderNotificationIntentServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getNotificationType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static scheduleNotificationMessage(Landroid/content/Context;Landroid/os/Bundle;J)V
    .locals 2

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 101
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/kcp/notifications/util/ReaderNotificationIntentServiceHelper;->scheduleNotificationMessageJob(Landroid/content/Context;Landroid/os/Bundle;J)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/kcp/notifications/util/ReaderNotificationIntentServiceHelper;->scheduleNotificationMessageAlert(Landroid/content/Context;Landroid/os/Bundle;J)V

    :goto_0
    return-void
.end method

.method public static scheduleNotificationMessageAlert(Landroid/content/Context;Landroid/os/Bundle;J)V
    .locals 3

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/notifications/NotificationsPublishingIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 121
    invoke-static {}, Lcom/amazon/kcp/application/KindleProtocol;->getPreferredScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 122
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 123
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 124
    invoke-static {}, Lcom/amazon/kcp/notifications/util/ReaderNotificationIntentServiceHelper;->getRequestCode()I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v0, "alarm"

    .line 126
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static scheduleNotificationMessageJob(Landroid/content/Context;Landroid/os/Bundle;J)V
    .locals 6

    .line 143
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amazon/kcp/notifications/NotificationsPublishingJobService;

    .line 144
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const/16 v2, 0x3e9

    invoke-direct {v1, v2, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 147
    invoke-virtual {v1, p1}, Landroid/app/job/JobInfo$Builder;->setTransientExtras(Landroid/os/Bundle;)Landroid/app/job/JobInfo$Builder;

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, p2, v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr p2, v2

    invoke-virtual {v1, p2, p3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 p1, 0x1f4

    .line 153
    invoke-virtual {v1, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 155
    invoke-virtual {v1, p1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 160
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 161
    invoke-virtual {v1, p1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 163
    :cond_2
    const-class p1, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 164
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method
