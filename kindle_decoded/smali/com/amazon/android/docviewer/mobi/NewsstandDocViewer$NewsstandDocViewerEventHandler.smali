.class Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$NewsstandDocViewerEventHandler;
.super Lcom/amazon/android/docviewer/KindleDocViewerEvents;
.source "NewsstandDocViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewsstandDocViewerEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;


# direct methods
.method private constructor <init>(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;)V
    .locals 0

    .line 776
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$NewsstandDocViewerEventHandler;->this$0:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleDocViewerEvents;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$1;)V
    .locals 0

    .line 776
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$NewsstandDocViewerEventHandler;-><init>(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;)V

    return-void
.end method


# virtual methods
.method public onDocViewerRefresh()V
    .locals 3

    .line 780
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$NewsstandDocViewerEventHandler;->this$0:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->access$400(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;)Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->getTextUserBehaviorMetric()Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$NewsstandDocViewerEventHandler;->this$0:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v1

    sget-object v2, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v1, v2, :cond_0

    .line 784
    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->increment()V

    .line 787
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$NewsstandDocViewerEventHandler;->this$0:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isNextPageAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 788
    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper$MetricsTrackingUserBehavior;->setLastPageReached(Z)V

    :cond_0
    return-void
.end method
