.class public Lcom/amazon/ea/sidecar/parsing/data/BlurbCardDataParser;
.super Ljava/lang/Object;
.source "BlurbCardDataParser.java"


# static fields
.field private static final TAG_FEATURED_RECOMMENDATIONS_LIST:Ljava/lang/String; = "recommendations"

.field private static final TAG_PROGRAM_DARK_IMAGE_URL:Ljava/lang/String; = "programDarkImageUrl"

.field private static final TAG_PROGRAM_IMAGE_ALT_TEXT:Ljava/lang/String; = "programImageAltText"

.field private static final TAG_PROGRAM_LIGHT_IMAGE_URL:Ljava/lang/String; = "programLightImageUrl"


# direct methods
.method public static parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/BlurbCardData;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "recommendations"

    .line 45
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string/jumbo v2, "programLightImageUrl"

    .line 46
    invoke-static {p0, v2}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "programDarkImageUrl"

    .line 47
    invoke-static {p0, v3}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "programImageAltText"

    .line 48
    invoke-static {p0, v4}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez v1, :cond_1

    return-object v0

    .line 54
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    .line 55
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 56
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/ea/sidecar/parsing/data/BlurbCardRecommendationDataParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 58
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 62
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;

    invoke-direct {v0, v4, v2, v3, p0}, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method
