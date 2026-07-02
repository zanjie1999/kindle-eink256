.class public Lcom/amazon/kcp/widget/Spinner;
.super Landroid/widget/AdapterView;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/widget/Spinner$RecycleBin;,
        Lcom/amazon/kcp/widget/Spinner$AdapterDataSetObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field mDataChanged:Z

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field mFirstPosition:I

.field mHeightMeasureSpec:I

.field mItemCount:I

.field mNextSelectedPosition:I

.field mOldItemCount:I

.field mSelectedPosition:I

.field private mTouchFrame:Landroid/graphics/Rect;

.field mWidthMeasureSpec:I

.field final recycleBin:Lcom/amazon/kcp/widget/Spinner$RecycleBin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance p1, Lcom/amazon/kcp/widget/Spinner$RecycleBin;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/widget/Spinner$RecycleBin;-><init>(Lcom/amazon/kcp/widget/Spinner;)V

    iput-object p1, p0, Lcom/amazon/kcp/widget/Spinner;->recycleBin:Lcom/amazon/kcp/widget/Spinner$RecycleBin;

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/amazon/kcp/widget/Spinner;->mItemCount:I

    const/4 p1, 0x1

    .line 68
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setFocusable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/widget/Spinner;Landroid/os/Parcelable;)V
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/widget/Spinner;)Landroid/os/Parcelable;
    .locals 0

    .line 32
    invoke-virtual {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/widget/Spinner;Landroid/view/View;Z)V
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Landroid/widget/AdapterView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/amazon/kcp/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/amazon/kcp/widget/Spinner;->mNextSelectedPosition:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .line 78
    iget v0, p0, Lcom/amazon/kcp/widget/Spinner;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 79
    iget v1, p0, Lcom/amazon/kcp/widget/Spinner;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public pointToPosition(II)I
    .locals 7

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/widget/Spinner;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/widget/Spinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 119
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_1

    return v2

    .line 125
    :cond_1
    iget v3, p0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    iget v4, p0, Lcom/amazon/kcp/widget/Spinner;->mFirstPosition:I

    sub-int/2addr v3, v4

    move v4, v3

    :goto_0
    if-ltz v4, :cond_3

    .line 129
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 130
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 131
    invoke-virtual {v5, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 132
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 133
    iget p1, p0, Lcom/amazon/kcp/widget/Spinner;->mFirstPosition:I

    add-int/2addr p1, v4

    return p1

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v1, :cond_4

    .line 140
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 141
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 142
    invoke-virtual {v4, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 143
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 144
    iget p1, p0, Lcom/amazon/kcp/widget/Spinner;->mFirstPosition:I

    add-int/2addr p1, v3

    return p1

    :cond_4
    return v2
.end method

.method rememberSyncState()V
    .locals 1

    .line 155
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 157
    iget v0, p0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 32
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/widget/Spinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 87
    invoke-interface {v0, v1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 91
    new-instance p1, Lcom/amazon/kcp/widget/Spinner$AdapterDataSetObserver;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/widget/Spinner$AdapterDataSetObserver;-><init>(Lcom/amazon/kcp/widget/Spinner;)V

    iput-object p1, p0, Lcom/amazon/kcp/widget/Spinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 92
    iget-object v1, p0, Lcom/amazon/kcp/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, p1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 93
    iget p1, p0, Lcom/amazon/kcp/widget/Spinner;->mItemCount:I

    iput p1, p0, Lcom/amazon/kcp/widget/Spinner;->mOldItemCount:I

    .line 94
    iget-object p1, p0, Lcom/amazon/kcp/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/widget/Spinner;->mItemCount:I

    if-lez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 95
    :goto_0
    iput p1, p0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    .line 96
    iput p1, p0, Lcom/amazon/kcp/widget/Spinner;->mNextSelectedPosition:I

    .line 98
    :cond_2
    iput-boolean v0, p0, Lcom/amazon/kcp/widget/Spinner;->mDataChanged:Z

    .line 99
    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/amazon/kcp/widget/Spinner;->mNextSelectedPosition:I

    .line 105
    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V

    return-void
.end method
