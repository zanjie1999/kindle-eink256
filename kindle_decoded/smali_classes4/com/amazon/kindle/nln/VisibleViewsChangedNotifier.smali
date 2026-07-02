.class public Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;
.super Ljava/lang/Object;
.source "VisibleViewsChangedNotifier.java"


# instance fields
.field private filterType:I

.field private firstCompletelyVisibleAdapterPosition:I

.field private firstVisibleAdapterPosition:I

.field private hasFilter:Z

.field private lastCompletelyVisibleAdapterPosition:I

.field private lastVisibleAdapterPosition:I

.field private listener:Lcom/amazon/kindle/nln/IOnScreenViewsChangedListener;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/amazon/kindle/nln/IOnScreenViewsChangedListener;I)V
    .locals 1

    const/4 v0, 0x1

    .line 65
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/amazon/kindle/nln/IOnScreenViewsChangedListener;IZ)V

    return-void
.end method

.method private constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/amazon/kindle/nln/IOnScreenViewsChangedListener;IZ)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    iput-object p2, p0, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;->listener:Lcom/amazon/kindle/nln/IOnScreenViewsChangedListener;

    .line 71
    iput p3, p0, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;->filterType:I

    .line 72
    iput-boolean p4, p0, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;->hasFilter:Z

    const/4 p1, -0x1

    .line 74
    iput p1, p0, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;->firstVisibleAdapterPosition:I

    .line 75
    iput p1, p0, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;->lastVisibleAdapterPosition:I

    .line 76
    iput p1, p0, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;->firstCompletelyVisibleAdapterPosition:I

    .line 77
    iput p1, p0, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;->lastCompletelyVisibleAdapterPosition:I

    return-void
.end method


# virtual methods
.method public updateVisibleViews(Z)V
    .locals 10

    .line 90
    iget-object v0, p0, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 92
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 93
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    .line 94
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v3

    .line 95
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-nez p1, :cond_0

    .line 97
    iget p1, p0, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;->firstVisibleAdapterPosition:I

    if-ne p1, v1, :cond_0

    iget p1, p0, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;->lastVisibleAdapterPosition:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;->firstCompletelyVisibleAdapterPosition:I

    if-ne p1, v2, :cond_0

    iget p1, p0, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;->lastCompletelyVisibleAdapterPosition:I

    if-eq p1, v3, :cond_6

    .line 102
    :cond_0
    iput v1, p0, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;->firstVisibleAdapterPosition:I

    .line 103
    iput v0, p0, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;->lastVisibleAdapterPosition:I

    .line 104
    iput v2, p0, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;->firstCompletelyVisibleAdapterPosition:I

    .line 105
    iput v3, p0, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;->lastCompletelyVisibleAdapterPosition:I

    .line 107
    new-instance p1, Ljava/util/ArrayList;

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    :goto_0
    if-gt v1, v0, :cond_5

    .line 115
    iget-object v7, p0, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 116
    iget-boolean v8, p0, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;->hasFilter:Z

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v8

    iget v9, p0, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;->filterType:I

    if-ne v8, v9, :cond_4

    :cond_1
    if-lt v1, v2, :cond_3

    if-gt v1, v3, :cond_3

    if-ne v5, v4, :cond_2

    .line 121
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 124
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 126
    :cond_3
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_5
    iget-object v0, p0, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;->listener:Lcom/amazon/kindle/nln/IOnScreenViewsChangedListener;

    invoke-interface {v0, p1, v5, v6}, Lcom/amazon/kindle/nln/IOnScreenViewsChangedListener;->onScreenViewsChanged(Ljava/util/List;II)V

    :cond_6
    return-void
.end method
