.class public Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;
.super Ljava/lang/Object;
.source "HeaderGridView.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/fragments/HeaderGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderViewGridAdapter"
.end annotation


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kcp/library/fragments/HeaderGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z

.field private mNumColumns:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kcp/library/fragments/HeaderGridView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    const/4 v0, 0x1

    .line 382
    iput v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    .line 390
    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 391
    instance-of p2, p2, Landroid/widget/Filterable;

    iput-boolean p2, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mIsFilterable:Z

    .line 392
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 393
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;)I
    .locals 0

    .line 375
    iget p0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    return p0
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kcp/library/fragments/HeaderGridView$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .line 417
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/fragments/HeaderGridView$FixedViewInfo;

    .line 418
    iget-boolean v0, v0, Lcom/amazon/kcp/library/fragments/HeaderGridView$FixedViewInfo;->isSelectable:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 3

    .line 449
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 450
    iget-boolean v2, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v2, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public getCount()I
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v0

    iget v1, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v0

    iget v1, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v0, v0, v1

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 608
    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 609
    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeadersCount()I
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    const-string v0, "Calling getItem() for invalid position. Returning null"

    const/4 v1, 0x0

    if-gez p1, :cond_0

    .line 483
    invoke-static {}, Lcom/amazon/kcp/library/fragments/HeaderGridView;->access$200()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 486
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v2

    iget v3, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v2, v2, v3

    if-ge p1, v2, :cond_2

    .line 488
    rem-int v0, p1, v3

    if-nez v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    div-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/fragments/HeaderGridView$FixedViewInfo;

    iget-object p1, p1, Lcom/amazon/kcp/library/fragments/HeaderGridView$FixedViewInfo;->data:Ljava/lang/Object;

    return-object p1

    :cond_1
    return-object v1

    :cond_2
    sub-int/2addr p1, v2

    .line 496
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_3

    .line 497
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 499
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 502
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/library/fragments/HeaderGridView;->access$200()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getItemId(I)J
    .locals 2

    .line 508
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v0

    iget v1, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v0, v0, v1

    .line 509
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    if-lt p1, v0, :cond_0

    sub-int/2addr p1, v0

    .line 511
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 567
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v0

    iget v1, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v0, v0, v1

    if-ge p1, v0, :cond_1

    .line 568
    rem-int v1, p1, v1

    if-eqz v1, :cond_1

    .line 570
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1

    .line 572
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    if-lt p1, v0, :cond_2

    sub-int/2addr p1, v0

    .line 574
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 576
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, -0x2

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const-string v0, "Calling getView() for invalid position. Returning dummy view."

    if-gez p1, :cond_0

    .line 530
    invoke-static {}, Lcom/amazon/kcp/library/fragments/HeaderGridView;->access$200()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v1

    iget v2, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v1, v1, v2

    if-ge p1, v1, :cond_3

    .line 536
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    div-int v1, p1, v2

    .line 537
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/fragments/HeaderGridView$FixedViewInfo;

    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/HeaderGridView$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 538
    iget v1, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    rem-int/2addr p1, v1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    if-nez p2, :cond_2

    .line 542
    new-instance p2, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :cond_2
    const/4 p1, 0x4

    .line 546
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 547
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-object p2

    :cond_3
    sub-int/2addr p1, v1

    .line 554
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_4

    .line 555
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_4

    .line 557
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 561
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/library/fragments/HeaderGridView;->access$200()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 585
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 522
    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(I)Z
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    .line 459
    invoke-static {}, Lcom/amazon/kcp/library/fragments/HeaderGridView;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v1, "calling isEnabled() for invalid position"

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v1

    iget v2, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v1, v1, v2

    if-ge p1, v1, :cond_2

    .line 464
    rem-int v1, p1, v2

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    div-int/2addr p1, v2

    .line 465
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/fragments/HeaderGridView$FixedViewInfo;

    iget-boolean p1, p1, Lcom/amazon/kcp/library/fragments/HeaderGridView$FixedViewInfo;->isSelectable:Z

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    sub-int/2addr p1, v1

    .line 470
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_3

    .line 471
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 473
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 593
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 594
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 407
    invoke-static {}, Lcom/amazon/kcp/library/fragments/HeaderGridView;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Number of columns must be 1 or more"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 410
    :cond_0
    iget v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    if-eq v0, p1, :cond_1

    .line 411
    iput p1, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    .line 412
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 601
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 602
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method
