.class Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter$SortRangeByLower;
.super Ljava/lang/Object;
.source "NotebookSearchAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SortRangeByLower"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/krx/Range<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter$1;)V
    .locals 0

    .line 488
    invoke-direct {p0}, Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter$SortRangeByLower;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/krx/Range;Lcom/amazon/kindle/krx/Range;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kindle/krx/Range<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 492
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Lcom/amazon/kindle/krx/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 488
    check-cast p1, Lcom/amazon/kindle/krx/Range;

    check-cast p2, Lcom/amazon/kindle/krx/Range;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter$SortRangeByLower;->compare(Lcom/amazon/kindle/krx/Range;Lcom/amazon/kindle/krx/Range;)I

    move-result p1

    return p1
.end method
