.class public Lcom/amazon/ea/sidecar/parsing/widgets/SimpleTextWidgetDefParser;
.super Ljava/lang/Object;
.source "SimpleTextWidgetDefParser.java"


# static fields
.field private static final TAG_STRING_TITLE:Ljava/lang/String; = "title"

.field private static final TAG_TEXT_DATA_KEY:Ljava/lang/String; = "dataKey"


# direct methods
.method public static parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/SimpleTextWidgetDef;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/ea/sidecar/def/widgets/SimpleTextWidgetDef;"
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

    const-string v1, "dataKey"

    invoke-static {v0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 29
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 30
    instance-of v0, p1, Lcom/amazon/ea/sidecar/def/data/DynamicTextData;

    if-nez v0, :cond_1

    return-object v2

    .line 33
    :cond_1
    new-instance v0, Lcom/amazon/ea/sidecar/def/widgets/SimpleTextWidgetDef;

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayKey:Ljava/lang/String;

    iget v5, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayLimit:I

    move-object v7, p1

    check-cast v7, Lcom/amazon/ea/sidecar/def/data/DynamicTextData;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/ea/sidecar/def/widgets/SimpleTextWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/amazon/ea/sidecar/def/data/DynamicTextData;)V

    return-object v0
.end method
