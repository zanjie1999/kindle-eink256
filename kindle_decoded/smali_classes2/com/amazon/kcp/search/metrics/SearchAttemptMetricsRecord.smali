.class public final Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;
.super Ljava/lang/Object;
.source "SearchAttemptMetricsRecord.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord$Companion;


# instance fields
.field private context:Ljava/lang/String;

.field private libraryProcessPosition:I

.field private libraryResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kcp/search/ContentResult;",
            ">;"
        }
    .end annotation
.end field

.field private librarySelectedPosition:I

.field private networkAvailable:Z

.field private outcome:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

.field private outcomeSeqNum:I

.field private final searchId:Ljava/util/UUID;

.field private searchKeyword:Ljava/lang/String;

.field private searchKeywordBeforeSuggestion:Ljava/lang/String;

.field private final searchSessionId:Ljava/util/UUID;

.field private searchSuggestionResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searchSuggestionSelectedPosition:I

.field private spellCorrectedKeyword:Ljava/lang/String;

.field private storeFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private storeProcessPosition:I

.field private storeResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/store/StoreContentMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private storeSelectedPosition:I

.field private storeSortType:Ljava/lang/String;

.field private totalStoreResults:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->Companion:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;ILjava/util/List;Ljava/util/List;Ljava/util/List;IIIIILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kcp/search/ContentResult;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/store/StoreContentMetadata;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIIII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p14

    const-string v4, "searchId"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "searchSessionId"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchId:Ljava/util/UUID;

    iput-object v2, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchSessionId:Ljava/util/UUID;

    move-object v1, p3

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchKeyword:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->outcome:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    move v1, p5

    iput v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->outcomeSeqNum:I

    move-object v1, p6

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->libraryResults:Ljava/util/List;

    move-object v1, p7

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeResults:Ljava/util/List;

    move-object v1, p8

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchSuggestionResult:Ljava/util/List;

    move v1, p9

    iput v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->librarySelectedPosition:I

    move v1, p10

    iput v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeSelectedPosition:I

    move/from16 v1, p11

    iput v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchSuggestionSelectedPosition:I

    move/from16 v1, p12

    iput v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->libraryProcessPosition:I

    move/from16 v1, p13

    iput v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeProcessPosition:I

    iput-object v3, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->context:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeFilters:Ljava/util/List;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeSortType:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->spellCorrectedKeyword:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchKeywordBeforeSuggestion:Ljava/lang/String;

    move/from16 v1, p19

    iput v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->totalStoreResults:I

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->networkAvailable:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;ILjava/util/List;Ljava/util/List;Ljava/util/List;IIIIILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 24

    move/from16 v0, p21

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    move/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v10, v2

    goto :goto_4

    :cond_4
    move-object/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v11, v2

    goto :goto_5

    :cond_5
    move-object/from16 v11, p8

    :goto_5
    and-int/lit16 v1, v0, 0x100

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    const/4 v12, 0x0

    goto :goto_6

    :cond_6
    move/from16 v12, p9

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    const/4 v13, 0x0

    goto :goto_7

    :cond_7
    move/from16 v13, p10

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    const/4 v14, 0x0

    goto :goto_8

    :cond_8
    move/from16 v14, p11

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    const/4 v15, 0x0

    goto :goto_9

    :cond_9
    move/from16 v15, p12

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    const/16 v16, 0x0

    goto :goto_a

    :cond_a
    move/from16 v16, p13

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    const-string v1, "Null"

    move-object/from16 v17, v1

    goto :goto_b

    :cond_b
    move-object/from16 v17, p14

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    move-object/from16 v18, v2

    goto :goto_c

    :cond_c
    move-object/from16 v18, p15

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move-object/from16 v19, v2

    goto :goto_d

    :cond_d
    move-object/from16 v19, p16

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move-object/from16 v20, v2

    goto :goto_e

    :cond_e
    move-object/from16 v20, p17

    :goto_e
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move-object/from16 v21, v2

    goto :goto_f

    :cond_f
    move-object/from16 v21, p18

    :goto_f
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    const/4 v1, -0x1

    const/16 v22, -0x1

    goto :goto_10

    :cond_10
    move/from16 v22, p19

    :goto_10
    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    const/16 v23, 0x0

    goto :goto_11

    :cond_11
    move/from16 v23, p20

    :goto_11
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 32
    invoke-direct/range {v3 .. v23}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;-><init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;ILjava/util/List;Ljava/util/List;Ljava/util/List;IIIIILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static final initialize(Ljava/util/UUID;Ljava/util/UUID;)Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->Companion:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord$Companion;->initialize(Ljava/util/UUID;Ljava/util/UUID;)Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchId:Ljava/util/UUID;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchId:Ljava/util/UUID;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchSessionId:Ljava/util/UUID;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchSessionId:Ljava/util/UUID;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchKeyword:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchKeyword:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->outcome:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->outcome:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->outcomeSeqNum:I

    iget v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->outcomeSeqNum:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->libraryResults:Ljava/util/List;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->libraryResults:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeResults:Ljava/util/List;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeResults:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchSuggestionResult:Ljava/util/List;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchSuggestionResult:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->librarySelectedPosition:I

    iget v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->librarySelectedPosition:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeSelectedPosition:I

    iget v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchSuggestionSelectedPosition:I

    iget v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchSuggestionSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->libraryProcessPosition:I

    iget v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->libraryProcessPosition:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeProcessPosition:I

    iget v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeProcessPosition:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->context:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->context:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeFilters:Ljava/util/List;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeFilters:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeSortType:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeSortType:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->spellCorrectedKeyword:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->spellCorrectedKeyword:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchKeywordBeforeSuggestion:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchKeywordBeforeSuggestion:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->totalStoreResults:I

    iget v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->totalStoreResults:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->networkAvailable:Z

    iget-boolean p1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->networkAvailable:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getContext()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->context:Ljava/lang/String;

    return-object v0
