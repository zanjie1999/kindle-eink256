.class final Lcom/amazon/kcp/library/LibraryContentFilter$16;
.super Lcom/amazon/kcp/library/LibraryContentFilter;
.source "LibraryContentFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryContentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V
    .locals 0

    .line 383
    invoke-direct/range {p0 .. p7}, Lcom/amazon/kcp/library/LibraryContentFilter;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 5

    .line 387
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    .line 388
    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 389
    :goto_1
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentFilter;->libraryDisplayItemPredicate:Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    if-eqz v1, :cond_2

    new-instance v4, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    invoke-direct {v4, p1}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    invoke-interface {v1, v4}, Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;->matches(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 390
    invoke-static {p1}, Lcom/amazon/kcp/library/LibraryContentFilter;->isVisibleToUser(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method
