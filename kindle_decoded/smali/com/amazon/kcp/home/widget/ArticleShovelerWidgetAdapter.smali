.class public final Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ArticleShovelerWidgetAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/amazon/kcp/home/widget/ArticleViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArticleShovelerWidgetAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArticleShovelerWidgetAdapter.kt\ncom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,117:1\n1#2:118\n181#3,2:119\n*E\n*S KotlinDebug\n*F\n+ 1 ArticleShovelerWidgetAdapter.kt\ncom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter\n*L\n41#1,2:119\n*E\n"
.end annotation


# instance fields
.field private am:Lcom/amazon/kindle/home/action/HomeActionManager;

.field private final card:Lcom/amazon/kindle/home/model/CardData;

.field private final fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

.field private final itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/home/models/ArticleDisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private widgetPosition:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;)V
    .locals 2

    const-string v0, "fm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "card"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;->card:Lcom/amazon/kindle/home/model/CardData;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;->itemList:Ljava/util/List;

    .line 41
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object p1

    .line 119
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/home/model/HomeZone;

    .line 42
    instance-of v0, p2, Lcom/amazon/kindle/home/model/ArticleZone;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;->itemList:Ljava/util/List;

    new-instance v1, Lcom/amazon/kcp/home/models/ArticleDisplayItem;

    check-cast p2, Lcom/amazon/kindle/home/model/ArticleZone;

    invoke-direct {v1, p3, p2}, Lcom/amazon/kcp/home/models/ArticleDisplayItem;-><init>(Ljava/lang/String;Lcom/amazon/kindle/home/model/ArticleZone;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final synthetic access$reportArticleActionMetrics(Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;->reportArticleActionMetrics(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V

    return-void
.end method

.method private final createArticleLayout(Landroid/view/ViewGroup;)Lcom/amazon/kcp/home/ui/ArticleLayout;
    .locals 3

    .line 55
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 57
    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->article_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/amazon/kcp/home/ui/ArticleLayout;

    .line 58
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryViewType;->CAROUSEL:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/home/ui/ArticleLayout;->setViewType(Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    return-object p1

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type com.amazon.kcp.home.ui.ArticleLayout"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final reportArticleActionMetrics(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 9

    .line 80
    instance-of p3, p1, Lcom/amazon/kcp/home/ui/ArticleLayout;

    const-string v0, "com.amazon.kcp.home.widget.ArticleShovelerWidgetAdapter"

    if-nez p3, :cond_0

    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to report metrics since view is not ArticleLayout: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 88
    :cond_0
    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/HomeAction;->getArgs()Ljava/util/Map;

    move-result-object v1

    const-string v2, "articleMetadata"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "activeArticleIndex"

    .line 89
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "articleMetadataList"

    .line 90
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    .line 91
    invoke-virtual {p3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    check-cast p3, Lorg/json/JSONObject;

    const-string v1, "asin"

    .line 92
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "articleData.getString(\"asin\")"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_1
    new-instance p3, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-direct {p3, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :catch_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse articleMetadata for action: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    move-object p3, p1

    check-cast p3, Lcom/amazon/kcp/home/ui/ArticleLayout;

    invoke-virtual {p3}, Lcom/amazon/kcp/home/ui/ArticleLayout;->getArticleZone()Lcom/amazon/kindle/home/model/ArticleZone;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/kindle/home/model/ArticleZone;->getTitle()Ljava/lang/String;

    move-result-object p3

    :goto_0
    move-object v4, p3

    .line 98
    check-cast p1, Lcom/amazon/kcp/home/ui/ArticleLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ArticleLayout;->getArticleZone()Lcom/amazon/kindle/home/model/ArticleZone;

    move-result-object p3

    .line 99
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/amazon/kcp/home/models/ArticleDisplayItem;

    invoke-virtual {v3}, Lcom/amazon/kcp/home/models/ArticleDisplayItem;->getZone()Lcom/amazon/kindle/home/model/ArticleZone;

    move-result-object v3

    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    check-cast v1, Lcom/amazon/kcp/home/models/ArticleDisplayItem;

    .line 100
    iget-object p3, p0, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;->itemList:Ljava/util/List;

    invoke-static {p3, v1}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result v5

    const/4 p3, 0x7

    new-array p3, p3, [Lkotlin/Pair;

    const/4 v0, 0x0

    .line 102
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "refTag"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, p3, v0

    const/4 v0, 0x1

    const-string v1, "article"

    .line 103
    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, p3, v0

    const/4 v0, 0x2

    .line 104
    iget v1, p0, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;->widgetPosition:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "widgetPosition"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, p3, v0

    const/4 v0, 0x3

    .line 105
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "articlePosition"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, p3, v0

    const/4 v0, 0x4

    .line 106
    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/HomeAction;->getEvent()Ljava/lang/String;

    move-result-object v1

    const-string v3, "action"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, p3, v0

    const/4 v0, 0x5

    .line 107
    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/HomeAction;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "actionType"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, p3, v0

    const/4 v0, 0x6

    const-string v1, "actionSource"

    const-string v3, "ShovelerItem"

    .line 108
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, p3, v0

    .line 101
    invoke-static {p3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p3

    .line 111
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "HomeSKWidget"

    const-string v3, "Click"

    invoke-interface {v0, v1, v3, p3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 113
    :cond_4
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p3, p1, Ljava/lang/String;

    if-nez p3, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, p1

    :goto_2
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;->card:Lcom/amazon/kindle/home/model/CardData;

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v2, p2

    invoke-static/range {v0 .. v8}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordAction$default(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/model/HomeAction;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getCard()Lcom/amazon/kindle/home/model/CardData;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;->card:Lcom/amazon/kindle/home/model/CardData;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 29
    check-cast p1, Lcom/amazon/kcp/home/widget/ArticleViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;->onBindViewHolder(Lcom/amazon/kcp/home/widget/ArticleViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/amazon/kcp/home/widget/ArticleViewHolder;I)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/ArticleViewHolder;->getArticleLayout()Lcom/amazon/kcp/home/ui/ArticleLayout;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;->itemList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/home/models/ArticleDisplayItem;

    .line 65
    invoke-virtual {p2}, Lcom/amazon/kcp/home/models/ArticleDisplayItem;->getZone()Lcom/amazon/kindle/home/model/ArticleZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/ui/ArticleLayout;->setArticleZone(Lcom/amazon/kindle/home/model/ArticleZone;)V

    .line 66
    invoke-virtual {p2}, Lcom/amazon/kcp/home/models/ArticleDisplayItem;->getZoneName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {v0}, Lcom/amazon/kcp/home/ui/ArticleLayout;->bindContentToLayout()V

    .line 70
    iget-object p2, p0, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p2

    if-eqz p2, :cond_0

    sget-object v2, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {p2, v2}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    const/4 v2, 0x1

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v3, p2

    if-eq p2, v2, :cond_2

    .line 72
    :goto_1
    invoke-virtual {v0}, Lcom/amazon/kcp/home/ui/ArticleLayout;->setLightMode()V

    goto :goto_2

    .line 71
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/kcp/home/ui/ArticleLayout;->setDarkMode()V

    .line 76
    :goto_2
    iget-object p2, p0, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;->am:Lcom/amazon/kindle/home/action/HomeActionManager;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;->card:Lcom/amazon/kindle/home/model/CardData;

    new-instance v3, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter$onBindViewHolder$2;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter$onBindViewHolder$2;-><init>(Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;)V

    new-array v2, v2, [Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/ArticleViewHolder;->getArticleLayout()Lcom/amazon/kcp/home/ui/ArticleLayout;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-interface {p2, v0, v1, v3, v2}, Lcom/amazon/kindle/home/action/HomeActionManager;->registerActions(Lcom/amazon/kindle/home/model/CardData;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;[Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kcp/home/widget/ArticleViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kcp/home/widget/ArticleViewHolder;
    .locals 0

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance p2, Lcom/amazon/kcp/home/widget/ArticleViewHolder;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;->createArticleLayout(Landroid/view/ViewGroup;)Lcom/amazon/kcp/home/ui/ArticleLayout;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/kcp/home/widget/ArticleViewHolder;-><init>(Lcom/amazon/kcp/home/ui/ArticleLayout;)V

    return-object p2
.end method

.method public final setAm(Lcom/amazon/kindle/home/action/HomeActionManager;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;->am:Lcom/amazon/kindle/home/action/HomeActionManager;

    return-void
.end method

.method public final setWidgetPosition(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/amazon/kcp/home/widget/ArticleShovelerWidgetAdapter;->widgetPosition:I

    return-void
.end method
