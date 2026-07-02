.class public Lcom/amazon/ea/sidecar/parsing/data/ReadingTimeDataParser;
.super Ljava/lang/Object;
.source "ReadingTimeDataParser.java"


# static fields
.field private static final TAG_FORMATTED_TIME:Ljava/lang/String; = "formattedTime"

.field private static final TAG_HOURS:Ljava/lang/String; = "hours"

.field private static final TAG_MINUTES:Ljava/lang/String; = "minutes"


# direct methods
.method public static parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;
    .locals 4

    const/4 v0, -0x1

    const-string v1, "hours"

    .line 41
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return-object v2

    :cond_0
    const-string/jumbo v3, "minutes"

    .line 46
    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_1

    return-object v2

    .line 52
    :cond_1
    invoke-static {p0}, Lcom/amazon/ea/sidecar/parsing/LocalizationHelper;->parseForDefaultLocale(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    .line 54
    new-instance v2, Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;

    const-string v3, "formattedTime"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v2, v1, v0, p0}, Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;-><init>(IILjava/lang/String;)V

    return-object v2
.end method
