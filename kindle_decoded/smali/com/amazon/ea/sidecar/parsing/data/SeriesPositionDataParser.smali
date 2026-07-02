.class public Lcom/amazon/ea/sidecar/parsing/data/SeriesPositionDataParser;
.super Ljava/lang/Object;
.source "SeriesPositionDataParser.java"


# static fields
.field private static final TAG_POSITION:Ljava/lang/String; = "positionInSeries"

.field private static final TAG_SERIES_NAME:Ljava/lang/String; = "seriesName"

.field private static final TAG_TOTAL:Ljava/lang/String; = "totalInSeries"


# direct methods
.method public static parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;
    .locals 4

    const/4 v0, -0x1

    const-string/jumbo v1, "positionInSeries"

    .line 37
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    return-object v2

    :cond_0
    const-string/jumbo v3, "totalInSeries"

    .line 41
    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_1

    return-object v2

    :cond_1
    const-string/jumbo v3, "seriesName"

    .line 46
    invoke-static {p0, v3}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 47
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    .line 51
    :cond_2
    new-instance v2, Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;

    invoke-direct {v2, v1, v0, p0}, Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;-><init>(IILjava/lang/String;)V

    return-object v2
.end method
