.class public Lcom/amazon/e3oseventhandler/GridViewEventHandler;
.super Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;
.source "GridViewEventHandler.java"


# static fields
.field private static final WIDGET_CLASS_NAME:Ljava/lang/String; = "com.amazon.e3oseventhandler.GridViewEventHandler"


# instance fields
.field private mGridView:Landroid/widget/GridView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;-><init>(Landroid/view/View;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->setWidgetView(Landroid/view/View;)V

    return-void
.end method

.method private getRowEndForPosition(I)I
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    .line 350
    rem-int v1, p1, v0

    sub-int v1, v0, v1

    rem-int/2addr v1, v0

    add-int/2addr p1, v1

    return p1
.end method

.method private getRowHeight(I)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 247
    :goto_0
    iget-object v3, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getNumColumns()I

    move-result v3

    if-ge v1, v3, :cond_1

    sub-int v3, p1, v1

    if-ltz v3, :cond_0

    .line 249
    iget-object v4, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    invoke-interface {v4, v3, v5, v6}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 250
    iget-object v4, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getColumnWidth()I

    move-result v4

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 251
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 252
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 253
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-le v3, v2, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private getRowStartForPosition(I)I
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    .line 361
    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    return p1
.end method

.method private getSymmetricalCount()I
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    if-nez v0, :cond_0

    .line 335
    sget-object v0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string v1, "GridView instance not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 338
    :cond_0
    invoke-virtual {v0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 339
    invoke-direct {p0, v0}, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->getRowEndForPosition(I)I

    move-result v0

    return v0
.end method

.method private isLastRowFullyVisible()Z
    .locals 6

    .line 143
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    .line 144
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->getSymmetricalCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_2

    sub-int v5, v1, v3

    sub-int/2addr v5, v4

    if-gez v5, :cond_0

    goto :goto_1

    .line 150
    :cond_0
    iget-object v4, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 151
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget-object v5, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    return v2
.end method


# virtual methods
.method protected handleFlingEvent(Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;)V
    .locals 10

    .line 50
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    .line 54
    iget-object v1, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    if-gez v1, :cond_1

    return-void

    .line 58
    :cond_1
    iget-object v2, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v2

    .line 61
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->getSymmetricalCount()I

    move-result v3

    .line 62
    iget-object v4, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    .line 64
    sget-object v5, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;->Forward:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne p1, v5, :cond_6

    sub-int p1, v2, v1

    move v5, p1

    :goto_0
    sub-int v8, p1, v0

    if-le v5, v8, :cond_3

    .line 70
    iget-object v8, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v8, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 71
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    iget-object v9, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v9}, Landroid/widget/GridView;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_2

    .line 72
    div-int p1, v2, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    :goto_1
    if-gez p1, :cond_4

    add-int/2addr v2, v7

    if-ge v2, v4, :cond_4

    .line 78
    div-int p1, v2, v0

    :cond_4
    mul-int p1, p1, v0

    .line 82
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->isLastRowFullyVisible()Z

    move-result v0

    if-eq p1, v1, :cond_d

    if-ltz p1, :cond_d

    .line 88
    invoke-direct {p0, v4}, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->getRowEndForPosition(I)I

    move-result v1

    .line 90
    invoke-virtual {p0, p1, v3, v1, v0}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->isScrollToLastPage(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    invoke-virtual {p0, p1, v7}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->scrollToPosition(IZ)V

    goto :goto_7

    .line 93
    :cond_5
    invoke-virtual {p0, p1, v6}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->scrollToPosition(IZ)V

    goto :goto_7

    :cond_6
    if-ltz v1, :cond_d

    .line 99
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getHeight()I

    move-result p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_8

    .line 102
    iget-object v3, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 104
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-gez v3, :cond_7

    add-int v2, v1, v0

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    move v2, v1

    const/4 v3, 0x0

    :goto_3
    add-int/lit8 v4, v2, -0x1

    const/4 v5, 0x0

    :goto_4
    if-ltz v4, :cond_b

    .line 113
    invoke-direct {p0, v4}, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->getRowHeight(I)I

    move-result v8

    sub-int/2addr p1, v8

    if-nez v5, :cond_9

    const/4 v5, 0x1

    goto :goto_5

    .line 118
    :cond_9
    iget-object v8, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v8}, Landroid/widget/GridView;->getVerticalSpacing()I

    move-result v8

    sub-int/2addr p1, v8

    :goto_5
    if-gez p1, :cond_a

    goto :goto_6

    :cond_a
    sub-int/2addr v4, v0

    sub-int/2addr v2, v0

    goto :goto_4

    .line 126
    :cond_b
    :goto_6
    div-int/2addr v2, v0

    mul-int v2, v2, v0

    if-ne v2, v1, :cond_c

    if-eqz v3, :cond_d

    :cond_c
    if-ltz v2, :cond_d

    .line 131
    invoke-virtual {p0, v2, v6}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->scrollToPosition(IZ)V

    :cond_d
    :goto_7
    return-void
.end method

.method protected handleFlingEventByPercentage(F)V
    .locals 10

    .line 161
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 168
    :cond_0
    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    .line 169
    iget-object v2, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v2

    if-gez v2, :cond_1

    return-void

    .line 174
    :cond_1
    iget-object v3, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v3

    .line 175
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->isLastRowFullyVisible()Z

    move-result v4

    .line 177
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->getSymmetricalCount()I

    move-result v5

    .line 178
    iget-object v6, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-lez v1, :cond_2

    add-int/lit8 v7, v6, -0x1

    if-ne v3, v7, :cond_2

    if-eqz v4, :cond_2

    return-void

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->isFirstRowFullyVisible()Z

    move-result v7

    if-nez v7, :cond_3

    add-int v7, v2, v0

    add-int/lit8 v8, v6, -0x1

    if-ge v7, v8, :cond_3

    move v2, v7

    :cond_3
    if-nez v4, :cond_4

    sub-int v7, v3, v0

    if-ltz v7, :cond_4

    move v3, v7

    :cond_4
    sub-int/2addr v3, v2

    const/4 v7, 0x1

    add-int/2addr v3, v7

    int-to-float v3, v3

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float v3, v3, v8

    int-to-float v8, v0

    div-float/2addr v3, v8

    float-to-double v8, v3

    .line 205
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v3, v8

    int-to-float v3, v3

    mul-float v3, v3, p1

    float-to-int p1, v3

    if-nez p1, :cond_6

    if-lez v1, :cond_5

    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, -0x1

    :cond_6
    :goto_0
    mul-int p1, p1, v0

    add-int/2addr p1, v2

    int-to-double v0, p1

    .line 213
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    const/4 v0, 0x0

    if-gez p1, :cond_7

    const/4 p1, 0x0

    :cond_7
    if-eq p1, v2, :cond_9

    if-ge p1, v6, :cond_9

    .line 218
    invoke-direct {p0, v6}, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->getRowEndForPosition(I)I

    move-result v1

    .line 220
    invoke-virtual {p0, p1, v5, v1, v4}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->isScrollToLastPage(IIIZ)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 221
    invoke-virtual {p0, p1, v7}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->scrollToPosition(IZ)V

    goto :goto_1

    .line 223
    :cond_8
    invoke-virtual {p0, p1, v0}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->scrollToPosition(IZ)V

    :cond_9
    :goto_1
    return-void

    .line 162
    :cond_a
    :goto_2
    sget-object v0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scroll by percentage not possible as either GridViewreference is not resolved or the percentage value is 0. Percentage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected handleJump(FLcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;)V
    .locals 9

    .line 264
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->getSymmetricalCount()I

    move-result p2

    .line 265
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 267
    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->getScaledPosition(F)I

    move-result p1

    .line 268
    iget-object v1, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    .line 269
    iget-object v2, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v2

    .line 271
    iget-object v3, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    sub-int v4, v2, v1

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 273
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v6, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getHeight()I

    move-result v6

    if-gt v3, v6, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 275
    :goto_0
    iget-object v6, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getNumColumns()I

    move-result v6

    .line 276
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->getRowStartForPosition(I)I

    move-result v7

    .line 277
    invoke-direct {p0, v0}, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->getRowEndForPosition(I)I

    move-result v8

    if-gt v1, p1, :cond_2

    add-int/2addr v1, v6

    sub-int/2addr v1, v4

    if-gt p1, v1, :cond_2

    .line 279
    invoke-virtual {p0}, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->isFirstRowFullyVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 280
    sget-boolean p1, Lcom/amazon/e3oseventhandler/E3OSLibraryUtils;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 281
    sget-object p1, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string p2, "Ignoring tap to scroll action as scrolling to same page as current page."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 287
    :cond_2
    invoke-virtual {p0, v7, p2, v8, v3}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->isScrollToLastPage(IIIZ)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 288
    invoke-virtual {p0, v2, v0, v3}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->isOnLastPage(IIZ)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 289
    sget-boolean p1, Lcom/amazon/e3oseventhandler/E3OSLibraryUtils;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 290
    sget-object p1, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string p2, "Not scrolling by tap as the scrolled position is already on last page."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 296
    :cond_4
    invoke-virtual {p0, p1, v4}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->scrollToPosition(IZ)V

    return-void

    .line 300
    :cond_5
    invoke-virtual {p0, p1, v5}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->scrollToPosition(IZ)V

    return-void
.end method

.method protected isFirstRowFullyVisible()Z
    .locals 4

    .line 309
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 310
    sget-object v0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string v2, "GridView instance not found."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 313
    :cond_0
    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 315
    iget-object v3, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 317
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-gez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public setWidgetViewInternal(Landroid/view/View;)V
    .locals 1

    .line 230
    invoke-super {p0, p1}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->setWidgetViewInternal(Landroid/view/View;)V

    .line 231
    instance-of v0, p1, Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 232
    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/amazon/e3oseventhandler/GridViewEventHandler;->mGridView:Landroid/widget/GridView;

    :cond_0
    return-void
.end method
