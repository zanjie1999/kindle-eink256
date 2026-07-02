.class public Lcom/amazon/kcp/library/CollectionMultiSelectItemsFilter;
.super Lcom/amazon/kcp/library/LibraryContentFilter$NonSeriesFilter;
.source "CollectionMultiSelectItemsFilter.java"


# instance fields
.field private bookIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryContentFilter;->getFilter()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 29
    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryContentFilter;->getFilterArgs()Ljava/util/List;

    move-result-object v3

    sget-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    iget-object v4, v0, Lcom/amazon/kcp/library/LibraryContentFilter;->supportedSortTypes:[Lcom/amazon/kcp/library/LibrarySortType;

    iget-object v5, v0, Lcom/amazon/kcp/library/LibraryContentFilter;->defaultSortType:Lcom/amazon/kcp/library/LibrarySortType;

    .line 33
    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryContentFilter;->getSortPersistKey()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    .line 28
    invoke-direct/range {v1 .. v8}, Lcom/amazon/kcp/library/LibraryContentFilter$NonSeriesFilter;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    .line 36
    iput-object p1, p0, Lcom/amazon/kcp/library/CollectionMultiSelectItemsFilter;->bookIds:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 65
    const-class v0, Lcom/amazon/kcp/library/CollectionMultiSelectItemsFilter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-super {p0, p1}, Lcom/amazon/kcp/library/LibraryContentFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    check-cast p1, Lcom/amazon/kcp/library/CollectionMultiSelectItemsFilter;

    .line 71
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/library/CollectionMultiSelectItemsFilter;->bookIds:Ljava/util/Collection;

    iget-object p1, p1, Lcom/amazon/kcp/library/CollectionMultiSelectItemsFilter;->bookIds:Ljava/util/Collection;

    .line 72
    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    .line 73
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->build()Ljava/lang/Boolean;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getTableToQuery(Lcom/amazon/kindle/krx/library/LibraryGroupType;)Ljava/lang/String;
    .locals 2

    .line 41
    iget-object p1, p0, Lcom/amazon/kcp/library/CollectionMultiSelectItemsFilter;->bookIds:Ljava/util/Collection;

    if-nez p1, :cond_0

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/CollectionMultiSelectItemsFilter;->bookIds:Ljava/util/Collection;

    .line 45
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/library/CollectionMultiSelectItemsFilter;->bookIds:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47
    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(SELECT * FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_TABLES:Ljava/lang/String;

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE "

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 54
    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "))"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 78
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    .line 79
    invoke-super {p0}, Lcom/amazon/kcp/library/LibraryContentFilter;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->appendSuper(I)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/CollectionMultiSelectItemsFilter;->bookIds:Ljava/util/Collection;

    .line 80
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 81
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->build()Ljava/lang/Integer;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
