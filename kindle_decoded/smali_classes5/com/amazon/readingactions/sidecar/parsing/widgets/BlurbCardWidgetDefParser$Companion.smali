.class public final Lcom/amazon/readingactions/sidecar/parsing/widgets/BlurbCardWidgetDefParser$Companion;
.super Ljava/lang/Object;
.source "BlurbCardWidgetDefParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/sidecar/parsing/widgets/BlurbCardWidgetDefParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
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
    invoke-direct {p0}, Lcom/amazon/readingactions/sidecar/parsing/widgets/BlurbCardWidgetDefParser$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;
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
            "Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "def"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "dataMap"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v2, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string/jumbo v3, "refTagPartial"

    invoke-static {v2, v3}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x0

    if-eqz v9, :cond_1

    .line 27
    iget-object v3, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->strings:Ljava/util/Map;

    const-string/jumbo v4, "title"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 28
    iget-object v3, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->strings:Ljava/util/Map;

    const-string v4, "byLine"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    .line 30
    iget-object v3, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const/4 v4, 0x0

    const-string/jumbo v5, "oneClickBorrowSupported"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 31
    iget-object v3, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const/4 v4, 0x1

    const-string/jumbo v5, "showBadges"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 33
    iget-object v3, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string v4, "dataKey"

    invoke-static {v3, v4}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 35
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    instance-of v3, v1, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;

    if-nez v3, :cond_0

    return-object v2

    .line 39
    :cond_0
    check-cast v1, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;

    invoke-virtual {v1}, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;->getRecommendations()Ljava/util/List;

    move-result-object v12

    .line 40
    invoke-virtual {v1}, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;->getProgramLightImageUrl()Ljava/lang/String;

    move-result-object v14

    .line 41
    invoke-virtual {v1}, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;->getProgramDarkImageUrl()Ljava/lang/String;

    move-result-object v15

    .line 42
    invoke-virtual {v1}, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;->getProgramImageAltText()Ljava/lang/String;

    move-result-object v16

    .line 44
    new-instance v1, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    iget-object v5, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->id:Ljava/lang/String;

    const-string v2, "def.id"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v7, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayKey:Ljava/lang/String;

    iget v8, v0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayLimit:I

    const-string/jumbo v0, "recommendations"

    .line 45
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    .line 44
    invoke-direct/range {v4 .. v17}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1

    :cond_1
    return-object v2
.end method
