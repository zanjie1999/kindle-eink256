.class public Lcom/amazon/ea/sidecar/parsing/widgets/AuthorBioListWidgetDefParser;
.super Ljava/lang/Object;
.source "AuthorBioListWidgetDefParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.sidecar.parsing.widgets.AuthorBioListWidgetDefParser"

.field private static final TAG_OPTION_BIOS_DATA_KEY:Ljava/lang/String; = "dataKey"

.field private static final TAG_OPTION_FOLLOW_INFO_DATA_KEY:Ljava/lang/String; = "followInfoDataKey"

.field private static final TAG_OPTION_REF_TAG_PARTIAL:Ljava/lang/String; = "refTagPartial"

.field private static final TAG_STRING_FOLLOW_HINT_MULTIPLE:Ljava/lang/String; = "followHintMultiple"

.field private static final TAG_STRING_FOLLOW_HINT_SINGLE:Ljava/lang/String; = "followHintSingle"

.field private static final TAG_STRING_TITLE:Ljava/lang/String; = "title"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string/jumbo v1, "refTagPartial"

    invoke-static {v0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    if-nez v4, :cond_0

    return-object v0

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string v2, "dataKey"

    invoke-static {v1, v2}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 57
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 58
    instance-of v2, v1, Lcom/amazon/ea/sidecar/def/data/AuthorBioListData;

    if-nez v2, :cond_2

    .line 59
    sget-object p0, Lcom/amazon/ea/sidecar/parsing/widgets/AuthorBioListWidgetDefParser;->TAG:Ljava/lang/String;

    const-string p1, "Author Bio List Data is not an instance of AuthorBioListData; this widget will be invalidated; returning null"

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 63
    :cond_2
    check-cast v1, Lcom/amazon/ea/sidecar/def/data/AuthorBioListData;

    iget-object v9, v1, Lcom/amazon/ea/sidecar/def/data/AuthorBioListData;->authorBioList:Ljava/util/List;

    .line 66
    invoke-static {}, Lcom/amazon/ea/guava/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string v2, "followInfoDataKey"

    invoke-static {v1, v2}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 71
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 72
    instance-of v1, p1, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionListData;

    if-eqz v1, :cond_3

    .line 73
    check-cast p1, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionListData;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionListData;->authorSubs:Ljava/util/List;

    move-object v10, p1

    goto :goto_0

    .line 75
    :cond_3
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 76
    sget-object p1, Lcom/amazon/ea/sidecar/parsing/widgets/AuthorBioListWidgetDefParser;->TAG:Ljava/lang/String;

    const-string v1, "Author follow data was not of type AuthorSubscriptionListData, will not load subscription state."

    invoke-static {p1, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object v10, v0

    .line 82
    :goto_0
    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->strings:Ljava/util/Map;

    const-string/jumbo v0, "title"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 84
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->strings:Ljava/util/Map;

    const-string v0, "followHintSingle"

    goto :goto_1

    .line 85
    :cond_5
    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->strings:Ljava/util/Map;

    const-string v0, "followHintMultiple"

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v11, p1

    .line 87
    new-instance p1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v3, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->id:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayKey:Ljava/lang/String;

    iget v7, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayLimit:I

    move-object v2, p1

    invoke-direct/range {v2 .. v11}, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object p1
.end method
