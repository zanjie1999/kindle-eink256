.class Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$FlipFollowAuthorStatusAsyncTask;
.super Landroid/os/AsyncTask;
.source "AuthorSubscriptionsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlipFollowAuthorStatusAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final asin:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;


# direct methods
.method public constructor <init>(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;Ljava/lang/String;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$FlipFollowAuthorStatusAsyncTask;->this$0:Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 348
    iput-object p2, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$FlipFollowAuthorStatusAsyncTask;->asin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 337
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$FlipFollowAuthorStatusAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .line 369
    :try_start_0
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$FlipFollowAuthorStatusAsyncTask;->asin:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->getCachedFollowStatus(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "UnfollowedAuthor"

    const-string v0, "AffinityUnfollow"

    .line 372
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$FlipFollowAuthorStatusAsyncTask;->asin:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$FlipFollowAuthorStatusAsyncTask;->this$0:Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;

    invoke-static {v2}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->access$500(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v2

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->unfollow(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 373
    sget-object v2, Lcom/amazon/ea/metrics/FollowTheAuthorActions;->CLICK_UNFOLLOW:Lcom/amazon/ea/metrics/FollowTheAuthorActions;

    goto :goto_0

    :cond_0
    const-string p1, "FollowedAuthor"

    const-string v0, "AffinityFollow"

    .line 377
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$FlipFollowAuthorStatusAsyncTask;->asin:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$FlipFollowAuthorStatusAsyncTask;->this$0:Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;

    invoke-static {v2}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->access$600(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v2

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->follow(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 378
    sget-object v2, Lcom/amazon/ea/metrics/FollowTheAuthorActions;->CLICK_FOLLOW:Lcom/amazon/ea/metrics/FollowTheAuthorActions;

    .line 382
    :goto_0
    sget-object v3, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-virtual {v3, p1}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    .line 383
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v3, "DidAnything"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 384
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$FlipFollowAuthorStatusAsyncTask;->this$0:Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->access$700(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object p1

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "AuthorFollowStatusUpdateErrorV2_EA"

    if-eqz v1, :cond_1

    .line 387
    :try_start_1
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    goto :goto_1

    .line 389
    :cond_1
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$FlipFollowAuthorStatusAsyncTask;->this$0:Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;

    invoke-static {v1}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->access$800(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v2, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;->UPDATE_STATUS_ERROR:Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 390
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-virtual {v1, p1, v4}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 394
    :goto_1
    invoke-static {v4}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object p1

    const-string v1, "MetricsTag"

    .line 395
    iget-object v2, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$FlipFollowAuthorStatusAsyncTask;->this$0:Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;

    invoke-static {v2}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->access$900(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v2

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    const-string v2, "AnyActionsFollowAuthorWidget"

    invoke-interface {v1, v2, v0, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 400
    invoke-static {}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 337
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$FlipFollowAuthorStatusAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 408
    :try_start_0
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$FlipFollowAuthorStatusAsyncTask;->asin:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->getCachedFollowStatus(Ljava/lang/String;)Z

    move-result p1

    .line 409
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$FlipFollowAuthorStatusAsyncTask;->this$0:Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$FlipFollowAuthorStatusAsyncTask;->asin:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->access$400(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;Ljava/lang/String;Z)V

    .line 412
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$FlipFollowAuthorStatusAsyncTask;->asin:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->storeFollowStatus(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 414
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "AuthorFollowStatusUpdateError"

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error when processing author subscription status"

    invoke-static {v0, v1, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$FlipFollowAuthorStatusAsyncTask;->this$0:Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$FlipFollowAuthorStatusAsyncTask;->asin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->getAffinityButtonForAsin(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    sget v1, Lcom/amazon/kindle/ea/R$string;->anyactions_author_affinity_button_processing:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const/4 v1, 0x0

    .line 357
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    .line 358
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method
