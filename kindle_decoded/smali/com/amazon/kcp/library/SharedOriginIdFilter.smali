.class public final Lcom/amazon/kcp/library/SharedOriginIdFilter;
.super Lcom/amazon/kcp/library/LibraryContentFilter;
.source "OriginFilters.kt"


# instance fields
.field private final sharedOriginId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    const-string/jumbo v0, "sharedOriginId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/amazon/kcp/library/OriginFiltersKt;->access$getSHARED_ORIGIN_ID_ITEMS$p()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/amazon/kcp/library/OriginFiltersKt;->access$getCOMMON_SUPPORT_SORT_TYPES$p()[Lcom/amazon/kcp/library/LibrarySortType;

    move-result-object v4

    sget-object v5, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v6, 0x0

    const-string v7, "SharedItemsSortKey"

    const/4 v8, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/amazon/kcp/library/LibraryContentFilter;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/amazon/kcp/library/SharedOriginIdFilter;->sharedOriginId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/LibraryContentFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/library/SharedOriginIdFilter;->sharedOriginId:Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/amazon/kcp/library/SharedOriginIdFilter;

    iget-object p1, p1, Lcom/amazon/kcp/library/SharedOriginIdFilter;->sharedOriginId:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type com.amazon.kcp.library.SharedOriginIdFilter"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 62
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/library/SharedOriginIdFilter;->sharedOriginId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryContentFilter;->getFilter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->filterArgs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 63
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryContentFilter;->isConsolidated()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Z)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->supportedSortTypes:[Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->defaultSortType:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->sortPersistenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 64
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->libraryDisplayItemPredicate:Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->build()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "HashCodeBuilder().append\u2026layItemPredicate).build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public matches(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 2

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isOwned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/SharedOriginIdFilter;->sharedOriginId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getShareOriginId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/amazon/kcp/library/LibraryContentFilter;->isFreeDictionary(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
