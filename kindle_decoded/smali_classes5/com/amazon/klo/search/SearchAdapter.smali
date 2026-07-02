.class public Lcom/amazon/klo/search/SearchAdapter;
.super Ljava/lang/Object;
.source "SearchAdapter.java"

# interfaces
.implements Lcom/amazon/kindle/krx/search/ISearchAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/klo/search/SearchAdapter$SidecarInitializerRunnable;
    }
.end annotation


# static fields
.field private static final MAX_RESULTS_BEFORE_EXPANDER:I = 0x2

.field private static final METRICS_METADATA_KEY_MATCH_TYPE:Ljava/lang/String; = "MatchType"

.field private static final METRICS_METADATA_VALUE_MATCH_TYPE_BULLS_EYE:Ljava/lang/String; = "BULLS_EYE"

.field private static final METRICS_METADATA_VALUE_MATCH_TYPE_FULL:Ljava/lang/String; = "FULL"

.field private static final METRICS_METADATA_VALUE_NO_MATCHES:Ljava/lang/String; = "NONE"

.field private static final SEARCH_ADAPTER_KEY:Ljava/lang/String; = "KLO"


# instance fields
.field private final book:Lcom/amazon/kindle/krx/content/IBook;

.field private final sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/amazon/klo/sidecar/SidecarHandler;

    invoke-direct {v0}, Lcom/amazon/klo/sidecar/SidecarHandler;-><init>()V

    iput-object v0, p0, Lcom/amazon/klo/search/SearchAdapter;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    .line 73
    iput-object p1, p0, Lcom/amazon/klo/search/SearchAdapter;->book:Lcom/amazon/kindle/krx/content/IBook;

    return-void
.end method

.method private getBodyForTermListItem(Lcom/amazon/klo/list/TermListItem;)Ljava/lang/String;
    .locals 4

    .line 218
    invoke-virtual {p1}, Lcom/amazon/klo/list/TermListItem;->getDetailDefinition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/amazon/klo/search/SearchAdapter;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    invoke-virtual {v1, p1}, Lcom/amazon/klo/sidecar/SidecarHandler;->getDetailsOf(Lcom/amazon/klo/list/TermListItem;)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo v1, "wikisWithImagesArray"

    .line 222
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    const-string/jumbo v1, "wikisArray"

    .line 227
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 233
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 235
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "description"

    .line 238
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public allowExtraResultToReplaceExpander()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public areSearchResultsDynamic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createSearchTask(Ljava/lang/String;)Lcom/amazon/kindle/krx/search/ISearchTask;
    .locals 3

    .line 94
    new-instance v0, Lcom/amazon/klo/search/SearchTask;

    iget-object v1, p0, Lcom/amazon/klo/search/SearchAdapter;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    iget-object v2, p0, Lcom/amazon/klo/search/SearchAdapter;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/klo/search/SearchTask;-><init>(Ljava/lang/String;Lcom/amazon/klo/sidecar/SidecarHandler;Lcom/amazon/kindle/krx/content/IBook;)V

    return-object v0
.end method

.method public getAdapterSpecificMetricsMetadata(Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/search/ISearchResult;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 184
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 186
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/klo/search/SearchResult;

    .line 187
    invoke-virtual {p1}, Lcom/amazon/klo/search/SearchResult;->getMatchType()Lcom/amazon/klo/search/SearchResult$MatchType;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 193
    sget-object v0, Lcom/amazon/klo/search/SearchAdapter$1;->$SwitchMap$com$amazon$klo$search$SearchResult$MatchType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "FULL"

    goto :goto_2

    :cond_2
    const-string p1, "BULLS_EYE"

    goto :goto_2

    :cond_3
    :goto_1
    const-string p1, "NONE"

    .line 204
    :goto_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "MatchType"

    .line 205
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "KLO"

    return-object v0
.end method

.method public getMaximumSearchResultsBeforeExpander()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 80
    sget v0, Lcom/amazon/klo/R$string;->klo_search_provider_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeForResult(Lcom/amazon/kindle/krx/search/ISearchResult;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onResultClicked(Lcom/amazon/kindle/krx/search/ISearchResult;)Z
    .locals 4

    .line 100
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    check-cast p1, Lcom/amazon/klo/search/SearchResult;

    invoke-virtual {p1}, Lcom/amazon/klo/search/SearchResult;->getTerm()Lcom/amazon/klo/list/TermListItem;

    move-result-object p1

    .line 102
    iget-object v1, p0, Lcom/amazon/klo/search/SearchAdapter;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    invoke-virtual {v1, p1}, Lcom/amazon/klo/sidecar/SidecarHandler;->getDetailsOf(Lcom/amazon/klo/list/TermListItem;)Lorg/json/JSONObject;

    move-result-object v1

    .line 104
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    .line 105
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    invoke-virtual {p1}, Lcom/amazon/klo/list/TermListItem;->getJson()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "termJson"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "detailObject"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "fromSearch"

    const/4 v1, 0x1

    .line 108
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method

.method public prepareForSearch()V
    .locals 4

    .line 116
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazon/klo/search/SearchAdapter$SidecarInitializerRunnable;

    iget-object v2, p0, Lcom/amazon/klo/search/SearchAdapter;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    iget-object v3, p0, Lcom/amazon/klo/search/SearchAdapter;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-direct {v1, v2, v3}, Lcom/amazon/klo/search/SearchAdapter$SidecarInitializerRunnable;-><init>(Lcom/amazon/klo/sidecar/SidecarHandler;Lcom/amazon/kindle/krx/content/IBook;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public viewForSearchResult(Lcom/amazon/kindle/krx/search/ISearchResult;Landroid/view/View;Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/view/View;
    .locals 1

    .line 123
    check-cast p2, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;

    .line 124
    check-cast p1, Lcom/amazon/klo/search/SearchResult;

    .line 125
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p4

    invoke-interface {p4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getSearchManager()Lcom/amazon/kindle/krx/search/IReaderSearchManager;

    move-result-object p4

    .line 126
    invoke-virtual {p1}, Lcom/amazon/klo/search/SearchResult;->getTerm()Lcom/amazon/klo/list/TermListItem;

    move-result-object v0

    .line 128
    invoke-interface {p4, p3, p2}, Lcom/amazon/kindle/krx/search/IReaderSearchManager;->createSimpleResultViewBuilder(Landroid/content/Context;Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;

    move-result-object p2

    .line 129
    invoke-virtual {p1}, Lcom/amazon/klo/search/SearchResult;->getTitle()Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;->setTitle(Lcom/amazon/kindle/krx/search/SearchResultSnippet;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;

    .line 130
    invoke-virtual {p1}, Lcom/amazon/klo/search/SearchResult;->getStyle()Lcom/amazon/klo/search/SearchResult$Style;

    move-result-object p1

    sget-object p3, Lcom/amazon/klo/search/SearchResult$Style;->EXPANDED:Lcom/amazon/klo/search/SearchResult$Style;

    if-ne p1, p3, :cond_0

    .line 132
    invoke-direct {p0, v0}, Lcom/amazon/klo/search/SearchAdapter;->getBodyForTermListItem(Lcom/amazon/klo/list/TermListItem;)Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    .line 135
    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;->setBody(Ljava/lang/CharSequence;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;

    .line 139
    :cond_0
    invoke-interface {p2}, Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;->build()Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;

    move-result-object p1

    return-object p1
.end method
