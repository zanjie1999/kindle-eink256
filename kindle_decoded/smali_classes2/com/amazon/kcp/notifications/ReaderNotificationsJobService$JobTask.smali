.class Lcom/amazon/kcp/notifications/ReaderNotificationsJobService$JobTask;
.super Landroid/os/AsyncTask;
.source "ReaderNotificationsJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/notifications/ReaderNotificationsJobService;
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

    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazon/kcp/notifications/ReaderNotificationsJobService$JobTask;->jobService:Landroid/app/job/JobService;

    .line 42
    iput-object p2, p0, Lcom/amazon/kcp/notifications/ReaderNotificationsJobService$JobTask;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/app/job/JobParameters;)Landroid/app/job/JobParameters;
    .locals 4

    const/4 v0, 0x0

    .line 47
    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->arePromotionsAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/amazon/kcp/notifications/ReaderNotificationsJobService$JobTask;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/amazon/kcp/notifications/util/ReaderNotificationIntentServiceHelper;->handleMessage(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 52
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/notifications/ReaderNotificationsJobService;->TAG:Ljava/lang/String;

    const-string v3, "FCM.MessageHandledSuccess"

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object v1, Lcom/amazon/kcp/notifications/ReaderNotificationsJobService;->TAG:Ljava/lang/String;

    .line 54
    aget-object p1, p1, v0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, [Landroid/app/job/JobParameters;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/notifications/ReaderNotificationsJobService$JobTask;->doInBackground([Landroid/app/job/JobParameters;)Landroid/app/job/JobParameters;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/app/job/JobParameters;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/notifications/ReaderNotificationsJobService$JobTask;->jobService:Landroid/app/job/JobService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Landroid/app/job/JobParameters;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/notifications/ReaderNotificationsJobService$JobTask;->onPostExecute(Landroid/app/job/JobParameters;)V

    return-void
.end method
