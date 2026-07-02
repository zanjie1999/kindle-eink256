.class Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$5;
.super Ljava/lang/Object;
.source "ReplicaViewGestureDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->moveToPageAndHideCurl(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;I)V
    .locals 0

    .line 921
    iput-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$5;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    iput p2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$5;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 924
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$5;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    invoke-static {v0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->access$100(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;)Ljava/lang/Integer;

    move-result-object v0

    monitor-enter v0

    .line 927
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 931
    iget-object v3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$5;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    invoke-static {v3}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->access$200(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$5;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    iget-wide v3, v3, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->lastCurlEndTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xc8

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3

    .line 933
    iget-object v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$5;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    invoke-static {v1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->access$300(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 934
    iget-object v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$5;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    iget-object v1, v1, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    iget v2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$5;->val$index:I

    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getContentPageIndexFromDisplayedPosition(I)Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 941
    iget-object v3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$5;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    iget-object v3, v3, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getOrientation()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$5;->val$index:I

    iget-object v5, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$5;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    iget-object v5, v5, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    .line 942
    invoke-virtual {v5}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v5

    check-cast v5, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-virtual {v5}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getPageCount()I

    move-result v5

    if-ne v3, v5, :cond_0

    iget v3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$5;->val$index:I

    rem-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 944
    iget-object v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$5;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    iget-object v1, v1, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    iget v3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$5;->val$index:I

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getContentPageIndexFromDisplayedPosition(I)Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v1

    :cond_0
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 947
    :goto_0
    invoke-static {v2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 948
    iget-object v2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$5;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    iget-object v2, v2, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v2, v1, v3}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->moveToPage(Lcom/amazon/android/docviewer/mapper/PageIndex;Z)V

    .line 951
    :cond_2
    iget-object v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$5;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    invoke-static {v1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->access$400(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;)V

    .line 953
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
