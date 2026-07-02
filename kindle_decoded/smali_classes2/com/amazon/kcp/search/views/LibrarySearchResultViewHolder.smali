.class public Lcom/amazon/kcp/search/views/LibrarySearchResultViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LibrarySearchResultViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final HRT_PADDING:I

.field private static final RESOURCES:Landroid/content/res/Resources;

.field private static final VERT_PADDING:I


# instance fields
.field private contentMetadata:Lcom/amazon/kindle/model/content/IListableBook;

.field private divider:Landroid/view/View;

.field private interactionObserver:Lcom/amazon/kcp/search/views/LibraryItemInteractionObserver;

.field private mBookRow:Lcom/amazon/kcp/library/ui/LibraryBookRow;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/views/LibrarySearchResultViewHolder;->RESOURCES:Landroid/content/res/Resources;

    .line 33
    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->search_element_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/amazon/kcp/search/views/LibrarySearchResultViewHolder;->VERT_PADDING:I

    .line 34
    sget-object v0, Lcom/amazon/kcp/search/views/LibrarySearchResultViewHolder;->RESOURCES:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kcp/search/R$dimen;->lib_search_book_row_horizontal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/amazon/kcp/search/views/LibrarySearchResultViewHolder;->HRT_PADDING:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Lcom/amazon/kcp/search/views/LibraryItemInteractionObserver;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 45
    iput-object p2, p0, Lcom/amazon/kcp/search/views/LibrarySearchResultViewHolder;->mContext:Landroid/content/Context;

    .line 46
    iput-object p3, p0, Lcom/amazon/kcp/search/views/LibrarySearchResultViewHolder;->interactionObserver:Lcom/amazon/kcp/search/views/LibraryItemInteractionObserver;

    .line 47
    sget p2, Lcom/amazon/kcp/search/R$id;->search_result_stub:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    .line 48
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->ruby_library_book_row:I

    if-eqz p2, :cond_0

    .line 50
    invoke-virtual {p2, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 51
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const/4 p2, 0x1

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 55
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->search_result:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/library/ui/LibraryBookRow;

    iput-object p2, p0, Lcom/amazon/kcp/search/views/LibrarySearchResultViewHolder;->mBookRow:Lcom/amazon/kcp/library/ui/LibraryBookRow;

    .line 56
    sget p2, Lcom/amazon/kcp/search/R$id;->search_result_divider:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/search/views/LibrarySearchResultViewHolder;->divider:Landroid/view/View;

    if-eqz p3, :cond_1

    .line 58
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bindData(Lcom/amazon/kindle/model/content/IListableBook;Z)V
    .locals 6

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/search/views/LibrarySearchResultViewHolder;->divider:Landroid/view/View;

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iput-object p1, p0, Lcom/amazon/kcp/search/views/LibrarySearchResultViewHolder;->contentMetadata:Lcom/amazon/kindle/model/content/IListableBook;

    .line 66
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;

    iget-object p2, p0, Lcom/amazon/kcp/search/views/LibrarySearchResultViewHolder;->contentMetadata:Lcom/amazon/kindle/model/content/IListableBook;

    check-cast p2, Lcom/amazon/kindle/content/GroupMetadata;

    .line 67
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getInstance()Lcom/amazon/kindle/content/dao/LibraryDataCache;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/GroupMetadata;Lcom/amazon/kindle/content/dao/LibraryDataCache;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    iget-object p2, p0, Lcom/amazon/kcp/search/views/LibrarySearchResultViewHolder;->contentMetadata:Lcom/amazon/kindle/model/content/IListableBook;

    check-cast p2, Lcom/amazon/kindle/content/ContentMetadata;

    invoke-direct {p1, p2}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 74
    :goto_1
    instance-of p2, p1, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;

    if-eqz p2, :cond_2

    .line 75
    move-object p2, p1

    check-cast p2, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;

    sget-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->applyFilter(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kindle/content/ILibraryService;)Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object p2

    if-eqz p2, :cond_2

    move-object p1, p2

    :cond_2
    move-object v1, p1

    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/search/views/LibrarySearchResultViewHolder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/kcp/search/views/LibrarySearchResultViewHolder;->mBookRow:Lcom/amazon/kcp/library/ui/LibraryBookRow;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    sget-object v5, Lcom/amazon/kcp/cover/badge/BadgeSource;->SEARCH:Lcom/amazon/kcp/cover/badge/BadgeSource;

    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->bindListRow(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;

    .line 80
    iget-object p1, p0, Lcom/amazon/kcp/search/views/LibrarySearchResultViewHolder;->mBookRow:Lcom/amazon/kcp/library/ui/LibraryBookRow;

    sget p2, Lcom/amazon/kcp/search/views/LibrarySearchResultViewHolder;->HRT_PADDING:I

    sget v0, Lcom/amazon/kcp/search/views/LibrarySearchResultViewHolder;->VERT_PADDING:I

    invoke-virtual {p1, p2, v0, p2, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/search/views/LibrarySearchResultViewHolder;->interactionObserver:Lcom/amazon/kcp/search/views/LibraryItemInteractionObserver;

    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p0, Lcom/amazon/kcp/search/views/LibrarySearchResultViewHolder;->contentMetadata:Lcom/amazon/kindle/model/content/IListableBook;

    invoke-interface {v0, v1, p1}, Lcom/amazon/kcp/search/views/LibraryItemInteractionObserver;->onItemInteracted(Lcom/amazon/kindle/model/content/IListableBook;Landroid/view/View;)V

    :cond_0
    return-void
.end method
