.class public Lcom/amazon/ea/sidecar/parsing/widgets/ShovelerWidgetDefParser;
.super Ljava/lang/Object;
.source "ShovelerWidgetDefParser.java"


# static fields
.field private static final TAG_OPTION_DATA_KEY:Ljava/lang/String; = "dataKey"

.field private static final TAG_OPTION_REF_TAG_PARTIAL:Ljava/lang/String; = "refTagPartial"

.field private static final TAG_STRING_TITLE:Ljava/lang/String; = "title"


# direct methods
.method public static parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string/jumbo v1, "refTagPartial"

    invoke-static {v0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    if-nez v7, :cond_0

    return-object v0

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->strings:Ljava/util/Map;

    const-string/jumbo v2, "title"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    .line 31
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string v2, "dataKey"

    invoke-static {v1, v2}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 36
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 37
    instance-of v1, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationListData;

    if-nez v1, :cond_2

    return-object v0

    .line 40
    :cond_2
    check-cast p1, Lcom/amazon/ea/sidecar/def/data/RecommendationListData;

    iget-object v9, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationListData;->recommendations:Ljava/util/List;

    .line 41
    new-instance p1, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v3, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayKey:Ljava/lang/String;

    iget v6, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayLimit:I

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p1
.end method
