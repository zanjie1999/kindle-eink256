.class public Lcom/amazon/ea/sidecar/parsing/data/GoodreadsShelfDataParser;
.super Ljava/lang/Object;
.source "GoodreadsShelfDataParser.java"


# static fields
.field private static final TAG_ASIN:Ljava/lang/String; = "asin"

.field private static final TAG_IS_AUTO_SHELVING_ENABLED:Ljava/lang/String; = "is_autoshelving_enabled"

.field private static final TAG_IS_SENSITIVE:Ljava/lang/String; = "is_sensitive"

.field private static final TAG_SHELVES:Ljava/lang/String; = "shelves"


# direct methods
.method public static parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;
    .locals 5

    const-string v0, "asin"

    .line 45
    invoke-static {p0, v0}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string/jumbo v1, "shelves"

    .line 50
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_1

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 55
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    .line 56
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 57
    invoke-static {v1, v3}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 59
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_1
    const/4 v2, 0x1

    const-string v3, "is_sensitive"

    .line 65
    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 67
    new-instance v2, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    invoke-direct {v2, v0, v1, p0}, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    return-object v2
.end method
