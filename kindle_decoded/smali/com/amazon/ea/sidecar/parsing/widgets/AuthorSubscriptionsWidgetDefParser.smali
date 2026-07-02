.class public Lcom/amazon/ea/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser;
.super Ljava/lang/Object;
.source "AuthorSubscriptionsWidgetDefParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.sidecar.parsing.widgets.AuthorSubscriptionsWidgetDefParser"

.field private static final TAG_OPTION_FOLLOW_INFO_DATA_KEY:Ljava/lang/String; = "followInfoDataKey"

.field private static final TAG_OPTION_REF_TAG_PARTIAL:Ljava/lang/String; = "refTagPartial"

.field private static final TAG_STRING_FOLLOW_HINT_SINGLE:Ljava/lang/String; = "followHintSingle"

.field private static final TAG_STRING_TITLE:Ljava/lang/String; = "title"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string/jumbo v1, "refTagPartial"

    invoke-static {v0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    if-nez v4, :cond_0

    return-object v0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->strings:Ljava/util/Map;

    const-string/jumbo v2, "title"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_1

    return-object v0

    .line 43
    :cond_1
    invoke-static {}, Lcom/amazon/ea/guava/Lists;->newArrayList()Ljava/util/ArrayList;

    .line 46
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string v2, "followInfoDataKey"

    invoke-static {v1, v2}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 48
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 49
    sget-object p0, Lcom/amazon/ea/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser;->TAG:Ljava/lang/String;

    const-string p1, "No author follow data, will not load subscription state."

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0

    .line 54
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 55
    instance-of v1, p1, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionListData;

    if-nez v1, :cond_5

    .line 56
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 57
    sget-object p0, Lcom/amazon/ea/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser;->TAG:Ljava/lang/String;

    const-string p1, "Author follow data was null or not of type AuthorSubscriptionListData, will not load follow state."

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v0

    .line 62
    :cond_5
    check-cast p1, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionListData;

    iget-object v9, p1, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionListData;->authorSubs:Ljava/util/List;

    .line 64
    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->strings:Ljava/util/Map;

    const-string v0, "followHintSingle"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Ljava/lang/String;

    .line 66
    new-instance p1, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object v3, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->id:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayKey:Ljava/lang/String;

    iget v7, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayLimit:I

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object p1
.end method
