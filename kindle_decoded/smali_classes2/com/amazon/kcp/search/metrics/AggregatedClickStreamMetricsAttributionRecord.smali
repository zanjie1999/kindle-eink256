.class public final Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;
.super Ljava/lang/Object;
.source "AggregatedClickStreamMetricsAttributionRecord.kt"


# instance fields
.field private aliasOrIndex:Ljava/lang/String;

.field private asinData:Ljava/lang/String;

.field private clickAttributionPageTypeId:Ljava/lang/String;

.field private glanceView:Ljava/lang/String;

.field private hitType:Ljava/lang/String;

.field private impression:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionImpressionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private keywords:Ljava/lang/String;

.field private legalEntityId:I

.field private pageType:Ljava/lang/String;

.field private previousSearchItemPosition:I

.field private previousSearchPageNumber:I

.field private queryId:Ljava/lang/String;

.field private rank:Ljava/lang/String;

.field private refMarker:Ljava/lang/String;

.field private refinements:Ljava/lang/String;

.field private remoteAddress:Ljava/lang/String;

.field private requestId:Ljava/lang/String;

.field private searchAttributionPageTypeId:Ljava/lang/String;

.field private searchPage:Ljava/lang/String;

.field private searchPrefix:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private siteVariant:Ljava/lang/String;

.field private spellCorrection:Ljava/lang/String;

.field private sr:Ljava/lang/String;

.field private statusCode:I

.field private subPageType:Ljava/lang/String;

.field private tabId:Ljava/lang/String;

.field private teamName:Ljava/lang/String;

