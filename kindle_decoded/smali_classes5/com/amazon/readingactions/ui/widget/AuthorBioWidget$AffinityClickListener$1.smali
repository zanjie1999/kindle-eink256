.class Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;
.super Landroid/os/AsyncTask;
.source "AuthorBioWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic this$1:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->this$1:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .line 584
    :try_start_0
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->this$1:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->access$300(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->getCachedFollowStatus(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 585
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->this$1:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;->CLICK_UNFOLLOW:Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 586
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->this$1:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->access$300(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->this$1:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    iget-object v0, v0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    iget-object v0, v0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->unfollow(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 588
    :cond_0
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->this$1:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;->CLICK_FOLLOW:Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 589
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->this$1:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->access$300(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->this$1:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    iget-object v0, v0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    iget-object v0, v0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->follow(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 591
    invoke-static {}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Subscription state could not be changed"

    invoke-static {v0, v1, p1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 592
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 566
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5

    .line 599
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->this$1:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->access$300(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->getCachedFollowStatus(Ljava/lang/String;)Z

    move-result v0

    .line 601
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->this$1:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    iget-object v1, v1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    iget-object v1, v1, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v1

    .line 602
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v2, "AuthorFollowStatusUpdateErrorV2_SA_BSE"

    const/4 v3, 0x1

    if-nez p1, :cond_0

    .line 603
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->this$1:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v4, "AffinityStatusChangeError"

    invoke-static {v4, p1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/startactions/metrics/Metric;->addError(Ljava/lang/String;)V

    .line 605
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->this$1:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    .line 606
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "Error.AffinityStatusChangeError"

    invoke-interface {p1, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    const-string v4, "AnyActionsAuthorBioWidget"

    invoke-interface {v1, v4, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    .line 611
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->this$1:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    iget-object v1, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->access$300(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->access$600(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;Ljava/lang/String;Z)V

    .line 612
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->this$1:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;->UPDATE_STATUS_ERROR:Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 613
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-virtual {p1, v2, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    return-void

    .line 617
    :cond_0
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 619
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->this$1:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->access$300(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->storeFollowStatus(Ljava/lang/String;Z)V

    if-eqz v0, :cond_1

    .line 623
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->this$1:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "AffinityStatusFollowedCount"

    invoke-static {v2, p1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    .line 624
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->this$1:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "AffinityStatusFollowed"

    invoke-static {v2, p1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    goto :goto_0

    .line 626
    :cond_1
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->this$1:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "AffinityStatusUnFollowedCount"

    invoke-static {v2, p1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    .line 627
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->this$1:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "AffinityStatusUnFollowed"

    invoke-static {v2, p1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 631
    :goto_0
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->this$1:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    iget-object v1, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->access$300(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->access$200(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;Ljava/lang/String;Z)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 566
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 569
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->this$1:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    iget-object v0, v0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    .line 570
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->this$1:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->access$300(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AuthorAsin"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->this$1:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->access$400(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Index"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->this$1:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->access$300(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->getCachedFollowStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AffinityUnfollow"

    goto :goto_0

    :cond_0
    const-string v1, "AffinityFollow"

    .line 575
    :goto_0
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v2

    const-string v3, "AnyActionsAuthorBioWidget"

    invoke-interface {v2, v3, v1, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 578
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;->this$1:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    iget-object v1, v0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;->access$300(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->access$500(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;Ljava/lang/String;)V

    return-void
.end method