.end method

.method public final getLibraryProcessPosition()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->libraryProcessPosition:I

    return v0
.end method

.method public final getLibraryResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/ContentResult;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->libraryResults:Ljava/util/List;

    return-object v0
.end method

.method public final getLibrarySelectedPosition()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->librarySelectedPosition:I

    return v0
.end method

.method public final getNetworkAvailable()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->networkAvailable:Z

    return v0
.end method

.method public final getOutcome()Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->outcome:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    return-object v0
.end method

.method public final getOutcomeSeqNum()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->outcomeSeqNum:I

    return v0
.end method

.method public final getSearchId()Ljava/util/UUID;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchId:Ljava/util/UUID;

    return-object v0
.end method

.method public final getSearchKeyword()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public final getSearchKeywordBeforeSuggestion()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchKeywordBeforeSuggestion:Ljava/lang/String;

    return-object v0
.end method

.method public final getSearchSessionId()Ljava/util/UUID;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchSessionId:Ljava/util/UUID;

    return-object v0
.end method

.method public final getSearchSuggestionResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchSuggestionResult:Ljava/util/List;

    return-object v0
.end method

.method public final getSearchSuggestionSelectedPosition()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchSuggestionSelectedPosition:I

    return v0
.end method

.method public final getSpellCorrectedKeyword()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->spellCorrectedKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public final getStoreFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeFilters:Ljava/util/List;

    return-object v0
.end method

.method public final getStoreProcessPosition()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeProcessPosition:I

    return v0
.end method

.method public final getStoreResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/store/StoreContentMetadata;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeResults:Ljava/util/List;

    return-object v0
.end method

.method public final getStoreSelectedPosition()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeSelectedPosition:I

    return v0
.end method

.method public final getStoreSortType()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeSortType:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotalStoreResults()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->totalStoreResults:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchId:Ljava/util/UUID;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchSessionId:Ljava/util/UUID;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchKeyword:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->outcome:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->outcomeSeqNum:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->libraryResults:Ljava/util/List;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeResults:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchSuggestionResult:Ljava/util/List;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->librarySelectedPosition:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeSelectedPosition:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchSuggestionSelectedPosition:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->libraryProcessPosition:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeProcessPosition:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->context:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeFilters:Ljava/util/List;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeSortType:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->spellCorrectedKeyword:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchKeywordBeforeSuggestion:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->totalStoreResults:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->networkAvailable:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    :cond_c
    add-int/2addr v0, v1

    return v0
.end method

.method public final setContext(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->context:Ljava/lang/String;

    return-void
.end method

.method public final setLibraryProcessPosition(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->libraryProcessPosition:I

    return-void
.end method

.method public final setLibraryResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kcp/search/ContentResult;",
            ">;)V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->libraryResults:Ljava/util/List;

    return-void
.end method

.method public final setLibrarySelectedPosition(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->librarySelectedPosition:I

    return-void
.end method

.method public final setNetworkAvailable(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->networkAvailable:Z

    return-void
.end method

.method public final setOutcome(Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->outcome:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    return-void
.end method

.method public final setOutcomeSeqNum(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->outcomeSeqNum:I

    return-void
.end method

.method public final setSearchKeyword(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchKeyword:Ljava/lang/String;

    return-void
.end method

.method public final setSearchKeywordBeforeSuggestion(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchKeywordBeforeSuggestion:Ljava/lang/String;

    return-void
.end method

.method public final setSearchSuggestionResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchSuggestionResult:Ljava/util/List;

    return-void
.end method

.method public final setSearchSuggestionSelectedPosition(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchSuggestionSelectedPosition:I

    return-void
.end method

.method public final setSpellCorrectedKeyword(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->spellCorrectedKeyword:Ljava/lang/String;

    return-void
.end method

.method public final setStoreFilters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeFilters:Ljava/util/List;

    return-void
.end method

.method public final setStoreProcessPosition(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeProcessPosition:I

    return-void
.end method

.method public final setStoreResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/store/StoreContentMetadata;",
            ">;)V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeResults:Ljava/util/List;

    return-void
.end method

.method public final setStoreSelectedPosition(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeSelectedPosition:I

    return-void
.end method

.method public final setStoreSortType(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeSortType:Ljava/lang/String;

    return-void
.end method

.method public final setTotalStoreResults(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->totalStoreResults:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchAttemptMetricsRecord(searchId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", searchSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchSessionId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", searchKeyword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", outcome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->outcome:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outcomeSeqNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->outcomeSeqNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", libraryResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->libraryResults:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", storeResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeResults:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", searchSuggestionResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchSuggestionResult:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", librarySelectedPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->librarySelectedPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", storeSelectedPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeSelectedPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", searchSuggestionSelectedPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchSuggestionSelectedPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", libraryProcessPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->libraryProcessPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", storeProcessPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeProcessPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->context:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", storeFilters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeFilters:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", storeSortType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->storeSortType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", spellCorrectedKeyword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->spellCorrectedKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", searchKeywordBeforeSuggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->searchKeywordBeforeSuggestion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", totalStoreResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->totalStoreResults:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", networkAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->networkAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
