.class public Lcom/amazon/kindle/nln/pageflip/CenterLockScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "CenterLockScrollListener.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kindle/nln/pageflip/CenterLockScrollListener;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/nln/pageflip/CenterLockScrollListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/pageflip/CenterLockScrollListener;->mAutoSet:Z

    return-void
.end method

.method private findTargetPosition(Landroidx/recyclerview/widget/LinearLayoutManager;II)I
    .locals 8

    .line 88
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 90
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    const/4 v4, -0x1

    const v5, 0x7fffffff

    :goto_1
    if-gt v2, v3, :cond_4

    .line 93
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_3

    :cond_1
    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    :goto_2
    add-int/2addr v7, v6

    div-int/lit8 v7, v7, 0x2

    sub-int v6, p2, v7

    .line 100
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v5, :cond_3

    move v4, v2

    move v5, v6

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 109
    :cond_4
    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public lockToNearestPage(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .line 51
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 53
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 56
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-direct {p0, v0, v2, v1}, Lcom/amazon/kindle/nln/pageflip/CenterLockScrollListener;->findTargetPosition(Landroidx/recyclerview/widget/LinearLayoutManager;II)I

    move-result v0

    .line 57
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 63
    :cond_0
    sget-object p1, Lcom/amazon/kindle/nln/pageflip/CenterLockScrollListener;->TAG:Ljava/lang/String;

    const-string v0, "Tried to lock to a page of a RecyclerView that had a null or empty adapter."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/amazon/kindle/nln/pageflip/CenterLockScrollListener;->mAutoSet:Z

    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 28
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 30
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 31
    instance-of v1, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    invoke-virtual {v1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->isShowingPlaceholders()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    .line 34
    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_2

    .line 40
    iget-boolean p2, p0, Lcom/amazon/kindle/nln/pageflip/CenterLockScrollListener;->mAutoSet:Z

    if-nez p2, :cond_1

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/nln/pageflip/CenterLockScrollListener;->lockToNearestPage(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    .line 43
    :cond_1
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/pageflip/CenterLockScrollListener;->mAutoSet:Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    if-ne p2, p1, :cond_3

    .line 46
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/pageflip/CenterLockScrollListener;->mAutoSet:Z

    :cond_3
    :goto_0
    return-void
.end method
