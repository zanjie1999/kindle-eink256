.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$NewReplicaPageReachedListener;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Lcom/amazon/nwstd/replica/INewPageReachedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NewReplicaPageReachedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
    .locals 0

    .line 1957
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$NewReplicaPageReachedListener;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewPageReached()V
    .locals 2

    .line 1960
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$NewReplicaPageReachedListener;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isNeutronPhase1Enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1961
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$NewReplicaPageReachedListener;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->showTapToTextTutorial()V

    .line 1964
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$NewReplicaPageReachedListener;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getReplicaBehaviorMetricsHelper()Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->incrementReplicaScreenViewsMetric()V

    .line 1967
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$NewReplicaPageReachedListener;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->hasNextPage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1968
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$NewReplicaPageReachedListener;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getReplicaBehaviorMetricsHelper()Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->setReplicaViewLastPageAsReached()V

    .line 1970
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$NewReplicaPageReachedListener;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->refreshActionBar()V

    .line 1971
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$NewReplicaPageReachedListener;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isNeutronPhase1Enabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$NewReplicaPageReachedListener;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iget-object v1, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    if-eqz v1, :cond_2

    .line 1973
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$NewReplicaPageReachedListener;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    .line 1974
    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$1700(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1975
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$NewReplicaPageReachedListener;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$1900(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$NewReplicaPageReachedListener;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$1800(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setSeekPosition(I)V

    :cond_2
    return-void
.end method
