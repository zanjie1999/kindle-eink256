.class public Lcom/amazon/ea/sidecar/parsing/data/CommunityReviewDataParser;
.super Ljava/lang/Object;
.source "CommunityReviewDataParser.java"


# static fields
.field private static final TAG_ID:Ljava/lang/String; = "reviewId"

.field private static final TAG_RATING:Ljava/lang/String; = "rating"

.field private static final TAG_SUBMISSION_DATE_MS:Ljava/lang/String; = "submissionDateMs"

.field private static final TAG_TEXT:Ljava/lang/String; = "text"

.field private static final TAG_TITLE:Ljava/lang/String; = "title"


# direct methods
.method public static parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;
    .locals 10

    const-string/jumbo v0, "reviewId"

    .line 40
    invoke-static {p0, v0}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "title"

    .line 44
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    const-string/jumbo v1, "text"

    .line 49
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    return-object v0

    :cond_2
    const/4 v1, -0x1

    const-string/jumbo v5, "rating"

    .line 54
    invoke-virtual {p0, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v1, 0x1

    if-lt v5, v1, :cond_5

    const/4 v1, 0x5

    if-le v5, v1, :cond_3

    goto :goto_0

    :cond_3
    const-wide/16 v6, -0x1

    const-string/jumbo v1, "submissionDateMs"

    .line 59
    invoke-virtual {p0, v1, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long p0, v6, v8

    if-gez p0, :cond_4

    return-object v0

    .line 64
    :cond_4
    new-instance p0, Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-object p0

    :cond_5
    :goto_0
    return-object v0
.end method
