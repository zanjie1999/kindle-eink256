.class Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$GetStatusAsyncTask;
.super Landroid/os/AsyncTask;
.source "AuthorSubscriptionsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetStatusAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final asin:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;


# direct methods
.method public constructor <init>(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;Ljava/lang/String;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$GetStatusAsyncTask;->this$0:Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 301
    iput-object p2, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$GetStatusAsyncTask;->asin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .line 308
    :try_start_0
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$GetStatusAsyncTask;->asin:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$GetStatusAsyncTask;->this$0:Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->access$200(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->getFollowStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 310
    invoke-static {}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Subscription get failed."

    invoke-static {v0, v1, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 290
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$GetStatusAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 324
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$GetStatusAsyncTask;->asin:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->storeFollowStatus(Ljava/lang/String;Z)V

    .line 326
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$GetStatusAsyncTask;->this$0:Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$GetStatusAsyncTask;->asin:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->access$400(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 328
    invoke-static {}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error when fetching author subscription status"

    invoke-static {v0, v1, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "AuthorFollowStatusGetError"

    invoke-virtual {p1, v0}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 290
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$GetStatusAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
