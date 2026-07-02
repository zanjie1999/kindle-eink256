.class public Lcom/amazon/ea/sidecar/parsing/data/DynamicButtonDataParser;
.super Ljava/lang/Object;
.source "DynamicButtonDataParser.java"


# static fields
.field private static final TAG_LOCALIZED_BUTTON_TEXT:Ljava/lang/String; = "localizedButtonText"

.field private static final TAG_LOCALIZED_BUTTON_TEXT_ON_ACTION:Ljava/lang/String; = "localizedButtonTextOnAction"

.field private static final TAG_LOCALIZED_TEXT:Ljava/lang/String; = "localizedText"

.field private static final TAG_LOCALIZED_TEXT_ON_ACTION:Ljava/lang/String; = "localizedTextOnAction"

.field private static final TAG_UNLOCALIZED_BUTTON_TEXT:Ljava/lang/String; = "unlocalizedButtonText"

.field private static final TAG_UNLOCALIZED_BUTTON_TEXT_ON_ACTION:Ljava/lang/String; = "unlocalizedButtonTextOnAction"

.field private static final TAG_UNLOCALIZED_TEXT:Ljava/lang/String; = "unlocalizedText"

.field private static final TAG_UNLOCALIZED_TEXT_ON_ACTION:Ljava/lang/String; = "unlocalizedTextOnAction"


# direct methods
.method public static parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;
    .locals 13

    .line 70
    invoke-static {p0}, Lcom/amazon/ea/sidecar/parsing/LocalizationHelper;->parseForDefaultLocale(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "localizedButtonText"

    .line 73
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "unlocalizedButtonText"

    .line 74
    invoke-static {p0, v2}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 78
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    :cond_0
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    :cond_1
    return-object v5

    :cond_2
    const-string v4, "localizedText"

    .line 85
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "unlocalizedText"

    .line 86
    invoke-static {p0, v6}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    .line 90
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    return-object v5

    :cond_3
    const-string v8, "localizedButtonTextOnAction"

    .line 95
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v9, "unlocalizedButtonTextOnAction"

    .line 96
    invoke-static {p0, v9}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 99
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_4

    .line 100
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    return-object v5

    :cond_4
    const-string v11, "localizedTextOnAction"

    .line 105
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v11, "unlocalizedTextOnAction"

    .line 106
    invoke-static {p0, v11}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_5

    .line 110
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    return-object v5

    :cond_5
    if-eqz v3, :cond_6

    goto :goto_0

    :cond_6
    move-object v1, v2

    :goto_0
    if-eqz v7, :cond_7

    goto :goto_1

    :cond_7
    move-object v4, v6

    :goto_1
    if-eqz v11, :cond_8

    goto :goto_2

    :cond_8
    move-object v0, p0

    :goto_2
    if-eqz v10, :cond_9

    goto :goto_3

    :cond_9
    move-object v8, v9

    .line 120
    :goto_3
    new-instance p0, Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;

    invoke-direct {p0, v4, v0, v1, v8}, Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
