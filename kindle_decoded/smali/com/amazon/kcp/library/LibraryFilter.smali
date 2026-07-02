.class public final Lcom/amazon/kcp/library/LibraryFilter;
.super Lcom/amazon/kcp/library/AbstractLibraryFilter;
.source "LibraryFilter.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/library/LibraryFilter;

.field private static final filterTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/amazon/kcp/library/LibraryFilter;

    invoke-direct {v0}, Lcom/amazon/kcp/library/LibraryFilter;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/LibraryFilter;->INSTANCE:Lcom/amazon/kcp/library/LibraryFilter;

    const/16 v1, 0xe

    new-array v1, v1, [Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    .line 10
    sget-object v2, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->DOWNLOADED:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 11
    sget-object v2, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->BOOKS:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 12
    sget-object v2, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->SAMPLES:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 13
    sget-object v2, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->AUDIBLE:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 14
    sget-object v2, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->DOCS:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 15
    sget-object v2, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->KU_PRIME:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 16
    sget-object v2, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->READ:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 17
    sget-object v2, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->UNREAD:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 18
    sget-object v2, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->PERIODICALS:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 19
    sget-object v2, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->PUBLIC_LIBRARY_LENDING:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 20
    sget-object v2, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->PERSONAL_LENDING:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 21
    sget-object v2, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->RENTAL:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 22
    sget-object v2, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->COMICS_UNLIMITED:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 23
    sget-object v2, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->FALKOR:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 9
    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/library/LibraryFilter;->filterTypes:Ljava/util/Set;

    .line 26
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/AbstractLibraryFilter;->buildItemsAndGroups(Ljava/util/Set;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/amazon/kcp/library/AbstractLibraryFilter;-><init>()V

    return-void
.end method

.method public static final getLibraryDefaultFilter(Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;Z)Lcom/amazon/kcp/library/LibraryContentFilter;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 38
    sget-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->BOOKS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->SAMPLES_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->FALKOR_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->DOCS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->NEWSSTAND_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-nez p0, :cond_0

    .line 40
    sget-object p0, Lcom/amazon/kcp/library/LibraryContentFilter;->ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    return-object p0

    .line 43
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isNewsstandBlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->NEWSSTAND_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 44
    :cond_1
    invoke-interface {p0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isDocsBlocked()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->DOCS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 45
    :cond_2
    invoke-interface {p0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBooksBlocked()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 46
    sget-object p0, Lcom/amazon/kcp/library/LibraryContentFilter;->BOOKS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 47
    sget-object p0, Lcom/amazon/kcp/library/LibraryContentFilter;->SAMPLES_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 48
    sget-object p0, Lcom/amazon/kcp/library/LibraryContentFilter;->FALKOR_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 53
    :cond_3
    sget-object p0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;->OR:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    .line 51
    invoke-static {v0, p0, p1}, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;->combine(Ljava/util/List;Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;Z)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDefaultFilter()Lcom/amazon/kcp/library/LibraryContentFilter;
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcom/amazon/kcp/library/AbstractLibraryFilter;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/LibraryFilter;->getLibraryDefaultFilter(Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;Z)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultLargeLibaryArguments(Lcom/amazon/kcp/library/LargeLibraryCounterProvider;)Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;
    .locals 1

    const-string/jumbo v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
