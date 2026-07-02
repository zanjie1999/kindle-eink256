.class Lcom/amazon/kcp/library/LibraryCounter$CounterFilterWrapper;
.super Lcom/amazon/kcp/library/LibraryContentFilter;
.source "LibraryCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CounterFilterWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryCounter;

.field private final wrappedFilter:Lcom/amazon/kcp/library/LibraryContentFilter;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/LibraryCounter;Lcom/amazon/kcp/library/LibraryContentFilter;)V
    .locals 8

    .line 40
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryCounter$CounterFilterWrapper;->this$0:Lcom/amazon/kcp/library/LibraryCounter;

    .line 41
    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryContentFilter;->getFilter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryContentFilter;->getFilterArgs()Ljava/util/List;

    move-result-object v2

    .line 42
    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryContentFilter;->getSupportedSortTypes()[Lcom/amazon/kcp/library/LibrarySortType;

    move-result-object v3

    iget-object v4, p2, Lcom/amazon/kcp/library/LibraryContentFilter;->defaultSortType:Lcom/amazon/kcp/library/LibrarySortType;

    iget-object v5, p2, Lcom/amazon/kcp/library/LibraryContentFilter;->libraryDisplayItemPredicate:Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    .line 45
    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryContentFilter;->getSortPersistKey()Ljava/lang/String;

    move-result-object v6

    .line 46
    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryContentFilter;->isConsolidated()Z

    move-result v7

    move-object v0, p0

    .line 41
    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/library/LibraryContentFilter;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    .line 47
    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryCounter$CounterFilterWrapper;->wrappedFilter:Lcom/amazon/kcp/library/LibraryContentFilter;

    return-void
.end method


# virtual methods
.method public matches(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryCounter$CounterFilterWrapper;->wrappedFilter:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/LibraryContentFilter;->matches(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    return p1
.end method

.method public shouldGroupSeries()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
