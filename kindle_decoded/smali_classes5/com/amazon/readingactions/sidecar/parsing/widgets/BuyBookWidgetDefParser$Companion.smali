.class public final Lcom/amazon/readingactions/sidecar/parsing/widgets/BuyBookWidgetDefParser$Companion;
.super Ljava/lang/Object;
.source "BuyBookWidgetDefParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/sidecar/parsing/widgets/BuyBookWidgetDefParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuyBookWidgetDefParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuyBookWidgetDefParser.kt\ncom/amazon/readingactions/sidecar/parsing/widgets/BuyBookWidgetDefParser$Companion\n*L\n1#1,70:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/amazon/readingactions/sidecar/parsing/widgets/BuyBookWidgetDefParser$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "def"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "dataMap"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v2, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string/jumbo v3, "refTagPartial"

    invoke-static {v2, v3}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    if-eqz v6, :cond_3

    .line 32
    iget-object v3, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->strings:Ljava/util/Map;

    const-string/jumbo v4, "title"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/lang/String;

    .line 33
    iget-object v3, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->strings:Ljava/util/Map;

    const-string v4, "customBuyButtonText"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    .line 34
    iget-object v3, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->strings:Ljava/util/Map;

    const-string v4, "customSeeInStoreText"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    .line 36
    iget-object v3, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const/4 v4, 0x1

    const-string v5, "buyButtonVisible"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 37
    iget-object v3, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string v5, "buyInStore"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 38
    iget-object v3, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const/4 v4, 0x0

    const-string/jumbo v5, "oneClickBorrowSupported"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 40
    iget-object v3, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string v5, "dataIsCurrentBook"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 42
    iget-object v3, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string v4, "BSEDataKey"

    invoke-static {v3, v4}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 43
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 44
    instance-of v4, v3, Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    if-eqz v4, :cond_0

    .line 45
    new-instance v1, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;

    iget-object v5, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->id:Ljava/lang/String;

    iget-object v7, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v8, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayKey:Ljava/lang/String;

    iget v9, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayLimit:I

    .line 46
    move-object/from16 v16, v3

    check-cast v16, Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    move-object v4, v1

    .line 45
    invoke-direct/range {v4 .. v17}, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLcom/amazon/ea/sidecar/def/data/RecommendationData;Z)V

    return-object v1

    :cond_0
    if-eqz v17, :cond_1

    .line 52
    new-instance v1, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;

    iget-object v5, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->id:Ljava/lang/String;

    iget-object v7, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v8, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayKey:Ljava/lang/String;

    iget v9, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayLimit:I

    const/16 v16, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v17}, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLcom/amazon/ea/sidecar/def/data/RecommendationData;Z)V

    return-object v1

    .line 57
    :cond_1
    iget-object v3, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string v4, "dataKey"

    invoke-static {v3, v4}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 60
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 61
    instance-of v3, v1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    if-nez v3, :cond_2

    goto :goto_0

    .line 63
    :cond_2
    new-instance v2, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;

    iget-object v5, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->id:Ljava/lang/String;

    iget-object v7, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v8, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayKey:Ljava/lang/String;

    iget v9, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayLimit:I

    .line 65
    move-object/from16 v16, v1

    check-cast v16, Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    move-object v4, v2

    .line 63
    invoke-direct/range {v4 .. v17}, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLcom/amazon/ea/sidecar/def/data/RecommendationData;Z)V

    :cond_3
    :goto_0
    return-object v2
.end method
