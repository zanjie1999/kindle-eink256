.class public final Lcom/amazon/readingactions/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser$Companion;
.super Ljava/lang/Object;
.source "AuthorSubscriptionsWidgetDefParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthorSubscriptionsWidgetDefParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthorSubscriptionsWidgetDefParser.kt\ncom/amazon/readingactions/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser$Companion\n*L\n1#1,74:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amazon/readingactions/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser$Companion;-><init>()V

    return-void
.end method

.method private final getTAG()Ljava/lang/String;
    .locals 1

    .line 19
    invoke-static {}, Lcom/amazon/readingactions/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;"
        }
    .end annotation

    const-string v0, "def"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p1, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string/jumbo v1, "refTagPartial"

    invoke-static {v0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    if-eqz v7, :cond_8

    .line 36
    iget-object v1, p1, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->strings:Ljava/util/Map;

    const-string v2, "bseTitle"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->strings:Ljava/util/Map;

    const-string/jumbo v2, "title"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    move-object v8, v1

    if-eqz v8, :cond_8

    .line 37
    iget-object v1, p1, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->strings:Ljava/util/Map;

    const-string v2, "followHintSingle"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    .line 40
    iget-object v1, p1, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string v2, "followInfoDataKey"

    invoke-static {v1, v2}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 43
    invoke-direct {p0}, Lcom/amazon/readingactions/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser$Companion;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "No author follow data, will not load subscription state."

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0

    .line 48
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 49
    instance-of v2, v1, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionListData;

    if-nez v2, :cond_4

    .line 50
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 51
    invoke-direct {p0}, Lcom/amazon/readingactions/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser$Companion;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Author follow data was null or not of type AuthorSubscriptionListData, will not load follow state."

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0

    .line 57
    :cond_4
    check-cast v1, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionListData;

    iget-object v10, v1, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionListData;->authorSubs:Ljava/util/List;

    const-string v0, "followInfoListData.authorSubs"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 61
    iget-object v1, p1, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string v2, "BSEDataKey"

    invoke-static {v1, v2}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 62
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/amazon/ea/sidecar/def/data/AuthorBioListData;

    if-eqz v2, :cond_6

    .line 63
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    check-cast p2, Lcom/amazon/ea/sidecar/def/data/AuthorBioListData;

    iget-object v0, p2, Lcom/amazon/ea/sidecar/def/data/AuthorBioListData;->authorBioList:Ljava/util/List;

    const-string p2, "(dataMap[it] as AuthorBioListData).authorBioList"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.amazon.ea.sidecar.def.data.AuthorBioListData"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_6
    sget-object p2, Lcom/amazon/readingactions/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser;->Companion:Lcom/amazon/readingactions/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser$Companion;

    invoke-direct {p2}, Lcom/amazon/readingactions/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser$Companion;->getTAG()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Author Bio List Data does not exist or is not an instance of AuthorBioListData"

    invoke-static {p2, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    move-object v9, v0

    .line 69
    new-instance p2, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->id:Ljava/lang/String;

    iget-object v4, p1, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v5, p1, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayKey:Ljava/lang/String;

    iget v6, p1, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayLimit:I

    move-object v2, p2

    invoke-direct/range {v2 .. v11}, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object p2

    :cond_8
    return-object v0
.end method
