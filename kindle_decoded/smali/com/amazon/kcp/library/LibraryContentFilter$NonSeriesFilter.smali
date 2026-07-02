.class Lcom/amazon/kcp/library/LibraryContentFilter$NonSeriesFilter;
.super Lcom/amazon/kcp/library/LibraryContentFilter;
.source "LibraryContentFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryContentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NonSeriesFilter"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/amazon/kcp/library/LibrarySortType;",
            "Lcom/amazon/kcp/library/LibrarySortType;",
            "Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 696
    invoke-direct/range {p0 .. p7}, Lcom/amazon/kcp/library/LibraryContentFilter;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public shouldGroupSeries()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
