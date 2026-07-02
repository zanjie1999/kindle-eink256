.class public Lcom/amazon/ea/sidecar/parsing/raw/RawLayoutDefParser;
.super Ljava/lang/Object;
.source "RawLayoutDefParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.sidecar.parsing.raw.RawLayoutDefParser"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "class"

    .line 48
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 50
    sget-object p0, Lcom/amazon/ea/sidecar/parsing/raw/RawLayoutDefParser;->TAG:Ljava/lang/String;

    const-string v1, "Missing type; layout def is invalid."

    invoke-static {p0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string/jumbo v1, "metricsTag"

    .line 54
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 56
    sget-object p0, Lcom/amazon/ea/sidecar/parsing/raw/RawLayoutDefParser;->TAG:Ljava/lang/String;

    const-string v1, "Missing metrics tag; layout def is invalid."

    invoke-static {p0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string/jumbo v1, "requiredWidgets"

    .line 60
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 61
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    if-eqz v1, :cond_4

    .line 63
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(I)V

    const/4 v5, 0x0

    .line 64
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 65
    invoke-static {v1, v5}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .line 67
    sget-object p0, Lcom/amazon/ea/sidecar/parsing/raw/RawLayoutDefParser;->TAG:Ljava/lang/String;

    const-string v1, "Found null instead of widgetID in required widgets; layout def is invalid."

    invoke-static {p0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 70
    :cond_3
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move-object v5, v2

    const-string/jumbo v1, "widgetPlacements"

    .line 74
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_5

    .line 76
    sget-object p0, Lcom/amazon/ea/sidecar/parsing/raw/RawLayoutDefParser;->TAG:Ljava/lang/String;

    const-string v1, "Missing widget placements; layout def is invalid."

    invoke-static {p0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_5
    const-string/jumbo v0, "strings"

    .line 80
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/amazon/ea/sidecar/parsing/LocalizationHelper;->parseForDefaultLocale(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v7

    const-string/jumbo v0, "options"

    .line 83
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_6

    .line 85
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :cond_6
    move-object v8, p0

    .line 88
    new-instance p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lorg/json/JSONObject;Ljava/util/Map;Lorg/json/JSONObject;)V

    return-object p0
.end method
