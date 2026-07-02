.class final Lcom/amazon/kcp/library/LibraryContentCache$1;
.super Ljava/lang/Object;
.source "LibraryContentCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryContentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kcp/library/LibraryContentCache$SortableBookID;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kcp/library/LibraryContentCache$SortableBookID;Lcom/amazon/kcp/library/LibraryContentCache$SortableBookID;)I
    .locals 4

    .line 87
    iget-wide v0, p1, Lcom/amazon/kcp/library/LibraryContentCache$SortableBookID;->authorOrder:J

    iget-wide v2, p2, Lcom/amazon/kcp/library/LibraryContentCache$SortableBookID;->authorOrder:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-wide v0, p2, Lcom/amazon/kcp/library/LibraryContentCache$SortableBookID;->publicationDate:J

    iget-wide p1, p1, Lcom/amazon/kcp/library/LibraryContentCache$SortableBookID;->publicationDate:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 84
    check-cast p1, Lcom/amazon/kcp/library/LibraryContentCache$SortableBookID;

    check-cast p2, Lcom/amazon/kcp/library/LibraryContentCache$SortableBookID;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryContentCache$1;->compare(Lcom/amazon/kcp/library/LibraryContentCache$SortableBookID;Lcom/amazon/kcp/library/LibraryContentCache$SortableBookID;)I

    move-result p1

    return p1
.end method
