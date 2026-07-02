.class public Lcom/amazon/ea/sidecar/parsing/widgets/MarkAsReadingWidgetDefParser;
.super Ljava/lang/Object;
.source "MarkAsReadingWidgetDefParser.java"


# static fields
.field private static final TAG_DATA_KEY:Ljava/lang/String; = "dataKey"


# direct methods
.method public static parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string v1, "dataKey"

    invoke-static {v0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 27
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 28
    instance-of v0, p1, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 32
    :goto_0
    new-instance p1, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;

    iget-object v3, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayKey:Ljava/lang/String;

    iget v6, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayLimit:I

    move-object v7, v1

    check-cast v7, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;)V

    return-object p1
.end method
