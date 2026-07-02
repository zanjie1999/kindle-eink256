.class Lcom/amazon/kcp/widget/Gallery$FlingRunnable;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingX:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/amazon/kcp/widget/Gallery;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/widget/Gallery;)V
    .locals 1

    .line 937
    iput-object p1, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->this$0:Lcom/amazon/kcp/widget/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 938
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;
    .locals 0

    .line 926
    iget-object p0, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/widget/Gallery$FlingRunnable;Z)V
    .locals 0

    .line 926
    invoke-direct {p0, p1}, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method private endFling(Z)V
    .locals 2

    .line 974
    iget-object v0, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    if-eqz p1, :cond_0

    .line 976
    iget-object p1, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->this$0:Lcom/amazon/kcp/widget/Gallery;

    invoke-static {p1}, Lcom/amazon/kcp/widget/Gallery;->access$800(Lcom/amazon/kcp/widget/Gallery;)V

    :cond_0
    return-void
.end method

.method private startCommon()V
    .locals 2

    .line 942
    iget-object v0, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->this$0:Lcom/amazon/kcp/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 943
    iget-object v0, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->this$0:Lcom/amazon/kcp/widget/Gallery;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/widget/Gallery;->access$602(Lcom/amazon/kcp/widget/Gallery;Z)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 981
    iget-object v0, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->this$0:Lcom/amazon/kcp/widget/Gallery;

    iget v1, v0, Lcom/amazon/kcp/widget/Spinner;->mItemCount:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 982
    invoke-direct {p0, v2}, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->endFling(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 986
    invoke-static {v0, v1}, Lcom/amazon/kcp/widget/Gallery;->access$902(Lcom/amazon/kcp/widget/Gallery;Z)Z

    .line 987
    iget-object v0, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 988
    iget-object v1, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    .line 992
    iget v3, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->mLastFlingX:I

    sub-int/2addr v3, v1

    if-lez v3, :cond_1

    .line 997
    iget-object v4, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->this$0:Lcom/amazon/kcp/widget/Gallery;

    iget v5, v4, Lcom/amazon/kcp/widget/Spinner;->mFirstPosition:I

    invoke-static {v4, v5}, Lcom/amazon/kcp/widget/Gallery;->access$1002(Lcom/amazon/kcp/widget/Gallery;I)I

    .line 999
    iget-object v4, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->this$0:Lcom/amazon/kcp/widget/Gallery;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->this$0:Lcom/amazon/kcp/widget/Gallery;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->this$0:Lcom/amazon/kcp/widget/Gallery;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    .line 1002
    :cond_1
    iget-object v4, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->this$0:Lcom/amazon/kcp/widget/Gallery;

    iget v5, v4, Lcom/amazon/kcp/widget/Spinner;->mFirstPosition:I

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Lcom/amazon/kcp/widget/Gallery;->access$1002(Lcom/amazon/kcp/widget/Gallery;I)I

    .line 1004
    iget-object v4, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->this$0:Lcom/amazon/kcp/widget/Gallery;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->this$0:Lcom/amazon/kcp/widget/Gallery;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->this$0:Lcom/amazon/kcp/widget/Gallery;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    neg-int v4, v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1007
    :goto_0
    iget-object v4, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->this$0:Lcom/amazon/kcp/widget/Gallery;

    invoke-virtual {v4, v3}, Lcom/amazon/kcp/widget/Gallery;->trackMotionScroll(I)V

    if-eqz v0, :cond_2

    .line 1009
    iget-object v0, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->this$0:Lcom/amazon/kcp/widget/Gallery;

    invoke-static {v0}, Lcom/amazon/kcp/widget/Gallery;->access$900(Lcom/amazon/kcp/widget/Gallery;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1010
    iput v1, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 1011
    iget-object v0, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->this$0:Lcom/amazon/kcp/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1013
    :cond_2
    invoke-direct {p0, v2}, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->endFling(Z)V

    :goto_1
    return-void
.end method

.method public startUsingDistance(I)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 959
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->startCommon()V

    const/4 v0, 0x0

    .line 960
    iput v0, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 961
    iget-object v1, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    neg-int v4, p1

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->this$0:Lcom/amazon/kcp/widget/Gallery;

    invoke-static {p1}, Lcom/amazon/kcp/widget/Gallery;->access$700(Lcom/amazon/kcp/widget/Gallery;)I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 962
    iget-object p1, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->this$0:Lcom/amazon/kcp/widget/Gallery;

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startUsingVelocity(I)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 949
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->startCommon()V

    if-gez p1, :cond_1

    const v0, 0x7fffffff

    const v2, 0x7fffffff

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 952
    :goto_0
    iput v2, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 953
    iget-object v1, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v4, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 954
    iget-object p1, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->this$0:Lcom/amazon/kcp/widget/Gallery;

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop(Z)V
    .locals 1

    .line 966
    iget-object v0, p0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->this$0:Lcom/amazon/kcp/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 967
    invoke-direct {p0, p1}, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->endFling(Z)V

    return-void
.end method
