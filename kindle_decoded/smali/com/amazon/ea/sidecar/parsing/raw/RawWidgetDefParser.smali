.class public Lcom/amazon/ea/sidecar/parsing/raw/RawWidgetDefParser;
.super Ljava/lang/Object;
.source "RawWidgetDefParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.sidecar.parsing.raw.RawWidgetDefParser"

.field private static final TAG_DISPLAY_LIMIT:Ljava/lang/String; = "displayLimit"

.field private static final TAG_DISPLAY_LIMIT_KEY:Ljava/lang/String; = "displayLimitKey"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "id"

    .line 49
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    const-string v1, "class"

    .line 54
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    return-object v0

    :cond_2
    const-string/jumbo v1, "metricsTag"

    .line 59
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    return-object v0

    :cond_3
    const-string/jumbo v0, "strings"

    .line 65
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/sidecar/parsing/LocalizationHelper;->parseForDefaultLocale(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v6

    const-string/jumbo v0, "options"

    .line 67
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_4

    .line 69
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :cond_4
    move-object v7, p0

    const-string p0, "displayLimitKey"

    .line 72
    invoke-static {v7, p0}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 p0, -0x1

    const-string v0, "displayLimit"

    .line 73
    invoke-virtual {v7, v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 75
    new-instance p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;I)V

    return-object p0
.end method
