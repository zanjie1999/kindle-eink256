.class public Lcom/amazon/ea/sidecar/parsing/data/FeaturedRecommendationDataParser;
.super Ljava/lang/Object;
.source "FeaturedRecommendationDataParser.java"


# static fields
.field private static final TAG_ASIN:Ljava/lang/String; = "asin"

.field private static final TAG_AUTHORS:Ljava/lang/String; = "authors"

.field private static final TAG_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final TAG_IMAGE_STYLE_CODES:Ljava/lang/String; = "imageStyleCodes"

.field private static final TAG_IMAGE_URL:Ljava/lang/String; = "imageUrl"

.field private static final TAG_NUMBER_OF_REVIEWS:Ljava/lang/String; = "numberOfReviews"

.field private static final TAG_RATING:Ljava/lang/String; = "amazonRating"

.field private static final TAG_TITLE:Ljava/lang/String; = "title"


# direct methods
.method public static parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;
    .locals 9

    const-string v0, "asin"

    .line 43
    invoke-static {p0, v0}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "title"

    .line 48
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    const-string v1, "description"

    .line 53
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-string v1, "amazonRating"

    .line 55
    invoke-virtual {p0, v1, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v7, v4

    const/4 v1, -0x1

    const-string/jumbo v4, "numberOfReviews"

    .line 57
    invoke-virtual {p0, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string v1, "imageUrl"

    .line 59
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v0

    :cond_2
    const-string v0, "imageStyleCodes"

    .line 66
    invoke-static {p0, v0}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 68
    invoke-static {v1, v0}, Lcom/amazon/ea/util/StyleCodeUtil;->addStyleParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_3
    move-object v4, v1

    :goto_0
    const-string v0, "authors"

    .line 71
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_4

    .line 74
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    move-object v5, p0

    goto :goto_2

    .line 76
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 77
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 78
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 80
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    move-object v5, v0

    .line 85
    :goto_2
    new-instance p0, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;FI)V

    return-object p0
.end method
