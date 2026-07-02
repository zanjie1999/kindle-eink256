.class public abstract Lcom/amazon/kcp/library/AbstractCollectionItemsFilter;
.super Lcom/amazon/kcp/library/LibraryContentFilter$NonSeriesFilter;
.source "AbstractCollectionItemsFilter.java"


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

    .line 16
    invoke-direct/range {p0 .. p7}, Lcom/amazon/kcp/library/LibraryContentFilter$NonSeriesFilter;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public abstract getCollectionId()Ljava/lang/String;
.end method

.method public abstract getColumns()[Ljava/lang/String;
.end method
