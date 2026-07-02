.class public Lcom/amazon/ea/sidecar/parsing/widgets/DynamicButtonWidgetDefParser;
.super Ljava/lang/Object;
.source "DynamicButtonWidgetDefParser.java"


# static fields
.field private static final TAG_CLICK_ONLY_ONCE:Ljava/lang/String; = "clickOnlyOnce"

.field private static final TAG_DISPLAY_IF_CLICKED:Ljava/lang/String; = "displayIfClicked"

.field private static final TAG_DYNAMIC_BUTTON_ACTION_KEY:Ljava/lang/String; = "dynamicButtonActionKey"

.field private static final TAG_DYNAMIC_BUTTON_DATA_KEY:Ljava/lang/String; = "dynamicButtonDataKey"

.field private static final TAG_FEATURE_KEY:Ljava/lang/String; = "featureKey"

.field private static final TAG_OPTION_REF_TAG_PARTIAL:Ljava/lang/String; = "refTagPartial"

.field private static final TAG_STRING_TITLE:Ljava/lang/String; = "title"


# direct methods
.method public static parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string/jumbo v1, "refTagPartial"

    invoke-static {v0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 63
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string v2, "dynamicButtonDataKey"

    invoke-static {v0, v2}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 72
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    instance-of v2, v0, Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;

    if-nez v2, :cond_2

    return-object v1

    .line 77
    :cond_2
    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string v3, "dynamicButtonActionKey"

    invoke-static {v2, v3}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v1

    .line 82
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 83
    instance-of v2, p1, Lcom/amazon/ea/sidecar/def/data/DynamicButtonActionable;

    if-nez v2, :cond_4

    return-object v1

    .line 88
    :cond_4
    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string v3, "clickOnlyOnce"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 91
    iget-object v3, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string v4, "displayIfClicked"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 94
    iget-object v4, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string v5, "featureKey"

    invoke-static {v4, v5}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 95
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    return-object v1

    .line 99
    :cond_5
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->strings:Ljava/util/Map;

    const-string/jumbo v4, "title"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    .line 101
    new-instance v1, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object v4, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->id:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayKey:Ljava/lang/String;

    iget p0, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayLimit:I

    move-object v9, v0

    check-cast v9, Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;

    move-object v10, p1

    check-cast v10, Lcom/amazon/ea/sidecar/def/data/DynamicButtonActionable;

    .line 103
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move-object v2, v1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, p0

    invoke-direct/range {v2 .. v13}, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;Lcom/amazon/ea/sidecar/def/data/DynamicButtonActionable;ZZLjava/lang/String;)V

    return-object v1
.end method
