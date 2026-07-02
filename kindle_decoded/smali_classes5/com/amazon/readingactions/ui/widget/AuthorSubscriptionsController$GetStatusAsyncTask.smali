.class final Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$GetStatusAsyncTask;
.super Landroid/os/AsyncTask;
.source "AuthorSubscriptionsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
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

.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "asin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$GetStatusAsyncTask;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;

    .line 326
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$GetStatusAsyncTask;->asin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    const-string/jumbo v0, "voids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    :try_start_0
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$GetStatusAsyncTask;->asin:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$GetStatusAsyncTask;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;)Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->getRefTagFeatureIdPartial()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->getFollowStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 333
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$GetStatusAsyncTask;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->access$getTAG$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Subscription get failed."

    invoke-static {v0, v1, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 324
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$GetStatusAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 346
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$GetStatusAsyncTask;->asin:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->storeFollowStatus(Ljava/lang/String;Z)V

    .line 348
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$GetStatusAsyncTask;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$GetStatusAsyncTask;->asin:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->access$configureAffinityViews(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 350
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$GetStatusAsyncTask;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->access$getTAG$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error when fetching author subscription status"

    invoke-static {v0, v1, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 351
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "AuthorFollowStatusGetError"

    invoke-virtual {p1, v0}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 324
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$GetStatusAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
