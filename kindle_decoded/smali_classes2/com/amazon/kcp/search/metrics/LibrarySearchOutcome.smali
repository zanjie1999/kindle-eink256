.class public final enum Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;
.super Ljava/lang/Enum;
.source "LibrarySearchOutcome.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

.field public static final enum CLEAR_RESULTS:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

.field public static final enum EXIT_SEARCH:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

.field public static final enum LIBRARY_BOOK_DOWNLOAD:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

.field public static final enum LIBRARY_BOOK_OPEN:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

.field public static final enum LIBRARY_SERIES_OPEN:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

.field public static final enum REFORMULATED:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

.field public static final enum SEARCH_AGAIN:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

.field public static final enum SEARCH_SUGGESTION_CLICKED:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

.field public static final enum SPELL_CORRECTION_REJECTED:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

.field public static final enum STORE_PAGE_OPEN:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

.field public static final enum STORE_SEE_MORE:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

.field private static final clickOutcomes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;",
            ">;"
        }
    .end annotation
.end field

.field private static final libraryOutcomes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;",
            ">;"
        }
    .end annotation
.end field

.field private static final storeOutcomes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final emitName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 13
    new-instance v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    const/4 v1, 0x0

    const-string v2, "SEARCH_AGAIN"

    const-string v3, "SearchAgain"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->SEARCH_AGAIN:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    .line 14
    new-instance v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    const/4 v2, 0x1

    const-string v3, "LIBRARY_BOOK_OPEN"

    const-string v4, "LibraryBookOpen"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->LIBRARY_BOOK_OPEN:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    .line 15
    new-instance v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    const/4 v3, 0x2

    const-string v4, "LIBRARY_BOOK_DOWNLOAD"

    const-string v5, "LibraryBookDownload"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->LIBRARY_BOOK_DOWNLOAD:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    .line 16
    new-instance v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    const/4 v4, 0x3

    const-string v5, "STORE_PAGE_OPEN"

    const-string v6, "StorePageOpen"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->STORE_PAGE_OPEN:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    .line 17
    new-instance v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    const/4 v5, 0x4

    const-string v6, "STORE_SEE_MORE"

    const-string v7, "StoreSeeMore"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->STORE_SEE_MORE:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    .line 18
    new-instance v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    const/4 v6, 0x5

    const-string v7, "CLEAR_RESULTS"

    const-string v8, "ClearResults"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->CLEAR_RESULTS:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    .line 19
    new-instance v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    const/4 v7, 0x6

    const-string v8, "REFORMULATED"

    const-string v9, "Reformulated"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->REFORMULATED:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    .line 20
    new-instance v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    const/4 v8, 0x7

    const-string v9, "EXIT_SEARCH"

    const-string v10, "ExitSearch"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->EXIT_SEARCH:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    .line 21
    new-instance v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    const/16 v9, 0x8

    const-string v10, "SEARCH_SUGGESTION_CLICKED"

    const-string v11, "SearchSuggestionClicked"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->SEARCH_SUGGESTION_CLICKED:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    .line 22
    new-instance v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    const/16 v10, 0x9

    const-string v11, "SPELL_CORRECTION_REJECTED"

    const-string v12, "SpellCorrectionRejected"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->SPELL_CORRECTION_REJECTED:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    .line 23
    new-instance v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    const/16 v11, 0xa

    const-string v12, "LIBRARY_SERIES_OPEN"

    const-string v13, "LibrarySeriesOpen"

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->LIBRARY_SERIES_OPEN:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    const/16 v12, 0xb

    new-array v12, v12, [Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    .line 12
    sget-object v13, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->SEARCH_AGAIN:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    aput-object v13, v12, v1

    sget-object v1, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->LIBRARY_BOOK_OPEN:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    aput-object v1, v12, v2

    sget-object v2, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->LIBRARY_BOOK_DOWNLOAD:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    aput-object v2, v12, v3

    sget-object v3, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->STORE_PAGE_OPEN:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    aput-object v3, v12, v4

    sget-object v4, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->STORE_SEE_MORE:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    aput-object v4, v12, v5

    sget-object v5, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->CLEAR_RESULTS:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    aput-object v5, v12, v6

    sget-object v5, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->REFORMULATED:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    aput-object v5, v12, v7

    sget-object v5, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->EXIT_SEARCH:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    aput-object v5, v12, v8

    sget-object v5, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->SEARCH_SUGGESTION_CLICKED:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    aput-object v5, v12, v9

    sget-object v5, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->SPELL_CORRECTION_REJECTED:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    aput-object v5, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->$VALUES:[Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    .line 28
    invoke-static {v1, v2, v3, v4, v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->clickOutcomes:Ljava/util/Set;

    .line 30
    sget-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->LIBRARY_BOOK_DOWNLOAD:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    sget-object v1, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->LIBRARY_BOOK_OPEN:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    sget-object v2, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->LIBRARY_SERIES_OPEN:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    .line 31
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->libraryOutcomes:Ljava/util/Set;

    .line 33
    sget-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->STORE_SEE_MORE:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    sget-object v1, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->STORE_PAGE_OPEN:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    .line 34
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->storeOutcomes:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->emitName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->$VALUES:[Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    invoke-virtual {v0}, [Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    return-object v0
.end method


# virtual methods
.method public getMetricEmitName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->emitName:Ljava/lang/String;

    return-object v0
.end method

.method public isClick()Z
    .locals 1

    .line 46
    sget-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->clickOutcomes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLibraryOutcome()Z
    .locals 1

    .line 50
    sget-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->libraryOutcomes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isStoreOutcome()Z
    .locals 1

    .line 54
    sget-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->storeOutcomes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
