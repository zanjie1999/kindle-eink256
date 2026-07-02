.class Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$6;
.super Ljava/lang/Object;
.source "ReplicaViewGestureDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->moveToPageWithoutHideCurl(I)V
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

    .line 970
    iput-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$6;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    iput p2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$6;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 973
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$6;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    invoke-static {v0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->access$100(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;)Ljava/lang/Integer;

    move-result-object v0

    monitor-enter v0

    .line 974
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 979
    iget-object v3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$6;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    invoke-static {v3}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->access$100(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$6;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    invoke-static {v3}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->access$100(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_0

    iget-object v3, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$6;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    iget-wide v3, v3, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->lastCurlStartTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x258

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    .line 983
    iget-object v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$6;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    iget-object v1, v1, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    iget v2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$6;->val$index:I

    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getContentPageIndexFromDisplayedPosition(I)Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v1

    .line 984
    iget-object v2, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$6;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    iget-object v2, v2, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->moveToPage(Lcom/amazon/android/docviewer/mapper/PageIndex;Z)V

    .line 986
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
