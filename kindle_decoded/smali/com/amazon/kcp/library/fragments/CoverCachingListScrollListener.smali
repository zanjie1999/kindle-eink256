.class public Lcom/amazon/kcp/library/fragments/CoverCachingListScrollListener;
.super Ljava/lang/Object;
.source "CoverCachingListScrollListener.kt"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;


# instance fields
.field private final adapter:Landroid/widget/Adapter;

.field private final coverCachingPolicyHelper:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;


# direct methods
.method public constructor <init>(Landroid/widget/Adapter;Lcom/amazon/kcp/cover/ICoverCacheManager;Lcom/amazon/kindle/util/drawing/Dimension;)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageDimension"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/CoverCachingListScrollListener;->adapter:Landroid/widget/Adapter;

    .line 18
    new-instance p1, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-direct {p1, p0, p2, p3}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;-><init>(Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;Lcom/amazon/kcp/cover/ICoverCacheManager;Lcom/amazon/kindle/util/drawing/Dimension;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/CoverCachingListScrollListener;->coverCachingPolicyHelper:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    return-void
.end method


# virtual methods
.method public getBookId(I)Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CoverCachingListScrollListener;->adapter:Landroid/widget/Adapter;

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 49
    instance-of v0, p1, Lcom/amazon/kcp/library/ICoverCacheable;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/library/ICoverCacheable;

    invoke-interface {p1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CoverCachingListScrollListener;->adapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CoverCachingListScrollListener;->adapter:Landroid/widget/Adapter;

    instance-of v1, v0, Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    .line 43
    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p3, p2

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result p2

    .line 26
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result p3

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/CoverCachingListScrollListener;->coverCachingPolicyHelper:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-virtual {p1, p2, p3}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->onScroll(II)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CoverCachingListScrollListener;->coverCachingPolicyHelper:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result p1

    invoke-virtual {v0, p2, v1, p1}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->onScrollStateChange(III)V

    :cond_0
    return-void
.end method

.method public scrollStateFling()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public scrollStateIdle()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public scrollStateTouchScroll()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
