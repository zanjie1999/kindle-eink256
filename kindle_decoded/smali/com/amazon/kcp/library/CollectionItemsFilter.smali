.class public Lcom/amazon/kcp/library/CollectionItemsFilter;
.super Lcom/amazon/kcp/library/AbstractCollectionItemsFilter;
.source "CollectionItemsFilter.java"


# static fields
.field private static final COLLECTION_ITEMS:Ljava/lang/String;

.field private static final COLLECTION_ITEMS_ARGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final COLLECTION_ITEMS_COLUMNS:[Ljava/lang/String;

.field public static final JOINED_COLLECTION_CONTENT_TABLE:Ljava/lang/String;


# instance fields
.field private final collectionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/collections/CollectionItemField;->COLLECTION_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IS ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/CollectionItemsFilter;->COLLECTION_ITEMS:Ljava/lang/String;

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/CollectionItemsFilter;->COLLECTION_ITEMS_ARGS:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_TABLES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") jc inner join "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CollectionItems"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ci on jc."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " = ci."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/collections/CollectionItemField;->KINDLE_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/CollectionItemsFilter;->JOINED_COLLECTION_CONTENT_TABLE:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 30
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/collections/CollectionItemField;->KINDLE_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 31
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/collections/CollectionItemField;->COLLECTION_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 32
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/collections/CollectionItemField;->SORT_ORDER:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 33
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/collections/CollectionItemField;->SYNC_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/library/CollectionItemsFilter;->COLLECTION_ITEMS_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .line 37
    sget-object v1, Lcom/amazon/kcp/library/CollectionItemsFilter;->COLLECTION_ITEMS:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kcp/library/CollectionItemsFilter;->COLLECTION_ITEMS_ARGS:Ljava/util/List;

    const/4 v0, 0x5

    new-array v3, v0, [Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v0, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    sget-object v0, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v4, 0x1

    aput-object v0, v3, v4

    sget-object v0, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v4, 0x2

    aput-object v0, v3, v4

    sget-object v0, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v4, 0x3

    aput-object v0, v3, v4

    sget-object v4, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_CUSTOM:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v0, 0x4

    aput-object v4, v3, v0

    const/4 v5, 0x0

    const-string v6, "CollectionItemsSortType"

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/library/AbstractCollectionItemsFilter;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    .line 49
    iput-object p1, p0, Lcom/amazon/kcp/library/CollectionItemsFilter;->collectionId:Ljava/lang/String;

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

    .line 90
    const-class v0, Lcom/amazon/kcp/library/CollectionItemsFilter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-super {p0, p1}, Lcom/amazon/kcp/library/LibraryContentFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    check-cast p1, Lcom/amazon/kcp/library/CollectionItemsFilter;

    .line 96
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/library/CollectionItemsFilter;->collectionId:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kcp/library/CollectionItemsFilter;->collectionId:Ljava/lang/String;

    .line 97
    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    .line 98
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->build()Ljava/lang/Boolean;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCollectionId()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsFilter;->collectionId:Ljava/lang/String;

    return-object v0
.end method

.method public getColumns()[Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lcom/amazon/kcp/library/CollectionItemsFilter;->COLLECTION_ITEMS_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public getFilterArgs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->filterArgs:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 68
    iget-object v1, p0, Lcom/amazon/kcp/library/CollectionItemsFilter;->collectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getSortPersistKey()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->sortPersistenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/CollectionItemsFilter;->collectionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTableToQuery(Lcom/amazon/kindle/krx/library/LibraryGroupType;)Ljava/lang/String;
    .locals 0

    .line 74
    sget-object p1, Lcom/amazon/kcp/library/CollectionItemsFilter;->JOINED_COLLECTION_CONTENT_TABLE:Ljava/lang/String;

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 103
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    .line 104
    invoke-super {p0}, Lcom/amazon/kcp/library/LibraryContentFilter;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->appendSuper(I)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/CollectionItemsFilter;->collectionId:Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 106
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->build()Ljava/lang/Integer;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
