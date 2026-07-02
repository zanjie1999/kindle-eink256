.class public final Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;
.super Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;
.source "ExpandableLibraryResultsAdapter.kt"

# interfaces
.implements Lcom/amazon/kcp/search/views/LibraryResultsAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter$ViewHolder;,
        Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter$Companion;

.field private static LIBRARY_RESULT_CAP:I


# instance fields
.field private coverDimensions:Lcom/amazon/kindle/util/drawing/Dimension;

.field private final gridCoverProvider:Lcom/amazon/kcp/cover/GridCoverProvider;

.field private interactionObserver:Lcom/amazon/kcp/search/views/LibraryItemInteractionObserver;

.field private itemViewId:I

.field private libraryResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->Companion:Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter$Companion;

    const/4 v0, -0x1

    .line 40
    sput v0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->LIBRARY_RESULT_CAP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;-><init>(Landroid/content/Context;)V

    .line 45
    sget v0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->LIBRARY_RESULT_CAP:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 46
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v2, "DebugSettings"

    .line 47
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "SearchLibraryResultsLimit"

    .line 48
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 46
    :cond_0
    sput v1, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->LIBRARY_RESULT_CAP:I

    :cond_1
    const/4 p1, 0x0

    .line 58
    invoke-static {p1}, Lcom/amazon/kindle/cover/ImageSizes;->getInstance(Ljava/util/Map;)Lcom/amazon/kindle/cover/ImageSizes;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/cover/ImageSizes;->getDimension(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->coverDimensions:Lcom/amazon/kindle/util/drawing/Dimension;

    .line 59
    sget p1, Lcom/amazon/kcp/search/R$id;->grid_search_result:I

    iput p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->itemViewId:I

    .line 60
    const-class p1, Lcom/amazon/kcp/cover/GridCoverProvider;

    invoke-static {p1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/amazon/kcp/cover/GridCoverProvider;

    iput-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->gridCoverProvider:Lcom/amazon/kcp/cover/GridCoverProvider;

    return-void
.end method

.method public static final synthetic access$getCoverDimensions$p(Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;)Lcom/amazon/kindle/util/drawing/Dimension;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->coverDimensions:Lcom/amazon/kindle/util/drawing/Dimension;

    return-object p0
.end method

.method public static final synthetic access$getInteractionObserver$p(Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;)Lcom/amazon/kcp/search/views/LibraryItemInteractionObserver;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->interactionObserver:Lcom/amazon/kcp/search/views/LibraryItemInteractionObserver;

    return-object p0
.end method

.method public static final synthetic access$getLIBRARY_RESULT_CAP$cp()I
    .locals 1

    .line 37
    sget v0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->LIBRARY_RESULT_CAP:I

    return v0
.end method

.method private final isSameResultsBasedOnASIN(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;)Z"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->libraryResults:Ljava/util/List;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return v1

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->libraryResults:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 176
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eq v0, v3, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_5

    .line 183
    iget-object v4, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->libraryResults:Ljava/util/List;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/model/content/IListableBook;

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/model/content/IListableBook;

    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v1

    if-eqz v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return v1
.end method

.method private final limitLibraryResultsForPerformance(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 210
    sget v0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->LIBRARY_RESULT_CAP:I

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->LIBRARY_RESULT_CAP:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 211
    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getTotalItemCount()I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->libraryResults:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    instance-of v0, p1, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter$ViewHolder;

    if-eqz v0, :cond_3

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->libraryResults:Ljava/util/List;

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapterKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string p2, "libraryResults is null when binding data to LibraryItemViewHolder"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-ltz p2, :cond_2

    .line 109
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->libraryResults:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/model/content/IListableBook;

    .line 115
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter$ViewHolder;

    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter$ViewHolder;->bindData(Landroid/content/Context;Lcom/amazon/kindle/model/content/IListableBook;)V

    .line 116
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter$onBindViewHolder$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter$onBindViewHolder$1;-><init>(Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;Lcom/amazon/kindle/model/content/IListableBook;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "holder.itemView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->itemViewId:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    goto :goto_1

    .line 110
    :cond_2
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapterKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Position is out of libraryResults size boundary when binding data to LibraryItemViewHolder"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->gridCoverProvider:Lcom/amazon/kcp/cover/GridCoverProvider;

    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->coverDimensions:Lcom/amazon/kindle/util/drawing/Dimension;

    iget v1, v0, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    iget v0, v0, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    const/4 v2, 0x0

    invoke-interface {p1, p2, v1, v0, v2}, Lcom/amazon/kcp/cover/GridCoverProvider;->newGridCover(Landroid/content/Context;III)Landroid/view/View;

    move-result-object p1

    const-string p2, "gridCoverProvider.newGri\u2026coverDimensions.width, 0)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    const/4 p2, 0x1

    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 100
    new-instance p2, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter$ViewHolder;-><init>(Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public final setCoverDimensions(Lcom/amazon/kindle/util/drawing/Dimension;)V
    .locals 1

    const-string v0, "dimension"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iput-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->coverDimensions:Lcom/amazon/kindle/util/drawing/Dimension;

    return-void
.end method

.method public setInteractionObserver(Lcom/amazon/kcp/search/views/LibraryItemInteractionObserver;)V
    .locals 1

    const-string v0, "interactionObserver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iput-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->interactionObserver:Lcom/amazon/kcp/search/views/LibraryItemInteractionObserver;

    return-void
.end method

.method public setResults(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->limitLibraryResultsForPerformance(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 125
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->libraryResults:Ljava/util/List;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->isSameResultsBasedOnASIN(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 133
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->setExpanded(Z)V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->libraryResults:Ljava/util/List;

    if-nez p1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    .line 139
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v2, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->libraryResults:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 141
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz p1, :cond_4

    .line 142
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 145
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->getExpanded()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, p1

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->getCollapsedSize()I

    move-result v3

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 146
    :goto_3
    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->getExpanded()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v2

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->getCollapsedSize()I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 148
    :goto_4
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_5
    if-ge v1, v5, :cond_8

    .line 151
    iget-object v6, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->libraryResults:Ljava/util/List;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kindle/model/content/IListableBook;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kindle/model/content/IListableBook;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_7

    .line 152
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    if-le v3, v4, :cond_9

    sub-int/2addr v3, v4

    .line 157
    invoke-virtual {p0, v4, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_6

    :cond_9
    if-le v4, v3, :cond_a

    sub-int/2addr v4, v3

    .line 159
    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    :cond_a
    :goto_6
    if-eq p1, v2, :cond_b

    .line 166
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->notifyTotalItemCountChange(I)V

    :cond_b
    return-void
.end method
