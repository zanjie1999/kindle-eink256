.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$18;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IBooleanCallback;


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

    .line 2505
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$18;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Z)V
    .locals 2

    .line 2509
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$18;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2512
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->shouldCenterWhenOnePage(Z)V

    .line 2514
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->setDelayToLoadImages(I)V

    .line 2515
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$18;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getGestureDetector()Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$18;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$2000(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kindle/pagecurl/CurlView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->setCurlView(Lcom/amazon/kindle/pagecurl/CurlView;)V

    .line 2516
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$18;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne p1, v0, :cond_1

    .line 2518
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$18;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {p1, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$2200(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;Z)V

    goto :goto_0

    .line 2522
    :cond_0
    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->shouldCenterWhenOnePage(Z)V

    const/16 p1, 0x15e

    .line 2523
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->setDelayToLoadImages(I)V

    .line 2524
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$18;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getGestureDetector()Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->setCurlView(Lcom/amazon/kindle/pagecurl/CurlView;)V

    .line 2525
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$18;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$2000(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kindle/pagecurl/CurlView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/pagecurl/CurlView;->release()V

    .line 2526
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$18;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne p1, v0, :cond_1

    .line 2528
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$18;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$2300(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    :cond_1
    :goto_0
    return-void
.end method
