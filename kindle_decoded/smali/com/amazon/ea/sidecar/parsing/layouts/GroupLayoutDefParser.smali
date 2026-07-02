.class public Lcom/amazon/ea/sidecar/parsing/layouts/GroupLayoutDefParser;
.super Ljava/lang/Object;
.source "GroupLayoutDefParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.sidecar.parsing.layouts.GroupLayoutDefParser"

.field private static final TAG_BODY_SECTION:Ljava/lang/String; = "body"

.field private static final TAG_FOOTER_SECTION:Ljava/lang/String; = "footer"

.field private static final TAG_GROUP_SLOTS:Ljava/lang/String; = "widgetSlots"

.field private static final TAG_GROUP_TITLE_ID:Ljava/lang/String; = "titleKey"

.field private static final TAG_OPTION_PROVIDES_HEADER_INFO:Ljava/lang/String; = "providesHeaderInfo"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static parse(Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;)Lcom/amazon/ea/sidecar/def/layouts/GroupLayoutDef;
    .locals 7

    .line 40
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/amazon/ea/sidecar/parsing/layouts/GroupLayoutDefParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "group layout raw def:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->widgetPlacement:Lorg/json/JSONObject;

    const-string v1, "body"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_2

    .line 47
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 48
    sget-object p0, Lcom/amazon/ea/sidecar/parsing/layouts/GroupLayoutDefParser;->TAG:Ljava/lang/String;

    const-string v0, "Could not find \"body\" section; invalid group layout def."

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_2
    invoke-static {p0, v0}, Lcom/amazon/ea/sidecar/parsing/layouts/GroupLayoutDefParser;->parseGroupSection(Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    .line 57
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->widgetPlacement:Lorg/json/JSONObject;

    const-string v1, "footer"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 59
    invoke-static {p0, v0}, Lcom/amazon/ea/sidecar/parsing/layouts/GroupLayoutDefParser;->parseGroupSection(Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 61
    invoke-static {v0}, Lcom/amazon/ea/guava/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    move-object v4, v0

    .line 64
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->options:Lorg/json/JSONObject;

    const-string/jumbo v1, "providesHeaderInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 66
    new-instance v6, Lcom/amazon/ea/sidecar/def/layouts/GroupLayoutDef;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->metricsTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->requiredWidgets:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ea/sidecar/def/layouts/GroupLayoutDef;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;Z)V

    return-object v6
.end method

.method private static parseGroupSection(Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/layouts/GroupDef;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/ea/guava/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 80
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 81
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    iget-object v3, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->strings:Ljava/util/Map;

    const-string/jumbo v4, "titleKey"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "widgetSlots"

    .line 87
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->parseWidgetSlots(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 90
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    sget-object v2, Lcom/amazon/ea/sidecar/parsing/layouts/GroupLayoutDefParser;->TAG:Ljava/lang/String;

    const-string v3, "GroupDef cannot have null or empty slots; skipping."

    invoke-static {v2, v3}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_1
    new-instance v4, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;

    invoke-direct {v4, v3, v2}, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 101
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 102
    sget-object p0, Lcom/amazon/ea/sidecar/parsing/layouts/GroupLayoutDefParser;->TAG:Ljava/lang/String;

    const-string p1, "No valid groups found in def; layout is invalid."

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 p0, 0x0

    return-object p0

    :cond_5
    return-object v0
.end method
