.class public final Lcom/amazon/kcp/library/SeriesLibraryFilter;
.super Lcom/amazon/kcp/library/AbstractLibraryFilter;
.source "LibraryFilter.kt"


# instance fields
.field private final groupBookId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "groupBookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/amazon/kcp/library/AbstractLibraryFilter;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/SeriesLibraryFilter;->groupBookId:Ljava/lang/String;

    const/16 p1, 0xd

    new-array p1, p1, [Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    .line 74
    sget-object v0, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->DOWNLOADED:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 75
    sget-object v0, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->BOOKS:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 76
    sget-object v0, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->SAMPLES:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v1, 0x2

    aput-object v0, p1, v1

    .line 77
    sget-object v0, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->AUDIBLE:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v1, 0x3

    aput-object v0, p1, v1

    .line 78
    sget-object v0, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->KU_PRIME:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v1, 0x4

    aput-object v0, p1, v1

    .line 79
    sget-object v0, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->READ:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v1, 0x5

    aput-object v0, p1, v1

    .line 80
    sget-object v0, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->UNREAD:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v1, 0x6

    aput-object v0, p1, v1

    .line 81
    sget-object v0, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->PUBLIC_LIBRARY_LENDING:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v1, 0x7

    aput-object v0, p1, v1

    .line 82
    sget-object v0, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->PERSONAL_LENDING:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/16 v1, 0x8

    aput-object v0, p1, v1

    .line 83
    sget-object v0, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->KINDLE_OWNERS_LENDING_LIBRARY:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/16 v1, 0x9

    aput-object v0, p1, v1

    .line 84
    sget-object v0, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->RENTAL:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/16 v1, 0xa

    aput-object v0, p1, v1

    .line 85
    sget-object v0, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->COMICS_UNLIMITED:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/16 v1, 0xb

    aput-object v0, p1, v1

    .line 86
    sget-object v0, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->FALKOR:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/16 v1, 0xc

    aput-object v0, p1, v1

    .line 73
    invoke-static {p1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/AbstractLibraryFilter;->buildItemsAndGroups(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyDefaultFilter(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/LibraryContentFilter;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/SeriesLibraryFilter;->applyDefaultFilter(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/SeriesItemsFilter;

    move-result-object p1

    return-object p1
.end method

.method public applyDefaultFilter(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/SeriesItemsFilter;
    .locals 2

    .line 94
    new-instance v0, Lcom/amazon/kcp/library/SeriesItemsFilter;

    iget-object v1, p0, Lcom/amazon/kcp/library/SeriesLibraryFilter;->groupBookId:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/amazon/kcp/library/SeriesItemsFilter;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/LibraryContentFilter;)V

    return-object v0
.end method

.method public getDefaultFilter()Lcom/amazon/kcp/library/LibraryContentFilter;
    .locals 3

    .line 90
    new-instance v0, Lcom/amazon/kcp/library/SeriesItemsFilter;

    iget-object v1, p0, Lcom/amazon/kcp/library/SeriesLibraryFilter;->groupBookId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/SeriesItemsFilter;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/LibraryContentFilter;)V

    return-object v0
.end method

.method public getDefaultLargeLibaryArguments(Lcom/amazon/kcp/library/LargeLibraryCounterProvider;)Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;
    .locals 1

    const-string/jumbo v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/amazon/kcp/library/SeriesLibraryFilter;->groupBookId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;->seriesDetailDefaultArguments(Ljava/lang/String;)Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;

    move-result-object p1

    return-object p1
.end method
