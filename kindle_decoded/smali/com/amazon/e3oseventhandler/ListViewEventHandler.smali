.class public Lcom/amazon/e3oseventhandler/ListViewEventHandler;
.super Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;
.source "ListViewEventHandler.java"


# static fields
.field private static final WIDGET_CLASS_NAME:Ljava/lang/String; = "com.amazon.e3oseventhandler.ListViewEventHandler"


# instance fields
.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;-><init>(Landroid/view/View;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->setWidgetView(Landroid/view/View;)V

    return-void
.end method

.method private getItemHeight(I)I
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    invoke-interface {v0, p1, v2, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 194
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    const/high16 v2, -0x80000000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 195
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 196
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object v0, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    add-int/2addr p1, v0

    return p1

    :cond_0
    return v1
.end method


# virtual methods
.method protected handleFlingEvent(Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;)V
    .locals 8

    .line 55
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-gez v0, :cond_1

    return-void

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 63
    iget-object v2, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 64
    iget-object v3, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    .line 65
    iget-object v4, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    .line 68
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget-object v7, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeight()I

    move-result v7

    if-gt v4, v7, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 71
    :goto_0
    sget-object v7, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;->Forward:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    if-ne p1, v7, :cond_6

    .line 72
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    sub-int v7, v1, v0

    invoke-virtual {p1, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget-object v7, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeight()I

    move-result v7

    if-le p1, v7, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v3, :cond_5

    :goto_1
    if-eq v1, v0, :cond_b

    .line 86
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->isScrollToLastPage(IIIZ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 87
    invoke-virtual {p0, v1, v6}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->scrollToPosition(IZ)V

    goto :goto_5

    .line 89
    :cond_4
    invoke-virtual {p0, v1, v5}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->scrollToPosition(IZ)V

    goto :goto_5

    :cond_5
    return-void

    :cond_6
    if-ltz v0, :cond_b

    .line 94
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result p1

    .line 95
    iget-object v1, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 97
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-gez v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    :goto_2
    add-int/lit8 v1, v0, -0x1

    move v2, v0

    :goto_3
    if-ltz v1, :cond_9

    .line 104
    invoke-direct {p0, v1}, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->getItemHeight(I)I

    move-result v3

    sub-int/2addr p1, v3

    if-gez p1, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_9
    :goto_4
    if-ne v2, v0, :cond_a

    if-eqz v6, :cond_b

    .line 112
    :cond_a
    invoke-virtual {p0, v2, v5}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->scrollToPosition(IZ)V

    :cond_b
    :goto_5
    return-void
.end method

.method protected handleFlingEventByPercentage(F)V
    .locals 10

    .line 120
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 126
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-gez v0, :cond_1

    return-void

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 132
    iget-object v3, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    .line 134
    iget-object v4, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    .line 135
    iget-object v5, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    .line 138
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    iget-object v8, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getHeight()I

    move-result v8

    if-gt v5, v8, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-lez v1, :cond_3

    add-int/lit8 v8, v3, -0x1

    if-ne v4, v8, :cond_3

    if-eqz v5, :cond_3

    return-void

    .line 149
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->isFirstRowFullyVisible()Z

    move-result v8

    if-nez v8, :cond_4

    add-int/lit8 v8, v3, -0x1

    if-le v8, v0, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    if-nez v5, :cond_5

    add-int/lit8 v8, v4, -0x1

    if-ltz v8, :cond_5

    add-int/lit8 v4, v4, -0x1

    :cond_5
    sub-int/2addr v4, v0

    add-int/2addr v4, v7

    int-to-float v4, v4

    mul-float v4, v4, p1

    float-to-int p1, v4

    if-nez p1, :cond_7

    if-lez v1, :cond_6

    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, -0x1

    :cond_7
    :goto_1
    add-int/2addr p1, v0

    int-to-double v8, p1

    .line 169
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int p1, v8

    if-gez p1, :cond_8

    const/4 p1, 0x0

    :cond_8
    if-eq p1, v0, :cond_a

    if-ge p1, v3, :cond_a

    .line 175
    invoke-virtual {p0, p1, v2, v3, v5}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->isScrollToLastPage(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 176
    invoke-virtual {p0, p1, v7}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->scrollToPosition(IZ)V

    goto :goto_2

    .line 178
    :cond_9
    invoke-virtual {p0, p1, v6}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->scrollToPosition(IZ)V

    :cond_a
    :goto_2
    return-void

    .line 121
    :cond_b
    :goto_3
    sget-object v0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scroll by percentage not possible as either ListViewreference is not resolved or the percentage value is 0. Percentage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected handleJump(FLcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;)V
    .locals 6

    .line 204
    iget-object p2, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getChildCount()I

    move-result p2

    .line 205
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 207
    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->getScaledPosition(F)I

    move-result p1

    .line 209
    iget-object v1, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 210
    iget-object v2, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->isFirstRowFullyVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    sget-boolean p1, Lcom/amazon/e3oseventhandler/E3OSLibraryUtils;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 214
    sget-object p1, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string p2, "Ignoring tap to scroll action as scrolling to same page as current page."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 220
    :cond_1
    iget-object v3, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    sub-int v2, v1, v2

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 222
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v5, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getBottom()I

    move-result v5

    if-gt v2, v5, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 224
    :goto_0
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->isScrollToLastPage(IIIZ)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 225
    invoke-virtual {p0, v1, v0, v2}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->isOnLastPage(IIZ)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 226
    sget-boolean p1, Lcom/amazon/e3oseventhandler/E3OSLibraryUtils;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 227
    sget-object p1, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string p2, "Not scrolling by tap as the scrolled position is already on last page."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 233
    :cond_4
    invoke-virtual {p0, p1, v3}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->scrollToPosition(IZ)V

    return-void

    .line 237
    :cond_5
    invoke-virtual {p0, p1, v4}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->scrollToPosition(IZ)V

    return-void
.end method

.method protected isFirstRowFullyVisible()Z
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 248
    sget-object v0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string v2, "GridView instance not found."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 251
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setWidgetViewInternal(Landroid/view/View;)V
    .locals 1

    .line 185
    invoke-super {p0, p1}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->setWidgetViewInternal(Landroid/view/View;)V

    .line 186
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 187
    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/amazon/e3oseventhandler/ListViewEventHandler;->mListView:Landroid/widget/ListView;

    :cond_0
    return-void
.end method
