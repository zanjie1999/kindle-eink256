.class public final Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener$onClick$asyncTask$1;
.super Landroid/os/AsyncTask;
.source "AuthorSubscriptionsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthorSubscriptionsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthorSubscriptionsController.kt\ncom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener$onClick$asyncTask$1\n*L\n1#1,505:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 371
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener$onClick$asyncTask$1;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    const-string v0, "arg0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener$onClick$asyncTask$1;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;->access$getAsin$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->getCachedFollowStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UnfollowedAuthor"

    const-string v1, "AffinityUnfollow"

    .line 385
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener$onClick$asyncTask$1;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;->access$getAsin$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener$onClick$asyncTask$1;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;

    iget-object v3, v3, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;

    invoke-static {v3}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;)Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->getRefTagFeatureIdPartial()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->unfollow(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 386
    sget-object v3, Lcom/amazon/ea/metrics/FollowTheAuthorActions;->CLICK_UNFOLLOW:Lcom/amazon/ea/metrics/FollowTheAuthorActions;

    goto :goto_0

    :cond_0
    const-string v0, "FollowedAuthor"

    const-string v1, "AffinityFollow"

    .line 390
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener$onClick$asyncTask$1;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;->access$getAsin$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener$onClick$asyncTask$1;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;

    iget-object v3, v3, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;

    invoke-static {v3}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;)Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->getRefTagFeatureIdPartial()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->follow(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 391
    sget-object v3, Lcom/amazon/ea/metrics/FollowTheAuthorActions;->CLICK_FOLLOW:Lcom/amazon/ea/metrics/FollowTheAuthorActions;

    .line 395
    :goto_0
    sget-object v4, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-virtual {v4, v0}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    .line 396
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v4, "DidAnything"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 397
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener$onClick$asyncTask$1;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;

    iget-object v0, v0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;)Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "AuthorFollowStatusUpdateErrorV2_EA"

    if-eqz v2, :cond_1

    .line 400
    :try_start_1
    sget-object v3, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-virtual {v3, v0, p1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    goto :goto_1

    .line 402
    :cond_1
    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener$onClick$asyncTask$1;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;

    iget-object v3, v3, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;

    invoke-static {v3}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;)Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    move-result-object v3

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v4, Lcom/amazon/ea/metrics/FollowTheAuthorActions;->UPDATE_STATUS_ERROR:Lcom/amazon/ea/metrics/FollowTheAuthorActions;

    invoke-static {v3, v4}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 403
    sget-object v3, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-virtual {v3, v0, v5}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 407
    :goto_1
    invoke-static {v5}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v3, "rsMetadata"

    .line 408
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "MetricsTag"

    iget-object v4, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener$onClick$asyncTask$1;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;

    iget-object v4, v4, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;

    invoke-static {v4}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;)Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    move-result-object v4

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v3, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v4, "EndActionsPlugin.sdk"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v3

    const-string v4, "AnyActionsFollowAuthorWidget"

    invoke-interface {v3, v4, v1, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move p1, v2

    goto :goto_2

    :catch_0
    move-exception v0

    .line 414
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener$onClick$asyncTask$1;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;

    iget-object v1, v1, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->access$getTAG$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 377
    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 371
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener$onClick$asyncTask$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener$onClick$asyncTask$1;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;->access$getAsin$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->getCachedFollowStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz p1, :cond_1

    .line 424
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener$onClick$asyncTask$1;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;->access$getAsin$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->storeFollowStatus(Ljava/lang/String;Z)V

    .line 433
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener$onClick$asyncTask$1;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener$onClick$asyncTask$1;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;->access$getAsin$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->access$configureAffinityViews(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;Ljava/lang/String;Z)V

    goto :goto_1

    .line 425
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener$onClick$asyncTask$1;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener$onClick$asyncTask$1;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;->access$getAsin$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->access$configureAffinityOnFailure(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 435
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "AuthorFollowStatusUpdateError"

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener$onClick$asyncTask$1;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;

    iget-object v0, v0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->access$getTAG$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error when processing author subscription status"

    invoke-static {v0, v1, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 371
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener$onClick$asyncTask$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener$onClick$asyncTask$1;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;

    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;->access$getAsin$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->access$configureAffinityInProgress(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;Ljava/lang/String;)V

    return-void
.end method
