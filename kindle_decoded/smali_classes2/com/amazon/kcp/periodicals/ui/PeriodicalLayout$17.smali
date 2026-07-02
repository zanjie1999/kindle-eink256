.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$17;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Lcom/amazon/kindle/pagecurl/CurlView$CurlViewReadyObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->initTask_CurlView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
    .locals 0

    .line 2494
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$17;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady()V
    .locals 2

    .line 2498
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$17;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$2000(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kindle/pagecurl/CurlView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->hideLeftRightPage()V

    .line 2500
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$17;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$17;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iget-object v1, v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getDisplayedPositionFromViewPagerPosition(I)I

    move-result v0

    .line 2501
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$17;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->curlViewMoveToPage(I)V

    return-void
.end method
