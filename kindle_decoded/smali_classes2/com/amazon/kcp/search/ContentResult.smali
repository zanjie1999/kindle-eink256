.class public abstract Lcom/amazon/kcp/search/ContentResult;
.super Lcom/amazon/kcp/search/SearchResult;
.source "ContentResult.java"

# interfaces
.implements Lcom/amazon/kcp/library/ICoverCacheable;


# static fields
.field private static final HRT_PADDING:I

.field private static final RESOURCES:Landroid/content/res/Resources;

.field private static final SIDE_PADDING:I

.field private static final VERT_PADDING:I


# instance fields
.field protected index:I

.field protected libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

.field private final metadata:Lcom/amazon/kindle/model/content/IListableBook;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/ContentResult;->RESOURCES:Landroid/content/res/Resources;

    .line 34
    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->search_screen_side_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/amazon/kcp/search/ContentResult;->SIDE_PADDING:I

    .line 35
    sget-object v0, Lcom/amazon/kcp/search/ContentResult;->RESOURCES:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->search_element_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/amazon/kcp/search/ContentResult;->VERT_PADDING:I

    .line 36
    sget-object v0, Lcom/amazon/kcp/search/ContentResult;->RESOURCES:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kcp/search/R$dimen;->lib_search_book_row_horizontal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/amazon/kcp/search/ContentResult;->HRT_PADDING:I

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/content/IListableBook;I)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchResult;-><init>()V

    .line 43
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/ContentResult;->setLibraryItem(Lcom/amazon/kindle/model/content/IListableBook;)V

    .line 44
    iput p2, p0, Lcom/amazon/kcp/search/ContentResult;->index:I

    .line 45
    iput-object p1, p0, Lcom/amazon/kcp/search/ContentResult;->metadata:Lcom/amazon/kindle/model/content/IListableBook;

    return-void
.end method

.method private setLibraryItem(Lcom/amazon/kindle/model/content/IListableBook;)V
    .locals 2

    .line 93
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;

    check-cast p1, Lcom/amazon/kindle/content/GroupMetadata;

    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getInstance()Lcom/amazon/kindle/content/dao/LibraryDataCache;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/GroupMetadata;Lcom/amazon/kindle/content/dao/LibraryDataCache;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/ContentResult;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    check-cast p1, Lcom/amazon/kindle/content/ContentMetadata;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/ContentResult;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    :goto_0
    return-void
.end method


# virtual methods
.method public getBookID()Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/search/ContentResult;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/amazon/kcp/search/ContentResult;->index:I

    return v0
.end method

.method public getLibraryItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/search/ContentResult;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    return-object v0
.end method

.method public getMetadata()Lcom/amazon/kindle/model/content/IListableBook;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/kcp/search/ContentResult;->metadata:Lcom/amazon/kindle/model/content/IListableBook;

    return-object v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$layout;->search_result_content:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 57
    sget p1, Lcom/amazon/kindle/librarymodule/R$id;->search_result_stub:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    if-eqz p1, :cond_0

    .line 59
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->ruby_library_book_row:I

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 60
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 63
    :cond_0
    sget p1, Lcom/amazon/kindle/librarymodule/R$id;->search_result:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/ui/LibraryBookRow;

    .line 65
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/ContentResult;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    const/4 v3, 0x0

    sget-object v5, Lcom/amazon/kcp/cover/badge/BadgeSource;->SEARCH:Lcom/amazon/kcp/cover/badge/BadgeSource;

    move-object v2, p1

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->bindListRow(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;

    .line 66
    sget p3, Lcom/amazon/kcp/search/ContentResult;->HRT_PADDING:I

    sget p4, Lcom/amazon/kcp/search/ContentResult;->VERT_PADDING:I

    invoke-virtual {p1, p3, p4, p3, p4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 69
    new-instance p1, Lcom/amazon/kcp/search/ContentResult$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/search/ContentResult$1;-><init>(Lcom/amazon/kcp/search/ContentResult;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public getViewType()I
    .locals 1

    .line 50
    sget-object v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;->CONTENT:Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method
