.class public Lcom/amazon/ea/sidecar/parsing/layouts/VerticalListWithPanelLayoutDefParser;
.super Ljava/lang/Object;
.source "VerticalListWithPanelLayoutDefParser.java"


# static fields
.field private static final TAG_BODY_SLOTS:Ljava/lang/String; = "body"

.field private static final TAG_PANEL_SLOTS:Ljava/lang/String; = "panel"


# direct methods
.method public static parse(Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;)Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithPanelLayoutDef;
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->widgetPlacement:Lorg/json/JSONObject;

    const-string v1, "body"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->parseWidgetSlots(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 32
    :cond_0
    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->widgetPlacement:Lorg/json/JSONObject;

    const-string/jumbo v3, "panel"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->parseWidgetSlots(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    .line 37
    :cond_1
    new-instance v1, Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithPanelLayoutDef;

    iget-object v3, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->metricsTag:Ljava/lang/String;

    iget-object p0, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->requiredWidgets:Ljava/util/Set;

    invoke-direct {v1, v3, p0, v0, v2}, Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithPanelLayoutDef;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method
