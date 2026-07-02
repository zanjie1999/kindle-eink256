.class public final Lcom/amazon/kcp/library/BackIssuesLibraryFilter;
.super Lcom/amazon/kcp/library/AbstractLibraryFilter;
.source "LibraryFilter.kt"


# instance fields
.field private final parentAsin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "parentAsin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcom/amazon/kcp/library/AbstractLibraryFilter;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/BackIssuesLibraryFilter;->parentAsin:Ljava/lang/String;

    const/4 p1, 0x5

    new-array p1, p1, [Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    .line 104
    sget-object v0, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->DOWNLOADED:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 105
    sget-object v0, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->KU_PRIME:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 106
    sget-object v0, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->READ:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v1, 0x2

    aput-object v0, p1, v1

    .line 107
    sget-object v0, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->UNREAD:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v1, 0x3

    aput-object v0, p1, v1

    .line 108
    sget-object v0, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->PERIODICALS:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v1, 0x4

    aput-object v0, p1, v1

    .line 103
    invoke-static {p1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 109
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/AbstractLibraryFilter;->buildItemsAndGroups(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public getDefaultFilter()Lcom/amazon/kcp/library/BackIssuesFilter;
    .locals 2

    .line 112
    new-instance v0, Lcom/amazon/kcp/library/BackIssuesFilter;

    iget-object v1, p0, Lcom/amazon/kcp/library/BackIssuesLibraryFilter;->parentAsin:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/BackIssuesFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getDefaultFilter()Lcom/amazon/kcp/library/LibraryContentFilter;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/amazon/kcp/library/BackIssuesLibraryFilter;->getDefaultFilter()Lcom/amazon/kcp/library/BackIssuesFilter;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultLargeLibaryArguments(Lcom/amazon/kcp/library/LargeLibraryCounterProvider;)Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;
    .locals 1

    const-string/jumbo v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/amazon/kcp/library/BackIssuesLibraryFilter;->parentAsin:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;->backIssuesDetailDefaultArguments(Ljava/lang/String;)Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;

    move-result-object p1

    return-object p1
.end method
