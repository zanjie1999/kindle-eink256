.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$3;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;)V
    .locals 0

    .line 3105
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$3;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 3

    .line 3113
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$3;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iget-object v1, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    if-eqz v1, :cond_1

    .line 3114
    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$3100(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$3;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v1, v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iget-object v1, v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$3;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v2, v2, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getOrientation()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->isFirstPage(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Z

    move-result v0

    const-string v1, "NewsstandReplicaView"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$3;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getPageType()Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    move-result-object v0

    sget-object v2, Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;->NORMAL:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3115
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v2, "TapOnCoverReplicaLink"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3117
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v2, "TapOnRegularReplicaLink"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 3120
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$3;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    new-instance v1, Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-direct {v1, p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(I)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openImageViewAt(Lcom/amazon/android/docviewer/mapper/PageIndex;ZZ)V

    return-void
.end method
