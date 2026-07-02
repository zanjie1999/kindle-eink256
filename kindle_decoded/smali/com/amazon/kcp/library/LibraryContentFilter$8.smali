.class final Lcom/amazon/kcp/library/LibraryContentFilter$8;
.super Lcom/amazon/kcp/library/LibraryContentFilter$NonSeriesFilter;
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

    .line 246
    invoke-direct/range {p0 .. p7}, Lcom/amazon/kcp/library/LibraryContentFilter$NonSeriesFilter;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 0

    .line 250
    invoke-static {p1}, Lcom/amazon/kcp/library/LibraryContentFilter;->isVisibleToUser(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    return p1
.end method
