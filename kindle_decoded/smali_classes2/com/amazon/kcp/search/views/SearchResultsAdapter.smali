.class public Lcom/amazon/kcp/search/views/SearchResultsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchResultsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/views/SearchResultsAdapter$GoToStoreClickHandler;,
        Lcom/amazon/kcp/search/views/SearchResultsAdapter$StoreResultClickHandler;,
        Lcom/amazon/kcp/search/views/SearchResultsAdapter$LibraryResultClickHandler;,
        Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;
    }
.end annotation


# instance fields
.field protected context:Landroid/content/Context;

.field protected interactionHandler:Lcom/amazon/kcp/search/SearchInteractionHandler;

.field protected librarySection:Lcom/amazon/kcp/search/SectionResult;

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private searchId:I

.field protected storeGroupResult:Lcom/amazon/kcp/search/StoreGroupResult;

.field protected storeSection:Lcom/amazon/kcp/search/SectionResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 76
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->searchId:I

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->results:Ljava/util/List;

    .line 78
    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->context:Landroid/content/Context;

    .line 80
    sget-object v0, Lcom/amazon/kcp/search/SectionResult$SectionType;->LIBRARY:Lcom/amazon/kcp/search/SectionResult$SectionType;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->getLibrarySectionHeader()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->createSectionResult(Lcom/amazon/kcp/search/SectionResult$SectionType;Ljava/lang/String;)Lcom/amazon/kcp/search/SectionResult;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->librarySection:Lcom/amazon/kcp/search/SectionResult;

    .line 81
    sget-object v0, Lcom/amazon/kcp/search/SectionResult$SectionType;->STORE:Lcom/amazon/kcp/search/SectionResult$SectionType;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->getStoreSectionHeader()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->createSectionResult(Lcom/amazon/kcp/search/SectionResult$SectionType;Ljava/lang/String;)Lcom/amazon/kcp/search/SectionResult;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->storeSection:Lcom/amazon/kcp/search/SectionResult;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/search/views/SearchResultsAdapter;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->searchId:I

    return p0
.end method


