.class Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$3;
.super Ljava/lang/Object;
.source "ReplicaViewPager.java"

# interfaces
.implements Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->setUp(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;Lcom/amazon/kindle/model/content/LocalBookState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

.field final synthetic val$parentLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$3;->this$0:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    iput-object p2, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$3;->val$parentLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$3;->this$0:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-static {v0, p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->access$002(Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;I)I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 105
    iget-object p2, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$3;->this$0:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object p2

    check-cast p2, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-virtual {p2, p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getDisplayedPositionFromViewPagerPosition(I)I

    move-result p1

    .line 106
    iget-object p2, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$3;->val$parentLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->curlViewMoveToPage(I)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method
