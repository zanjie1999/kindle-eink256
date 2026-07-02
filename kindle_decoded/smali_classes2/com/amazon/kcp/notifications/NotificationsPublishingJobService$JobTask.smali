.class Lcom/amazon/kcp/notifications/NotificationsPublishingJobService$JobTask;
.super Landroid/os/AsyncTask;
.source "NotificationsPublishingJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/notifications/NotificationsPublishingJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JobTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/app/job/JobParameters;",
        "Ljava/lang/Void;",
        "Landroid/app/job/JobParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final jobService:Landroid/app/job/JobService;


# direct methods
.method public constructor <init>(Landroid/app/job/JobService;Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/amazon/kcp/notifications/NotificationsPublishingJobService$JobTask;->jobService:Landroid/app/job/JobService;

    .line 44
    iput-object p2, p0, Lcom/amazon/kcp/notifications/NotificationsPublishingJobService$JobTask;->context:Landroid/content/Context;

    return-void
.end method

.method private displayNotification(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    .line 68
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderNotificationsManager()Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;

    move-result-object v0

    .line 71
    :try_start_0
    invoke-interface {v0, p2}, Lcom/amazon/reader/notifications/ReaderNotificationsManager;->parseMessage(Landroid/os/Bundle;)Lcom/amazon/reader/notifications/message/NotificationMessage;

    move-result-object p2

    .line 72
    invoke-static {p1, p2}, Lcom/amazon/kcp/notifications/PushNotificationBuilderFactory;->constructNotificationBuilder(Landroid/content/Context;Lcom/amazon/reader/notifications/message/NotificationMessage;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 75
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getNotificationController()Lcom/amazon/kcp/application/AndroidNotificationController;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/application/AndroidNotificationController;->displayPushNotification(Landroid/app/Notification$Builder;Lcom/amazon/reader/notifications/message/NotificationMessage;)V
    :try_end_0
    .catch Lcom/amazon/reader/notifications/exception/MessageParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 79
    sget-object p2, Lcom/amazon/kcp/notifications/NotificationsPublishingJobService;->TAG:Ljava/lang/String;

    const-string v0, "Failure in displaying notification, unable to parse message"

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/app/job/JobParameters;)Landroid/app/job/JobParameters;
    .locals 3

    const/4 v0, 0x0

    .line 49
    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/amazon/kcp/notifications/NotificationsPublishingJobService$JobTask;->context:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/amazon/kcp/notifications/NotificationsPublishingJobService$JobTask;->displayNotification(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 51
    aget-object p1, p1, v0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, [Landroid/app/job/JobParameters;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/notifications/NotificationsPublishingJobService$JobTask;->doInBackground([Landroid/app/job/JobParameters;)Landroid/app/job/JobParameters;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/app/job/JobParameters;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/notifications/NotificationsPublishingJobService$JobTask;->jobService:Landroid/app/job/JobService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Landroid/app/job/JobParameters;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/notifications/NotificationsPublishingJobService$JobTask;->onPostExecute(Landroid/app/job/JobParameters;)V

    return-void
.end method
