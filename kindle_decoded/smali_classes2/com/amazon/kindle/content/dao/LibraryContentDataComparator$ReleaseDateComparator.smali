.class abstract Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ReleaseDateComparator;
.super Ljava/lang/Object;
.source "LibraryContentDataComparator.java"

# interfaces
.implements Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$ISortDataComparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;)I
    .locals 2

    .line 174
    iget-wide v0, p2, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->publicationDate:J

    iget-wide p1, p1, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->publicationDate:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method
