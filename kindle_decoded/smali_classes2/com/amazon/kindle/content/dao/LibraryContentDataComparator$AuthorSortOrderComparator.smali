.class Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$AuthorSortOrderComparator;
.super Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$BaseSortDataComparator;
.source "LibraryContentDataComparator.java"


# direct methods
.method constructor <init>(Ljava/util/Comparator;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 263
    new-instance p2, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$TitleSortOrderComparator;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$TitleSortOrderComparator;-><init>(Ljava/util/Comparator;Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$BaseSortDataComparator;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public getSortOrder(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)J
    .locals 2

    .line 273
    iget-wide v0, p1, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->authorOrder:J

    return-wide v0
.end method

.method public getSortableValue(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)Ljava/lang/String;
    .locals 0

    .line 278
    iget-object p1, p1, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->sortableAuthor:Ljava/lang/String;

    return-object p1
.end method

.method public setSortOrder(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;J)V
    .locals 0

    .line 268
    iput-wide p2, p1, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->authorOrder:J

    return-void
.end method