.field private totalFound:I

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 33

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const v31, 0x3fffffff    # 1.9999999f

    const/16 v32, 0x0

    invoke-direct/range {v0 .. v32}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionImpressionRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v13, p16

    move-object/from16 v14, p17

    move-object/from16 v15, p18

    move-object/from16 v0, p20

    const-string v0, "requestId"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionId"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteAddress"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userAgent"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refMarker"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "siteVariant"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hitType"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "teamName"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryId"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "glanceView"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sr"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickAttributionPageTypeId"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchPage"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aliasOrIndex"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keywords"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageType"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impression"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subPageType"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchAttributionPageTypeId"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p20

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->requestId:Ljava/lang/String;

    iput-object v2, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->sessionId:Ljava/lang/String;

    iput-object v3, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->remoteAddress:Ljava/lang/String;

    iput-object v4, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->userAgent:Ljava/lang/String;

    move/from16 v1, p5

    iput v1, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->legalEntityId:I

    move/from16 v1, p6

    iput v1, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->statusCode:I

    iput-object v5, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->refMarker:Ljava/lang/String;

    iput-object v6, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->siteVariant:Ljava/lang/String;

    iput-object v7, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->hitType:Ljava/lang/String;

    iput-object v8, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->teamName:Ljava/lang/String;

    iput-object v9, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->queryId:Ljava/lang/String;

    iput-object v10, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->glanceView:Ljava/lang/String;

    iput-object v11, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->sr:Ljava/lang/String;

    iput-object v12, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->clickAttributionPageTypeId:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->asinData:Ljava/lang/String;

    iput-object v13, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->searchPage:Ljava/lang/String;

    iput-object v14, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->aliasOrIndex:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->keywords:Ljava/lang/String;

    move/from16 v1, p19

    iput v1, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->totalFound:I

    iput-object v15, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->pageType:Ljava/lang/String;

    move-object/from16 v1, p21

    move-object/from16 v2, p22

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->impression:Ljava/util/List;

    iput-object v2, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->subPageType:Ljava/lang/String;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->searchAttributionPageTypeId:Ljava/lang/String;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->rank:Ljava/lang/String;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->spellCorrection:Ljava/lang/String;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->refinements:Ljava/lang/String;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->searchPrefix:Ljava/lang/String;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->tabId:Ljava/lang/String;

    move/from16 v1, p29

    iput v1, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->previousSearchPageNumber:I

    move/from16 v1, p30

    iput v1, v0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->previousSearchItemPosition:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 31

    move/from16 v0, p31

    and-int/lit8 v1, v0, 0x1

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    move-object v9, v2

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    move-object v10, v2

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    move-object v11, v2

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    move-object v12, v2

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    move-object v13, v2

    goto :goto_a

    :cond_a
    move-object/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    move-object v14, v2

    goto :goto_b

    :cond_b
    move-object/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    move-object v15, v2

    goto :goto_c

    :cond_c
    move-object/from16 v15, p13

    :goto_c
    and-int/lit16 v7, v0, 0x2000

    if-eqz v7, :cond_d

    move-object v7, v2

    goto :goto_d

    :cond_d
    move-object/from16 v7, p14

    :goto_d
    move-object/from16 p32, v2

    and-int/lit16 v2, v0, 0x4000

    const/16 v16, 0x0

    if-eqz v2, :cond_e

    move-object/from16 v2, v16

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v17, 0x8000

    and-int v17, v0, v17

    if-eqz v17, :cond_f

    move-object/from16 v17, p32

    goto :goto_f

    :cond_f
    move-object/from16 v17, p16

    :goto_f
    const/high16 v18, 0x10000

    and-int v18, v0, v18

    if-eqz v18, :cond_10

    move-object/from16 v18, p32

    goto :goto_10

    :cond_10
    move-object/from16 v18, p17

    :goto_10
    const/high16 v19, 0x20000

    and-int v19, v0, v19

    if-eqz v19, :cond_11

    move-object/from16 v19, p32

    goto :goto_11

    :cond_11
    move-object/from16 v19, p18

    :goto_11
    const/high16 v20, 0x40000

    and-int v20, v0, v20

    if-eqz v20, :cond_12

    const/16 v20, 0x0

    goto :goto_12

    :cond_12
    move/from16 v20, p19

    :goto_12
    const/high16 v21, 0x80000

    and-int v21, v0, v21

    if-eqz v21, :cond_13

    move-object/from16 v21, p32

    goto :goto_13

    :cond_13
    move-object/from16 v21, p20

    :goto_13
    const/high16 v22, 0x100000

    and-int v22, v0, v22

    if-eqz v22, :cond_14

    .line 39
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    goto :goto_14

    :cond_14
    move-object/from16 v22, p21

    :goto_14
    const/high16 v23, 0x200000

    and-int v23, v0, v23

    if-eqz v23, :cond_15

    move-object/from16 v23, p32

    goto :goto_15

    :cond_15
    move-object/from16 v23, p22

    :goto_15
    const/high16 v24, 0x400000

    and-int v24, v0, v24

    if-eqz v24, :cond_16

    move-object/from16 v24, p32

    goto :goto_16

    :cond_16
    move-object/from16 v24, p23

    :goto_16
    const/high16 v25, 0x800000

    and-int v25, v0, v25

    if-eqz v25, :cond_17

    move-object/from16 v25, v16

    goto :goto_17

    :cond_17
    move-object/from16 v25, p24

    :goto_17
    const/high16 v26, 0x1000000

    and-int v26, v0, v26

    if-eqz v26, :cond_18

    move-object/from16 v26, v16

    goto :goto_18

    :cond_18
    move-object/from16 v26, p25

    :goto_18
    const/high16 v27, 0x2000000

    and-int v27, v0, v27

    if-eqz v27, :cond_19

    move-object/from16 v27, v16

    goto :goto_19

    :cond_19
    move-object/from16 v27, p26

    :goto_19
    const/high16 v28, 0x4000000

    and-int v28, v0, v28

    if-eqz v28, :cond_1a

    move-object/from16 v28, v16

    goto :goto_1a

    :cond_1a
    move-object/from16 v28, p27

    :goto_1a
    const/high16 v29, 0x8000000

    and-int v29, v0, v29

    if-eqz v29, :cond_1b

    goto :goto_1b

    :cond_1b
    move-object/from16 v16, p28

    :goto_1b
    const/high16 v29, 0x10000000

    and-int v29, v0, v29

    if-eqz v29, :cond_1c

    const/16 v29, 0x0

    goto :goto_1c

    :cond_1c
    move/from16 v29, p29

    :goto_1c
    const/high16 v30, 0x20000000

    and-int v0, v0, v30

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    goto :goto_1d

    :cond_1d
    move/from16 v0, p30

    :goto_1d
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p15, v7

    move-object/from16 p16, v2

    move-object/from16 p17, v17

    move-object/from16 p18, v18

    move-object/from16 p19, v19

    move/from16 p20, v20

    move-object/from16 p21, v21

    move-object/from16 p22, v22

    move-object/from16 p23, v23

    move-object/from16 p24, v24

    move-object/from16 p25, v25

    move-object/from16 p26, v26

    move-object/from16 p27, v27

    move-object/from16 p28, v28

    move-object/from16 p29, v16

    move/from16 p30, v29

    move/from16 p31, v0

    .line 52
    invoke-direct/range {p1 .. p31}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->requestId:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->requestId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->sessionId:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->sessionId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->remoteAddress:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->remoteAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->userAgent:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->userAgent:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->legalEntityId:I

    iget v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->legalEntityId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->statusCode:I

    iget v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->statusCode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->refMarker:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->refMarker:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->siteVariant:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->siteVariant:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->hitType:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->hitType:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->teamName:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->teamName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->queryId:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->queryId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->glanceView:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->glanceView:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->sr:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->sr:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->clickAttributionPageTypeId:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->clickAttributionPageTypeId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->asinData:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->asinData:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->searchPage:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->searchPage:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->aliasOrIndex:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->aliasOrIndex:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->keywords:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->keywords:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->totalFound:I

    iget v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->totalFound:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->pageType:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->pageType:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->impression:Ljava/util/List;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->impression:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->subPageType:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->subPageType:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->searchAttributionPageTypeId:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->searchAttributionPageTypeId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->rank:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->rank:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->spellCorrection:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->spellCorrection:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->refinements:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->refinements:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->searchPrefix:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->searchPrefix:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->tabId:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->tabId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->previousSearchPageNumber:I

    iget v1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->previousSearchPageNumber:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->previousSearchItemPosition:I

    iget p1, p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->previousSearchItemPosition:I

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

