.class public Lcom/amazon/ea/sidecar/parsing/widgets/HeaderWidgetDefParser;
.super Ljava/lang/Object;
.source "HeaderWidgetDefParser.java"


# static fields
.field private static final TAG_DATA_KEY:Ljava/lang/String; = "dataKey"

.field private static final TAG_OPTION_REF_TAG_PARTIAL:Ljava/lang/String; = "refTagPartial"

.field private static final TAG_OPTION_SHOW_SHARE_BUTTON:Ljava/lang/String; = "showShareButton"

.field private static final TAG_STRING_TITLE:Ljava/lang/String; = "title"


# direct methods
.method public static parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->strings:Ljava/util/Map;

    const-string/jumbo v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string/jumbo v1, "refTagPartial"

    invoke-static {v0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    if-nez v6, :cond_0

    return-object v0

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string v2, "dataKey"

    invoke-static {v1, v2}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 35
    :cond_1
    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const/4 v3, 0x0

    const-string/jumbo v4, "showShareButton"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 37
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 38
    instance-of v1, p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    if-nez v1, :cond_2

    return-object v0

    .line 42
    :cond_2
    new-instance v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayKey:Ljava/lang/String;

    iget v5, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayLimit:I

    move-object v8, p1

    check-cast v8, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;Z)V

    return-object v0
.end method
