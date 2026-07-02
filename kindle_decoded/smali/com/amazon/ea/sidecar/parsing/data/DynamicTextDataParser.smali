.class public Lcom/amazon/ea/sidecar/parsing/data/DynamicTextDataParser;
.super Ljava/lang/Object;
.source "DynamicTextDataParser.java"


# static fields
.field private static final TAG_LOCALIZED_SUBTEXT:Ljava/lang/String; = "localizedSubtext"

.field private static final TAG_LOCALIZED_TEXT:Ljava/lang/String; = "localizedText"

.field private static final TAG_UNLOCALIZED_SUBTEXT:Ljava/lang/String; = "unlocalizedSubtext"

.field private static final TAG_UNLOCALIZED_TEXT:Ljava/lang/String; = "unlocalizedText"


# direct methods
.method public static parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/DynamicTextData;
    .locals 7

    .line 51
    invoke-static {p0}, Lcom/amazon/ea/sidecar/parsing/LocalizationHelper;->parseForDefaultLocale(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "localizedText"

    .line 54
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "unlocalizedText"

    .line 55
    invoke-static {p0, v2}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 57
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
    const-string v4, "localizedSubtext"

    .line 65
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v4, "unlocalizedSubtext"

    .line 66
    invoke-static {p0, v4}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    .line 70
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    return-object v5

    :cond_3
    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    move-object v1, v2

    :goto_0
    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    move-object v0, p0

    .line 77
    :goto_1
    new-instance p0, Lcom/amazon/ea/sidecar/def/data/DynamicTextData;

    invoke-direct {p0, v1, v0}, Lcom/amazon/ea/sidecar/def/data/DynamicTextData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