# virtual methods
.method protected add(Lcom/amazon/kcp/search/SearchResult;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected addLibrarySection(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/ContentResult;",
            ">;)V"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->librarySection:Lcom/amazon/kcp/search/SectionResult;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->add(Lcom/amazon/kcp/search/SearchResult;)V

    .line 165
    new-instance v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$LibraryResultClickHandler;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/views/SearchResultsAdapter$LibraryResultClickHandler;-><init>(Lcom/amazon/kcp/search/views/SearchResultsAdapter;)V

    .line 166
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/ContentResult;

    .line 167
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/search/SearchResult;->setClickHandler(Lcom/amazon/kcp/search/SearchResult$ClickHandler;)V

    .line 168
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->add(Lcom/amazon/kcp/search/SearchResult;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected addStoreSection(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/store/StoreContentMetadata;",
            ">;)V"
        }
    .end annotation

    .line 173
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->storeSection:Lcom/amazon/kcp/search/SectionResult;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->add(Lcom/amazon/kcp/search/SearchResult;)V

    .line 184
    new-instance v0, Lcom/amazon/kcp/search/GoToStoreResult;

    invoke-direct {v0}, Lcom/amazon/kcp/search/GoToStoreResult;-><init>()V

    .line 185
    new-instance v1, Lcom/amazon/kcp/search/views/SearchResultsAdapter$GoToStoreClickHandler;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/search/views/SearchResultsAdapter$GoToStoreClickHandler;-><init>(Lcom/amazon/kcp/search/views/SearchResultsAdapter;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/SearchResult;->setClickHandler(Lcom/amazon/kcp/search/SearchResult$ClickHandler;)V

    .line 186
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->add(Lcom/amazon/kcp/search/SearchResult;)V

    .line 189
    new-instance v0, Lcom/amazon/kcp/search/StoreGroupResult;

    new-instance v1, Lcom/amazon/kcp/search/views/SearchResultsAdapter$StoreResultClickHandler;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/search/views/SearchResultsAdapter$StoreResultClickHandler;-><init>(Lcom/amazon/kcp/search/views/SearchResultsAdapter;)V

    invoke-direct {v0, p1, v1}, Lcom/amazon/kcp/search/StoreGroupResult;-><init>(Ljava/util/List;Lcom/amazon/kcp/search/StoreGroupResult$ClickHandler;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->storeGroupResult:Lcom/amazon/kcp/search/StoreGroupResult;

    .line 190
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->add(Lcom/amazon/kcp/search/SearchResult;)V

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, -0x1

    .line 125
    iput v0, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->searchId:I

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->storeGroupResult:Lcom/amazon/kcp/search/StoreGroupResult;

    .line 128
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected createSectionResult(Lcom/amazon/kcp/search/SectionResult$SectionType;Ljava/lang/String;)Lcom/amazon/kcp/search/SectionResult;
    .locals 1

    .line 206
    new-instance v0, Lcom/amazon/kcp/search/SectionResult;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/search/SectionResult;-><init>(Lcom/amazon/kcp/search/SectionResult$SectionType;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/amazon/kcp/search/SearchResult;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/search/SearchResult;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->getItem(I)Lcom/amazon/kcp/search/SearchResult;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->getItem(I)Lcom/amazon/kcp/search/SearchResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchResult;->getViewType()I

    move-result p1

    return p1
.end method

.method protected getLibrarySectionHeader()I
    .locals 1

    .line 196
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->search_results_library_header:I

    return v0
.end method

.method getSearchResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/SearchResult;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->results:Ljava/util/List;

    return-object v0
.end method

.method protected getStoreSectionHeader()I
    .locals 1

    .line 202
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->search_results_store_header:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 100
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->getItem(I)Lcom/amazon/kcp/search/SearchResult;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/amazon/kcp/search/SearchResult;->getView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 90
    invoke-static {}, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;->values()[Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getVisibleStoreResultCount()I
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->storeGroupResult:Lcom/amazon/kcp/search/StoreGroupResult;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/search/StoreGroupResult;->getVisibleItemCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 105
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->getItemViewType(I)I

    move-result p1

    .line 106
    sget-object v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;->HEADER:Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;->LOADING:Lcom/amazon/kcp/search/views/SearchResultsAdapter$SearchResultType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setInteractionHandler(Lcom/amazon/kcp/search/SearchInteractionHandler;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->interactionHandler:Lcom/amazon/kcp/search/SearchInteractionHandler;

    return-void
.end method

.method public update(Lcom/amazon/kcp/search/SearchProvider;Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->clear()V

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->getId()I

    move-result p2

    iput p2, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->searchId:I

    .line 140
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->updateStoreResults(Lcom/amazon/kcp/search/SearchProvider;)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->updateLibraryResults(Lcom/amazon/kcp/search/SearchProvider;)V

    .line 145
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method protected updateLibraryResults(Lcom/amazon/kcp/search/SearchProvider;)V
    .locals 4

    .line 221
    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->getLibraryResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 224
    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->getLibraryResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/model/content/IListableBook;

    .line 225
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    new-instance v3, Lcom/amazon/kcp/search/GroupContentResult;

    invoke-direct {v3, v2, v1}, Lcom/amazon/kcp/search/GroupContentResult;-><init>(Lcom/amazon/kindle/model/content/IListableBook;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 228
    :cond_0
    new-instance v3, Lcom/amazon/kcp/search/LibraryContentResult;

    invoke-direct {v3, v2, v1}, Lcom/amazon/kcp/search/LibraryContentResult;-><init>(Lcom/amazon/kindle/model/content/IListableBook;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->addLibrarySection(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method protected updateStoreResults(Lcom/amazon/kcp/search/SearchProvider;)V
    .locals 1

    .line 210
    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->isStoreSearchPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object p1, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->storeSection:Lcom/amazon/kcp/search/SectionResult;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->add(Lcom/amazon/kcp/search/SearchResult;)V

    .line 213
    new-instance p1, Lcom/amazon/kcp/search/LoadingStoreResult;

    invoke-direct {p1}, Lcom/amazon/kcp/search/LoadingStoreResult;-><init>()V

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->add(Lcom/amazon/kcp/search/SearchResult;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->getStoreResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 215
    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->getStoreResults()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->addStoreSection(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method
