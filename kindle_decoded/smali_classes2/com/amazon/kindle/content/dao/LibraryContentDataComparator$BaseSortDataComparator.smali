.class abstract Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$BaseSortDataComparator;
.super Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ReleaseDateComparator;
.source "LibraryContentDataComparator.java"


# instance fields
.field collatorComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fallbackComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Comparator<",
            "Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;",
            ">;)V"
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ReleaseDateComparator;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$BaseSortDataComparator;->collatorComparator:Ljava/util/Comparator;

    .line 190
    iput-object p2, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$BaseSortDataComparator;->fallbackComparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)I
    .locals 5

    .line 196
    invoke-interface {p0, p1}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;->getSortOrder(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    invoke-interface {p0, p2}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;->getSortOrder(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 197
    invoke-interface {p0, p1}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;->getSortOrder(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)J

    move-result-wide v0

    invoke-interface {p0, p2}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;->getSortOrder(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    .line 201
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$BaseSortDataComparator;->getSortableValue(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$BaseSortDataComparator;->getSortableValue(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$BaseSortDataComparator;->collatorComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$BaseSortDataComparator;->getSortableValue(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$BaseSortDataComparator;->getSortableValue(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$BaseSortDataComparator;->fallbackComparator:Ljava/util/Comparator;

    if-eqz v0, :cond_2

    .line 211
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 217
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ReleaseDateComparator;->compare(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 183
    check-cast p1, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;

    check-cast p2, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$BaseSortDataComparator;->compare(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)I

    move-result p1

    return p1
.end method

.method abstract getSortableValue(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)Ljava/lang/String;
.end method
