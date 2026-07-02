.class Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$AuthorSortOrderReversedComparator;
.super Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$BaseSortDataComparator;
.source "LibraryContentDataComparator.java"


# direct methods
.method constructor <init>(Ljava/util/Comparator;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 290
    new-instance v0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ReversedCollatorComparator;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ReversedCollatorComparator;-><init>(Ljava/util/Comparator;)V

    if-eqz p2, :cond_0

    new-instance p2, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$TitleSortOrderComparator;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v1}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$TitleSortOrderComparator;-><init>(Ljava/util/Comparator;Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$BaseSortDataComparator;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public getSortOrder(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)J
    .locals 2

    .line 300
    iget-wide v0, p1, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->authorOrderReversed:J

    return-wide v0
.end method

.method public getSortableValue(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)Ljava/lang/String;
    .locals 0

    .line 305
    iget-object p1, p1, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->sortableAuthor:Ljava/lang/String;

    return-object p1
.end method

.method public setSortOrder(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;J)V
    .locals 0

    .line 295
    iput-wide p2, p1, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->authorOrderReversed:J

    return-void
.end method
