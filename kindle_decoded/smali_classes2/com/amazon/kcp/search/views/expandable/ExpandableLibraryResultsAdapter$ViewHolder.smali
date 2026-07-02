.class public final Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ExpandableLibraryResultsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter$ViewHolder;->this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final bindData(Landroid/content/Context;Lcom/amazon/kindle/model/content/IListableBook;)V
    .locals 10

    const-string v0, "metadata"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    const-string v1, "metadata.bookType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;

    check-cast p2, Lcom/amazon/kindle/content/GroupMetadata;

    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getInstance()Lcom/amazon/kindle/content/dao/LibraryDataCache;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/GroupMetadata;Lcom/amazon/kindle/content/dao/LibraryDataCache;)V

    .line 71
    sget-object p2, Lcom/amazon/kcp/library/LibraryContentFilter;->ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->applyFilter(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kindle/content/ILibraryService;)Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object p2

    if-eqz p2, :cond_1

    move-object v2, p2

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    check-cast p2, Lcom/amazon/kindle/content/ContentMetadata;

    invoke-direct {v0, p2}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    :cond_1
    move-object v2, v0

    .line 80
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    .line 82
    iget-object p2, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter$ViewHolder;->this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;

    invoke-static {p2}, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->access$getCoverDimensions$p(Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object p2

    iget v5, p2, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    .line 83
    iget-object p2, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter$ViewHolder;->this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;

    invoke-static {p2}, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->access$getCoverDimensions$p(Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object p2

    iget v6, p2, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    const/4 v7, 0x0

    .line 85
    sget-object p2, Lcom/amazon/kcp/search/SearchLRUCoverCacheUtils;->INSTANCE:Lcom/amazon/kcp/search/SearchLRUCoverCacheUtils;

    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchLRUCoverCacheUtils;->getNextPositionForLRUCache()I

    move-result v8

    .line 86
    sget-object v9, Lcom/amazon/kcp/cover/badge/BadgeSource;->LIBRARY:Lcom/amazon/kcp/cover/badge/BadgeSource;

    move-object v1, p1

    .line 77
    invoke-static/range {v1 .. v9}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->bindGridCover(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZIIIILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;

    return-void
.end method
