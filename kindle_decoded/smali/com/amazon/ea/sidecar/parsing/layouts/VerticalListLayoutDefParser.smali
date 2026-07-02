.class public Lcom/amazon/ea/sidecar/parsing/layouts/VerticalListLayoutDefParser;
.super Ljava/lang/Object;
.source "VerticalListLayoutDefParser.java"


# static fields
.field private static final TAG_BODY_SLOTS:Ljava/lang/String; = "body"


# direct methods
.method public static parse(Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;)Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->widgetPlacement:Lorg/json/JSONObject;

    const-string v1, "body"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->parseWidgetSlots(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 31
    :cond_0
    new-instance v1, Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->metricsTag:Ljava/lang/String;

    iget-object p0, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->requiredWidgets:Ljava/util/Set;

    invoke-direct {v1, v2, p0, v0}, Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)V

    return-object v1
.end method
