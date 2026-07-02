.class public Lcom/amazon/ea/sidecar/parsing/widgets/BookGridWidgetDefParser;
.super Ljava/lang/Object;
.source "BookGridWidgetDefParser.java"


# static fields
.field private static final TAG_OPTION_BUY_BUTTON_VISIBLE:Ljava/lang/String; = "buyButtonVisible"

.field private static final TAG_OPTION_BUY_IN_STORE:Ljava/lang/String; = "buyInStore"

.field private static final TAG_OPTION_DATA_KEY:Ljava/lang/String; = "dataKey"

.field private static final TAG_OPTION_ONE_CLICK_BORROW_SUPPORTED:Ljava/lang/String; = "oneClickBorrowSupported"

.field private static final TAG_OPTION_REF_TAG_PARTIAL:Ljava/lang/String; = "refTagPartial"

.field private static final TAG_OPTION_SHOW_BADGES:Ljava/lang/String; = "showBadges"

.field private static final TAG_OPTION_SHOW_SHARE_BUTTON:Ljava/lang/String; = "showShareButton"

.field private static final TAG_STRING_TITLE:Ljava/lang/String; = "title"


# direct methods
.method public static parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 30
    iget-object v1, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string/jumbo v2, "refTagPartial"

    invoke-static {v1, v2}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    if-nez v8, :cond_0

    return-object v1

    .line 35
    :cond_0
    iget-object v2, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->strings:Ljava/util/Map;

    const-string/jumbo v3, "title"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    .line 37
    iget-object v2, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const/4 v3, 0x1

    const-string v4, "buyButtonVisible"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 38
    iget-object v2, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string v4, "buyInStore"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 39
    iget-object v2, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const/4 v4, 0x0

    const-string/jumbo v5, "oneClickBorrowSupported"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 40
    iget-object v2, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string/jumbo v5, "showBadges"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 41
    iget-object v2, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string/jumbo v3, "showShareButton"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 43
    iget-object v2, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string v3, "dataKey"

    invoke-static {v2, v3}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    move-object/from16 v3, p1

    .line 48
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 49
    instance-of v3, v2, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationListData;

    if-nez v3, :cond_2

    return-object v1

    .line 52
    :cond_2
    check-cast v2, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationListData;

    iget-object v10, v2, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationListData;->recommendations:Ljava/util/List;

    .line 54
    new-instance v1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v4, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->id:Ljava/lang/String;

    iget-object v5, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v6, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayKey:Ljava/lang/String;

    iget v7, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayLimit:I

    move-object v3, v1

    invoke-direct/range {v3 .. v15}, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ZZZZZ)V

    return-object v1
.end method
