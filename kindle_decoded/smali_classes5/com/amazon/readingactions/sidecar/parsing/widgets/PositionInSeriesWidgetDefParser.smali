.class public Lcom/amazon/readingactions/sidecar/parsing/widgets/PositionInSeriesWidgetDefParser;
.super Ljava/lang/Object;
.source "PositionInSeriesWidgetDefParser.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "com.amazon.readingactions.sidecar.parsing.widgets.PositionInSeriesWidgetDefParser"

.field private static final TAG_SERIES_POSITION_DATA_KEY:Ljava/lang/String; = "seriesPositionDataKey"

.field private static final TAG_STRING_BSE_TEXT:Ljava/lang/String; = "BSE_text"

.field private static final TAG_STRING_TEXT:Ljava/lang/String; = "text"

.field private static final TAG_STRING_WIDGET_TITLE:Ljava/lang/String; = "title"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/readingactions/sidecar/def/widgets/PositionInSeriesWidgetDef;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/readingactions/sidecar/def/widgets/PositionInSeriesWidgetDef;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->strings:Ljava/util/Map;

    const-string/jumbo v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string/jumbo v1, "seriesPositionDataKey"

    invoke-static {v0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 29
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 30
    instance-of v0, p1, Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;

    if-nez v0, :cond_1

    return-object v1

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->strings:Ljava/util/Map;

    const-string/jumbo v2, "text"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->strings:Ljava/util/Map;

    const-string v2, "BSE_text"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_3

    if-nez v8, :cond_3

    .line 38
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 39
    sget-object p0, Lcom/amazon/readingactions/sidecar/parsing/widgets/PositionInSeriesWidgetDefParser;->TAG:Ljava/lang/String;

    const-string p1, "No text to be displayed in PositionInSeries widget. Both alternatives are null."

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1

    .line 44
    :cond_3
    new-instance v0, Lcom/amazon/readingactions/sidecar/def/widgets/PositionInSeriesWidgetDef;

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayKey:Ljava/lang/String;

    iget v5, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayLimit:I

    move-object v7, p1

    check-cast v7, Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/amazon/readingactions/sidecar/def/widgets/PositionInSeriesWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
