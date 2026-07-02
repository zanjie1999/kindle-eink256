.class public final Lcom/amazon/readingactions/sidecar/parsing/widgets/GoodReadsShelfWidgetDefParser$Companion;
.super Ljava/lang/Object;
.source "GoodReadsShelfWidgetDefParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/sidecar/parsing/widgets/GoodReadsShelfWidgetDefParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/amazon/readingactions/sidecar/parsing/widgets/GoodReadsShelfWidgetDefParser$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/readingactions/sidecar/def/widgets/GoodReadsShelfWidgetDef;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/readingactions/sidecar/def/widgets/GoodReadsShelfWidgetDef;"
        }
    .end annotation

    const-string v0, "def"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p1, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string v1, "dataKey"

    invoke-static {v0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 19
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v2, v2, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    .line 20
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    :cond_1
    move-object v7, v1

    .line 23
    new-instance p2, Lcom/amazon/readingactions/sidecar/def/widgets/GoodReadsShelfWidgetDef;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->id:Ljava/lang/String;

    iget-object v4, p1, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v5, p1, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayKey:Ljava/lang/String;

    iget v6, p1, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayLimit:I

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/amazon/readingactions/sidecar/def/widgets/GoodReadsShelfWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;)V

    return-object p2

    :cond_2
    return-object v1
.end method
