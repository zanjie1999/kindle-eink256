.class public Lcom/amazon/ea/sidecar/parsing/data/PersonalizationRatingDataParser;
.super Ljava/lang/Object;
.source "PersonalizationRatingDataParser.java"


# static fields
.field private static final TAG_RATING:Ljava/lang/String; = "value"

.field private static final TAG_TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method public static parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;
    .locals 6

    const-string/jumbo v0, "value"

    const/4 v1, -0x1

    .line 33
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_2

    const/4 v2, 0x5

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    const-string/jumbo v4, "timestamp"

    .line 38
    invoke-virtual {p0, v4, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-gez p0, :cond_1

    return-object v1

    .line 43
    :cond_1
    new-instance p0, Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;

    invoke-direct {p0, v0, v2, v3}, Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;-><init>(IJ)V

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method
