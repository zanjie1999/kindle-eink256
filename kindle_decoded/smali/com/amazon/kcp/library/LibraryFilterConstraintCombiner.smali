.class public Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;
.super Ljava/lang/Object;
.source "LibraryFilterConstraintCombiner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$FilterPredicate;,
        Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;
    }
.end annotation


# static fields
.field private static final SORT_PERSISTENCE_KEY:Ljava/lang/String; = "FILTER_SORT_PERSISTENCE_KEY"

.field public static final SPECIAL_SUPPORTED_SORT_TYPES:[Lcom/amazon/kcp/library/LibrarySortType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/kcp/library/LibrarySortType;

    .line 29
    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_PUBLICATION_DATE:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;->SPECIAL_SUPPORTED_SORT_TYPES:[Lcom/amazon/kcp/library/LibrarySortType;

    return-void
.end method

.method public static combine(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;Z)Lcom/amazon/kcp/library/LibraryContentFilter;
    .locals 12

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryContentFilter;->getFilter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryContentFilter;->getFilter()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;->combineFilterSelection(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryContentFilter;->getFilterArgs()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryContentFilter;->getFilterArgs()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;->combineFilterArgs(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 98
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryContentFilter;->getSupportedSortTypes()[Lcom/amazon/kcp/library/LibrarySortType;

    move-result-object v0

    .line 99
    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryContentFilter;->getSupportedSortTypes()[Lcom/amazon/kcp/library/LibrarySortType;

    move-result-object v3

    .line 98
    invoke-static {v0, v3}, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;->combineSortTypes([Lcom/amazon/kcp/library/LibrarySortType;[Lcom/amazon/kcp/library/LibrarySortType;)[Lcom/amazon/kcp/library/LibrarySortType;

    move-result-object v3

    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->defaultSortType:Lcom/amazon/kcp/library/LibrarySortType;

    .line 105
    iget-object v4, p1, Lcom/amazon/kcp/library/LibraryContentFilter;->defaultSortType:Lcom/amazon/kcp/library/LibrarySortType;

    if-ne v0, v4, :cond_2

    goto :goto_0

    .line 115
    :cond_2
    sget-object v5, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    if-eq v4, v5, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move-object v4, v0

    .line 121
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->libraryDisplayItemPredicate:Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    iget-object v5, p1, Lcom/amazon/kcp/library/LibraryContentFilter;->libraryDisplayItemPredicate:Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    invoke-static {v0, v5, p2}, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;->combinePredicates(Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;)Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    move-result-object v5

    if-eqz p3, :cond_5

    .line 125
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryContentFilter;->isConsolidated()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryContentFilter;->isConsolidated()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 127
    :goto_2
    new-instance v11, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$1;

    const-string v6, "FILTER_SORT_PERSISTENCE_KEY"

    move-object v0, v11

    move-object v8, p2

    move-object v9, p0

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$1;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;ZLcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibraryContentFilter;)V

    return-object v11
.end method

.method public static combine(Ljava/util/List;Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;Z)Lcom/amazon/kcp/library/LibraryContentFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LibraryContentFilter;",
            ">;",
            "Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;",
            "Z)",
            "Lcom/amazon/kcp/library/LibraryContentFilter;"
        }
    .end annotation

    .line 166
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 167
    invoke-static {v0, v1, p1, p2}, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;->combine(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;Z)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static combineFilterArgs(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static combineFilterConstraintsByAnd(Ljava/util/List;)Lcom/amazon/kcp/library/LibraryContentFilter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            ">;>;)",
            "Lcom/amazon/kcp/library/LibraryContentFilter;"
        }
    .end annotation

    .line 46
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 47
    invoke-static {v1}, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;->combineFilterConstraintsByOr(Ljava/util/List;)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;->AND:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;->combine(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;Z)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static combineFilterConstraintsByOr(Ljava/util/List;)Lcom/amazon/kcp/library/LibraryContentFilter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            ">;)",
            "Lcom/amazon/kcp/library/LibraryContentFilter;"
        }
    .end annotation

    .line 63
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/LibraryFilterItem;

    .line 64
    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryFilterItem;->getConstraint()Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;->OR:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;->combine(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;Z)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static combineFilterSelection(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;)Ljava/lang/String;
    .locals 2

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    sget-object p0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;->AND:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    invoke-virtual {p2, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, " AND "

    goto :goto_0

    :cond_0
    const-string p0, " OR "

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    .line 190
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static combinePredicates(Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;)Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 259
    :cond_0
    new-instance v0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$FilterPredicate;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$FilterPredicate;-><init>(Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;)V

    return-object v0
.end method

.method static combineSortTypes([Lcom/amazon/kcp/library/LibrarySortType;[Lcom/amazon/kcp/library/LibrarySortType;)[Lcom/amazon/kcp/library/LibrarySortType;
    .locals 6

    .line 221
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 223
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 224
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 226
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/LibrarySortType;

    .line 227
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    :cond_1
    sget-object v1, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;->SPECIAL_SUPPORTED_SORT_TYPES:[Lcom/amazon/kcp/library/LibrarySortType;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 235
    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 236
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 240
    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [Lcom/amazon/kcp/library/LibrarySortType;

    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/amazon/kcp/library/LibrarySortType;

    return-object p0
.end method
