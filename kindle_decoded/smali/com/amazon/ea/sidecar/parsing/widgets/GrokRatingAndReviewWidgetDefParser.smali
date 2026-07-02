.class public Lcom/amazon/ea/sidecar/parsing/widgets/GrokRatingAndReviewWidgetDefParser;
.super Ljava/lang/Object;
.source "GrokRatingAndReviewWidgetDefParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.sidecar.parsing.widgets.GrokRatingAndReviewWidgetDefParser"

.field private static final TAG_DATA_CUSTOMER_PROFILE:Ljava/lang/String; = "customerProfile"

.field private static final TAG_DATA_GOODREADS_REVIEW:Ljava/lang/String; = "goodReadsReview"

.field private static final TAG_DATA_PUBLIC_SHARED_RATING:Ljava/lang/String; = "publicSharedRating"

.field private static final TAG_DATA_RATING:Ljava/lang/String; = "rating"

.field private static final TAG_DATA_REVIEW:Ljava/lang/String; = "review"

.field private static final TAG_OPTION_DATA_KEY:Ljava/lang/String; = "dataKey"

.field private static final TAG_OPTION_REF_TAG_PARTIAL:Ljava/lang/String; = "refTagPartial"

.field private static final TAG_OPTION_SHOW_SHARE_COMPONENT:Ljava/lang/String; = "showShareComponent"

.field private static final TAG_STRING_SHARE_BUTTON_TEXT:Ljava/lang/String; = "shareButtonText"

.field private static final TAG_STRING_SHARE_TITLE:Ljava/lang/String; = "shareTitle"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Lcom/amazon/ea/sidecar/def/CommonData;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;",
            "Lcom/amazon/ea/sidecar/def/CommonData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "customerProfile"

    .line 40
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 41
    instance-of v3, v2, Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v2, v4

    :cond_0
    const-string/jumbo v3, "rating"

    .line 45
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 46
    instance-of v5, v3, Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;

    if-nez v5, :cond_1

    move-object v3, v4

    :cond_1
    const-string/jumbo v5, "review"

    .line 50
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 51
    instance-of v6, v5, Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    if-nez v6, :cond_2

    move-object v5, v4

    :cond_2
    const-string v6, "goodReadsReview"

    .line 55
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 56
    instance-of v7, v6, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    if-nez v7, :cond_3

    move-object v6, v4

    :cond_3
    const-string/jumbo v7, "publicSharedRating"

    .line 60
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 61
    instance-of v8, v7, Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    if-nez v8, :cond_4

    move-object v7, v4

    .line 66
    :cond_4
    iget-object v8, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string v9, "dataKey"

    invoke-static {v8, v9}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 68
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    instance-of v8, v1, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    if-nez v8, :cond_5

    goto :goto_0

    :cond_5
    move-object v4, v1

    .line 74
    :cond_6
    :goto_0
    iget-object v1, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const/4 v8, 0x0

    const-string/jumbo v9, "showShareComponent"

    invoke-virtual {v1, v9, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 75
    iget-object v9, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->strings:Ljava/util/Map;

    const-string/jumbo v10, "shareTitle"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v24, v9

    check-cast v24, Ljava/lang/String;

    .line 76
    iget-object v9, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->strings:Ljava/util/Map;

    const-string/jumbo v10, "shareButtonText"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v25, v9

    check-cast v25, Ljava/lang/String;

    .line 77
    iget-object v9, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string/jumbo v10, "refTagPartial"

    invoke-static {v9, v10}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-eqz v1, :cond_9

    .line 79
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 80
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 81
    sget-object v9, Lcom/amazon/ea/sidecar/parsing/widgets/GrokRatingAndReviewWidgetDefParser;->TAG:Ljava/lang/String;

    const-string v10, "No share title, but can still show share button if desired"

    invoke-static {v9, v10}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_7
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 86
    sget-object v1, Lcom/amazon/ea/sidecar/parsing/widgets/GrokRatingAndReviewWidgetDefParser;->TAG:Ljava/lang/String;

    const-string v9, "Cannot show share button because shareButtonText is null"

    invoke-static {v1, v9}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 90
    :cond_8
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 91
    sget-object v1, Lcom/amazon/ea/sidecar/parsing/widgets/GrokRatingAndReviewWidgetDefParser;->TAG:Ljava/lang/String;

    const-string v9, "Cannot show share button because refTagPartial is null"

    invoke-static {v1, v9}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v23, 0x0

    goto :goto_1

    :cond_9
    move/from16 v23, v1

    .line 96
    :goto_1
    new-instance v1, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;

    move-object v10, v1

    iget-object v11, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->id:Ljava/lang/String;

    iget-object v12, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v13, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayKey:Ljava/lang/String;

    iget v14, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayLimit:I

    move-object v15, v2

    check-cast v15, Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    move-object/from16 v16, v3

    check-cast v16, Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;

    move-object/from16 v17, v7

    check-cast v17, Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    move-object/from16 v18, v5

    check-cast v18, Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/amazon/ea/sidecar/def/CommonData;->timestamp:J

    move-wide/from16 v19, v2

    move-object/from16 v21, v6

    check-cast v21, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    move-object/from16 v22, v4

    check-cast v22, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    invoke-direct/range {v10 .. v26}, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/amazon/ea/sidecar/def/data/CustomerProfileData;Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;JLcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
