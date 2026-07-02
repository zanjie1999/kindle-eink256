.class public Lcom/amazon/ea/sidecar/parsing/ParsingUtil;
.super Ljava/lang/Object;
.source "ParsingUtil.java"


# direct methods
.method public static getString(Lorg/json/JSONArray;I)Ljava/lang/String;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p0

    .line 24
    instance-of p1, p0, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 27
    :cond_0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 39
    instance-of p1, p0, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static parseWidgetSlots(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 55
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 56
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 57
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 62
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    .line 63
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 64
    invoke-static {v4, v6}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 66
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 69
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 70
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    move-object v0, v1

    :goto_3
    return-object v0
.end method
