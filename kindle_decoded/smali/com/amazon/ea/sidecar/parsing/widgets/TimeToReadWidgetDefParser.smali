.class public Lcom/amazon/ea/sidecar/parsing/widgets/TimeToReadWidgetDefParser;
.super Ljava/lang/Object;
.source "TimeToReadWidgetDefParser.java"


# static fields
.field private static final TAG_PAGE_DATA_KEY:Ljava/lang/String; = "pageDataKey"

.field private static final TAG_TIME_DATA_KEY:Ljava/lang/String; = "timeDataKey"


# direct methods
.method public static parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string/jumbo v1, "timeDataKey"

    invoke-static {v0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 27
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    instance-of v2, v0, Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;

    if-nez v2, :cond_1

    return-object v1

    .line 32
    :cond_1
    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string/jumbo v3, "pageDataKey"

    invoke-static {v2, v3}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 34
    instance-of v2, p1, Lcom/amazon/ea/sidecar/def/data/ReadingPagesData;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 38
    :goto_0
    new-instance p1, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;

    iget-object v3, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayKey:Ljava/lang/String;

    iget v6, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayLimit:I

    move-object v7, v0

    check-cast v7, Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;

    move-object v8, v1

    check-cast v8, Lcom/amazon/ea/sidecar/def/data/ReadingPagesData;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/amazon/ea/sidecar/def/data/ReadingTimeData;Lcom/amazon/ea/sidecar/def/data/ReadingPagesData;)V

    return-object p1
.end method