.method public final getAliasOrIndex()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->aliasOrIndex:Ljava/lang/String;

    return-object v0
.end method

.method public final getAsinData()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->asinData:Ljava/lang/String;

    return-object v0
.end method

.method public final getClickAttributionPageTypeId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->clickAttributionPageTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public final getGlanceView()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->glanceView:Ljava/lang/String;

    return-object v0
.end method

.method public final getHitType()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->hitType:Ljava/lang/String;

    return-object v0
.end method

.method public final getImpression()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionImpressionRecord;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->impression:Ljava/util/List;

    return-object v0
.end method

.method public final getKeywords()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public final getLegalEntityId()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->legalEntityId:I

    return v0
.end method

.method public final getPageType()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->pageType:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreviousSearchItemPosition()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->previousSearchItemPosition:I

    return v0
.end method

.method public final getPreviousSearchPageNumber()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->previousSearchPageNumber:I

    return v0
.end method

.method public final getQueryId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->queryId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRank()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->rank:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefMarker()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->refMarker:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefinements()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->refinements:Ljava/lang/String;

    return-object v0
.end method

.method public final getRemoteAddress()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->remoteAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSearchAttributionPageTypeId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->searchAttributionPageTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSearchPage()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->searchPage:Ljava/lang/String;

    return-object v0
.end method

.method public final getSearchPrefix()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->searchPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSiteVariant()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->siteVariant:Ljava/lang/String;

    return-object v0
.end method

.method public final getSpellCorrection()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->spellCorrection:Ljava/lang/String;

    return-object v0
.end method

.method public final getSr()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->sr:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->statusCode:I

    return v0
.end method

.method public final getSubPageType()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->subPageType:Ljava/lang/String;

    return-object v0
.end method

