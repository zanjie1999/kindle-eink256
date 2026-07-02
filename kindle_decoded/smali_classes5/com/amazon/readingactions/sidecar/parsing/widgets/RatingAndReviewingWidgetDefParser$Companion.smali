.class public final Lcom/amazon/readingactions/sidecar/parsing/widgets/RatingAndReviewingWidgetDefParser$Companion;
.super Ljava/lang/Object;
.source "RatingAndReviewingWidgetDefParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/sidecar/parsing/widgets/RatingAndReviewingWidgetDefParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/amazon/readingactions/sidecar/parsing/widgets/RatingAndReviewingWidgetDefParser$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Lcom/amazon/ea/sidecar/def/CommonData;Ljava/util/Map;)Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;",
            "Lcom/amazon/ea/sidecar/def/CommonData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "def"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "commonData"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "dataMap"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v3, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->strings:Ljava/util/Map;

    const-string/jumbo v4, "title"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    move-object v9, v3

    const-string v3, "customerProfile"

    .line 29
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    instance-of v4, v4, Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_1
    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 30
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    move-object v10, v3

    goto :goto_2

    :cond_2
    move-object v10, v6

    :goto_2
    const-string/jumbo v3, "publicSharedRating"

    .line 34
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    instance-of v4, v4, Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    goto :goto_3

    :cond_3
    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_4

    .line 35
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    move-object v11, v3

    goto :goto_4

    :cond_4
    move-object v11, v6

    :goto_4
    const-string/jumbo v3, "review"

    .line 39
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    instance-of v4, v4, Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    goto :goto_5

    :cond_5
    const/4 v4, 0x1

    :goto_5
    if-eqz v4, :cond_6

    .line 40
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    move-object v12, v3

    goto :goto_6

    :cond_6
    move-object v12, v6

    :goto_6
    const-string v3, "goodReadsReview"

    .line 44
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    instance-of v5, v4, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    :cond_7
    if-eqz v5, :cond_8

    .line 45
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    move-object v13, v2

    goto :goto_7

    :cond_8
    move-object v13, v6

    .line 48
    :goto_7
    iget-object v2, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string/jumbo v3, "refTagPartial"

    invoke-static {v2, v3}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 50
    new-instance v2, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;

    iget-object v5, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->id:Ljava/lang/String;

    iget-object v6, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v7, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayKey:Ljava/lang/String;

    iget v8, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayLimit:I

    .line 52
    iget-wide v14, v1, Lcom/amazon/ea/sidecar/def/CommonData;->timestamp:J

    move-object v4, v2

    .line 50
    invoke-direct/range {v4 .. v16}, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;JLjava/lang/String;)V

    return-object v2
.end method
