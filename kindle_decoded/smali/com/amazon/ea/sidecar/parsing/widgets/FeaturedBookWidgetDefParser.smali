.class public Lcom/amazon/ea/sidecar/parsing/widgets/FeaturedBookWidgetDefParser;
.super Ljava/lang/Object;
.source "FeaturedBookWidgetDefParser.java"


# static fields
.field private static final TAG_OPTION_BUY_BUTTON_VISIBLE:Ljava/lang/String; = "buyButtonVisible"

.field private static final TAG_OPTION_BUY_IN_STORE:Ljava/lang/String; = "buyInStore"

.field private static final TAG_OPTION_DATA_KEY:Ljava/lang/String; = "dataKey"

.field private static final TAG_OPTION_ONE_CLICK_BORROW_SUPPORTED:Ljava/lang/String; = "oneClickBorrowSupported"

.field private static final TAG_OPTION_REF_TAG_PARTIAL:Ljava/lang/String; = "refTagPartial"

.field private static final TAG_STRING_BUY_BUTTON_TEXT:Ljava/lang/String; = "customBuyButtonText"

.field private static final TAG_STRING_SEE_IN_STORE_TEXT:Ljava/lang/String; = "customSeeInStoreText"

.field private static final TAG_STRING_TITLE:Ljava/lang/String; = "title"


# direct methods
.method public static parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 28
    iget-object v1, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string/jumbo v2, "refTagPartial"

    invoke-static {v1, v2}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    if-nez v5, :cond_0

    return-object v1

    .line 33
    :cond_0
    iget-object v2, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->strings:Ljava/util/Map;

    const-string/jumbo v3, "title"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    .line 34
    iget-object v2, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->strings:Ljava/util/Map;

    const-string v3, "customBuyButtonText"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    .line 35
    iget-object v2, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->strings:Ljava/util/Map;

    const-string v3, "customSeeInStoreText"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    .line 37
    iget-object v2, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const/4 v3, 0x1

    const-string v4, "buyButtonVisible"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 38
    iget-object v2, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string v4, "buyInStore"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 39
    iget-object v2, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const/4 v3, 0x0

    const-string/jumbo v4, "oneClickBorrowSupported"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 41
    iget-object v2, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string v3, "dataKey"

    invoke-static {v2, v3}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    move-object/from16 v3, p1

    .line 46
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 47
    instance-of v3, v2, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    if-nez v3, :cond_2

    return-object v1

    .line 51
    :cond_2
    new-instance v1, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;

    iget-object v4, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->id:Ljava/lang/String;

    iget-object v6, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v7, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayKey:Ljava/lang/String;

    iget v8, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayLimit:I

    move-object v15, v2

    check-cast v15, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    move-object v3, v1

    invoke-direct/range {v3 .. v15}, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;)V

    return-object v1
.end method