.method public final getTabId()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTeamName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->teamName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotalFound()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->totalFound:I

    return v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->requestId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->sessionId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->remoteAddress:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->userAgent:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->legalEntityId:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->statusCode:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->refMarker:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->siteVariant:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->hitType:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->teamName:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->queryId:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->glanceView:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->sr:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->clickAttributionPageTypeId:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->asinData:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->searchPage:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->aliasOrIndex:Ljava/lang/String;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_e
    const/4 v2, 0x0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->keywords:Ljava/lang/String;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->totalFound:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->pageType:Ljava/lang/String;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_10

    :cond_10
    const/4 v2, 0x0

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->impression:Ljava/util/List;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_11

    :cond_11
    const/4 v2, 0x0

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->subPageType:Ljava/lang/String;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_12

    :cond_12
    const/4 v2, 0x0

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->searchAttributionPageTypeId:Ljava/lang/String;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_13

    :cond_13
    const/4 v2, 0x0

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->rank:Ljava/lang/String;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_14

    :cond_14
    const/4 v2, 0x0

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->spellCorrection:Ljava/lang/String;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_15

    :cond_15
    const/4 v2, 0x0

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->refinements:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_16

    :cond_16
    const/4 v2, 0x0

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->searchPrefix:Ljava/lang/String;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_17
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->tabId:Ljava/lang/String;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_18
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->previousSearchPageNumber:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->previousSearchItemPosition:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setAliasOrIndex(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->aliasOrIndex:Ljava/lang/String;

    return-void
.end method

.method public final setClickAttributionPageTypeId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->clickAttributionPageTypeId:Ljava/lang/String;

    return-void
.end method

.method public final setGlanceView(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->glanceView:Ljava/lang/String;

    return-void
.end method

.method public final setHitType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->hitType:Ljava/lang/String;

    return-void
.end method

.method public final setImpression(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionImpressionRecord;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->impression:Ljava/util/List;

    return-void
.end method

.method public final setKeywords(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->keywords:Ljava/lang/String;

    return-void
.end method

.method public final setLegalEntityId(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->legalEntityId:I

    return-void
.end method

.method public final setPageType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->pageType:Ljava/lang/String;

    return-void
.end method

.method public final setPreviousSearchItemPosition(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->previousSearchItemPosition:I

    return-void
.end method

.method public final setPreviousSearchPageNumber(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->previousSearchPageNumber:I

    return-void
.end method

.method public final setQueryId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->queryId:Ljava/lang/String;

    return-void
.end method

.method public final setRank(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->rank:Ljava/lang/String;

    return-void
.end method

.method public final setRefMarker(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->refMarker:Ljava/lang/String;

    return-void
.end method

.method public final setRemoteAddress(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->remoteAddress:Ljava/lang/String;

    return-void
.end method

.method public final setRequestId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->requestId:Ljava/lang/String;

    return-void
.end method

.method public final setSearchAttributionPageTypeId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->searchAttributionPageTypeId:Ljava/lang/String;

    return-void
.end method

.method public final setSearchPage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->searchPage:Ljava/lang/String;

    return-void
.end method

.method public final setSearchPrefix(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->searchPrefix:Ljava/lang/String;

    return-void
.end method

.method public final setSessionId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public final setSiteVariant(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->siteVariant:Ljava/lang/String;

    return-void
.end method

.method public final setSpellCorrection(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->spellCorrection:Ljava/lang/String;

    return-void
.end method

.method public final setSr(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->sr:Ljava/lang/String;

    return-void
.end method

.method public final setStatusCode(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->statusCode:I

    return-void
.end method

.method public final setSubPageType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->subPageType:Ljava/lang/String;

    return-void
.end method

.method public final setTabId(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->tabId:Ljava/lang/String;

    return-void
.end method

.method public final setTeamName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->teamName:Ljava/lang/String;

    return-void
.end method

.method public final setTotalFound(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->totalFound:I

    return-void
.end method

.method public final setUserAgent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AggregatedClickStreamMetricsAttributionRecord(requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remoteAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->remoteAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userAgent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", legalEntityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->legalEntityId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", refMarker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->refMarker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", siteVariant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->siteVariant:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hitType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->hitType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", teamName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->teamName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", queryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->queryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", glanceView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->glanceView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->sr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clickAttributionPageTypeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->clickAttributionPageTypeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", asinData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->asinData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", searchPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->searchPage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", aliasOrIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->aliasOrIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keywords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->keywords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", totalFound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->totalFound:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->pageType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", impression="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->impression:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subPageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->subPageType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", searchAttributionPageTypeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->searchAttributionPageTypeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->rank:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", spellCorrection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->spellCorrection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refinements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->refinements:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", searchPrefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->searchPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tabId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->tabId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", previousSearchPageNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->previousSearchPageNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", previousSearchItemPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->previousSearchItemPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
