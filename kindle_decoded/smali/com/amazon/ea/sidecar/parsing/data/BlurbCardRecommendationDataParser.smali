.class public Lcom/amazon/ea/sidecar/parsing/data/BlurbCardRecommendationDataParser;
.super Ljava/lang/Object;
.source "BlurbCardRecommendationDataParser.java"


# static fields
.field private static final TAG_ASIN:Ljava/lang/String; = "asin"

.field private static final TAG_AUTHORS:Ljava/lang/String; = "authors"

.field private static final TAG_BLURB:Ljava/lang/String; = "blurb"

.field private static final TAG_BLURB_AUTHOR_IMAGE_ALT_TEXT:Ljava/lang/String; = "blurbAuthorImageAltText"

.field private static final TAG_BLURB_AUTHOR_IMAGE_URL:Ljava/lang/String; = "blurbAuthorImageUrl"

.field private static final TAG_BLURB_AUTHOR_NAME:Ljava/lang/String; = "blurbAuthorName"

.field private static final TAG_BLURB_AUTHOR_NAME_ALT_TEXT:Ljava/lang/String; = "blurbAuthorNameAltText"

.field private static final TAG_BLURB_AUTHOR_ROLE:Ljava/lang/String; = "blurbAuthorRole"

.field private static final TAG_IMAGE_STYLE_CODES:Ljava/lang/String; = "imageStyleCodes"

.field private static final TAG_IMAGE_URL:Ljava/lang/String; = "imageUrl"

.field private static final TAG_TITLE:Ljava/lang/String; = "title"


# direct methods
.method public static parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;
    .locals 13

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "asin"

    .line 47
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "title"

    .line 48
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "blurb"

    .line 49
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "blurbAuthorName"

    .line 50
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "blurbAuthorImageUrl"

    .line 51
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "blurbAuthorRole"

    .line 52
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "blurbAuthorImageAltText"

    .line 53
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "blurbAuthorNameAltText"

    .line 54
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "imageUrl"

    .line 55
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 58
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "imageStyleCodes"

    .line 64
    invoke-static {p0, v0}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 66
    invoke-static {v1, v0}, Lcom/amazon/ea/util/StyleCodeUtil;->addStyleParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_2
    move-object v5, v1

    :goto_0
    const-string v0, "authors"

    .line 69
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz p0, :cond_4

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 73
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 74
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 76
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object v6, v0

    .line 81
    new-instance p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;

    move-object v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_5
    :goto_2
    return-object v0
.end method
