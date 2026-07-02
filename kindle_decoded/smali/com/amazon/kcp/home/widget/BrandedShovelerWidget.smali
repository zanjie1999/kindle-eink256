.class public final Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;
.super Lcom/amazon/kindle/home/card/AbstractHomeCard;
.source "BrandedShovelerWidget.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBrandedShovelerWidget.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BrandedShovelerWidget.kt\ncom/amazon/kcp/home/widget/BrandedShovelerWidget\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,215:1\n133#2,3:216\n153#2,3:219\n1#3:222\n1147#4,2:223\n1221#4,4:225\n*E\n*S KotlinDebug\n*F\n+ 1 BrandedShovelerWidget.kt\ncom/amazon/kcp/home/widget/BrandedShovelerWidget\n*L\n75#1,3:216\n77#1,3:219\n60#1,2:223\n60#1,4:225\n*E\n"
.end annotation


# instance fields
.field private final adapter:Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;

.field private colorBarView:Landroid/view/View;

.field private final fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

.field private footerButton:Landroid/widget/Button;

.field private final priority:I

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private shovelerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

.field private subTitleTextView:Landroid/widget/TextView;

.field private final themeImageDownloaded:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private titleImageView:Landroid/widget/ImageView;

.field private final viewLayoutId:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;",
            "Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "themes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lcom/amazon/kindle/home/card/AbstractHomeCard;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->adapter:Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;

    .line 54
    sget p1, Lcom/amazon/kindle/librarymodule/R$layout;->branded_shoveler_card_view:I

    iput p1, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->viewLayoutId:I

    .line 56
    invoke-virtual {p3}, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->priority:I

    const/16 p1, 0xa

    .line 223
    invoke-static {p4, p1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result p1

    const/16 p2, 0x10

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    .line 224
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 225
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 226
    check-cast p3, Ljava/lang/String;

    .line 60
    new-instance p4, Lkotlin/Pair;

    const/4 v0, 0x0

    invoke-direct {p4, p3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->themeImageDownloaded:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getTitleImageView$p(Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;)Landroid/widget/ImageView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->titleImageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "titleImageView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$reportAction(Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->reportAction(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V

    return-void
.end method

.method private final allImagesDownloaded()Z
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->themeImageDownloaded:Ljava/util/Map;

    .line 216
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    .line 217
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    :goto_1
    return v2
.end method

.method private final anyImageDownloadsFailed()Z
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->themeImageDownloaded:Ljava/util/Map;

    .line 219
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 77
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method private final getImage(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 200
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget$getImage$1;

    invoke-direct {v1, p1, p2}, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget$getImage$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private final reportAction(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 9

    .line 181
    iget-object p3, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p3

    if-eqz p3, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "refTag"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 183
    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "widgetPosition"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 184
    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/HomeAction;->getEvent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "action"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 185
    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/HomeAction;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "actionType"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "actionSource"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    .line 181
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "HomeSKWidget"

    const-string v2, "Click"

    invoke-interface {p3, v1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 189
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p3, p1, Ljava/lang/String;

    if-nez p3, :cond_1

    const/4 p1, 0x0

    :cond_1
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/4 v8, 0x0

    move-object v2, p2

    invoke-static/range {v0 .. v8}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordAction$default(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/model/HomeAction;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/amazon/kindle/home/action/HomeActionManager;)V
    .locals 8

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "am"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    instance-of v0, p1, Lcom/amazon/kcp/home/ui/BrandedShovelerCardView;

    const-string v1, "com.amazon.kcp.home.widget.BrandedShovelerWidget"

    if-nez v0, :cond_0

    const-string p1, "Non-BrandedShovelerView received, ignoring and returning w/o binding a model to view"

    .line 83
    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 88
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/home/ui/BrandedShovelerCardView;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/ui/BrandedShovelerCardView;->getShoveler()Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->shovelerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    .line 89
    invoke-virtual {v0}, Lcom/amazon/kcp/home/ui/BrandedShovelerCardView;->getColorBarView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->colorBarView:Landroid/view/View;

    .line 90
    invoke-virtual {v0}, Lcom/amazon/kcp/home/ui/BrandedShovelerCardView;->getTitleImageView()Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->titleImageView:Landroid/widget/ImageView;

    .line 91
    invoke-virtual {v0}, Lcom/amazon/kcp/home/ui/BrandedShovelerCardView;->getSubTitleTextView()Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->subTitleTextView:Landroid/widget/TextView;

    .line 92
    invoke-virtual {v0}, Lcom/amazon/kcp/home/ui/BrandedShovelerCardView;->getFooterButton()Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->footerButton:Landroid/widget/Button;

    .line 94
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->shovelerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    const-string/jumbo v3, "shovelerView"

    const/4 v4, 0x0

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    iget-object v5, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->adapter:Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x1

    xor-int/2addr v2, v5

    if-eqz v2, :cond_2

    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->shovelerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->adapter:Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 98
    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->shovelerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 99
    :cond_3
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->shovelerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    if-eqz v2, :cond_1f

    invoke-virtual {v0}, Lcom/amazon/kcp/home/ui/HomeCardView;->getLastVisibleShovelerItemPosition$LibraryModule_release()I

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->adapter:Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->setAm(Lcom/amazon/kindle/home/action/HomeActionManager;)V

    .line 103
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->adapter:Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->colorBarView:Landroid/view/View;

    const-string v3, "colorBarView"

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/amazon/kindle/home/model/ColorZone;

    if-nez v2, :cond_4

    move-object v0, v4

    :cond_4
    check-cast v0, Lcom/amazon/kindle/home/model/ColorZone;

    const/16 v2, 0x8

    const/4 v6, 0x0

    if-eqz v0, :cond_9

    .line 105
    :try_start_0
    iget-object v7, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->colorBarView:Landroid/view/View;

    if-eqz v7, :cond_6

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/ColorZone;->getPrimaryColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->colorBarView:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    throw v4

    .line 105
    :cond_6
    :try_start_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    throw v4

    :catch_0
    nop

    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->colorBarView:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->colorBarView:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v3, "ColorZoneError"

    invoke-interface {v0, v1, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 109
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 108
    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 114
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->adapter:Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->titleImageView:Landroid/widget/ImageView;

    const-string/jumbo v3, "titleImageView"

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/amazon/kindle/home/model/ThemedImageZone;

    if-nez v1, :cond_a

    move-object v0, v4

    :cond_a
    check-cast v0, Lcom/amazon/kindle/home/model/ThemedImageZone;

    if-eqz v0, :cond_10

    .line 115
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v1

    if-eqz v1, :cond_b

    sget-object v7, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v1, v7}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v1

    goto :goto_2

    :cond_b
    move-object v1, v4

    :goto_2
    if-nez v1, :cond_c

    goto :goto_3

    :cond_c
    sget-object v7, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v7, v1

    if-eq v1, v5, :cond_d

    .line 117
    :goto_3
    sget-object v1, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getLightImageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/amazon/kcp/library/HomeUtils;->themedImageCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 116
    :cond_d
    sget-object v1, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getDarkImageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/amazon/kcp/library/HomeUtils;->themedImageCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    :goto_4
    new-instance v7, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget$bindView$$inlined$let$lambda$1;

    invoke-direct {v7, v0, p0, p1}, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget$bindView$$inlined$let$lambda$1;-><init>(Lcom/amazon/kindle/home/model/ThemedImageZone;Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;Landroid/view/View;)V

    invoke-direct {p0, v1, v7}, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->getImage(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 131
    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getImageAltText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v5

    if-eqz v0, :cond_e

    goto :goto_5

    :cond_e
    move-object p1, v4

    :goto_5
    if-eqz p1, :cond_10

    .line 132
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->titleImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 136
    :cond_10
    :goto_6
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->subTitleTextView:Landroid/widget/TextView;

    const-string/jumbo v0, "subTitleTextView"

    if-eqz p1, :cond_1c

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->adapter:Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;

    invoke-virtual {v1}, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v1

    iget-object v7, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->subTitleTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_1b

    invoke-virtual {v7}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v7, v1, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v7, :cond_11

    move-object v1, v4

    :cond_11
    check-cast v1, Lcom/amazon/kindle/home/model/TextZone;

    if-eqz v1, :cond_13

    .line 137
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->subTitleTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_12

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    goto :goto_7

    :cond_12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 139
    :cond_13
    :goto_7
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->adapter:Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->footerButton:Landroid/widget/Button;

    const-string v1, "footerButton"

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/amazon/kindle/home/model/ButtonZone;

    if-nez v0, :cond_14

    move-object p1, v4

    :cond_14
    check-cast p1, Lcom/amazon/kindle/home/model/ButtonZone;

    if-eqz p1, :cond_17

    .line 142
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->footerButton:Landroid/widget/Button;

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/ButtonZone;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/ButtonZone;->getAltText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 144
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->footerButton:Landroid/widget/Button;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_15
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 142
    :cond_16
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 148
    :cond_17
    :goto_8
    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget$bindView$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget$bindView$5;-><init>(Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    iget-object v7, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->titleImageView:Landroid/widget/ImageView;

    if-eqz v7, :cond_19

    aput-object v7, v2, v6

    iget-object v3, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->footerButton:Landroid/widget/Button;

    if-eqz v3, :cond_18

    aput-object v3, v2, v5

    invoke-interface {p2, p1, v4, v0, v2}, Lcom/amazon/kindle/home/action/HomeActionManager;->registerActions(Lcom/amazon/kindle/home/model/CardData;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;[Landroid/view/View;)V

    return-void

    :cond_18
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_19
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 141
    :cond_1a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 136
    :cond_1b
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_1c
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 114
    :cond_1d
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 103
    :cond_1e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 99
    :cond_1f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 98
    :cond_20
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 94
    :cond_21
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method public final getCard()Lcom/amazon/kindle/home/model/CardData;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->adapter:Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->priority:I

    return v0
.end method

.method public getState()Lcom/amazon/kindle/home/card/HomeCardState;
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->allImagesDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->READY:Lcom/amazon/kindle/home/card/HomeCardState;

    goto :goto_0

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->anyImageDownloadsFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->FAILED:Lcom/amazon/kindle/home/card/HomeCardState;

    goto :goto_0

    .line 71
    :cond_1
    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->LOADING:Lcom/amazon/kindle/home/card/HomeCardState;

    :goto_0
    return-object v0
.end method

.method public final getThemeImageDownloaded$LibraryModule_release()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->themeImageDownloaded:Ljava/util/Map;

    return-object v0
.end method

.method public getViewLayoutId()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->viewLayoutId:I

    return v0
.end method

.method public onConfigurationChange()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->shovelerView:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 159
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->adapter:Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "shovelerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public reportImpressionData(Z)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    .line 165
    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "refTag"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 166
    invoke-virtual {p0}, Lcom/amazon/kindle/home/card/AbstractHomeCard;->getDisplayPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "widgetPosition"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 164
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v1, :cond_1

    const-string v2, "HomeSKWidget"

    if-eqz p1, :cond_0

    .line 171
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 173
    :cond_0
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;Ljava/util/Map;)V

    .line 177
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordImpression(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;)V

    return-void
.end method

.method public setDisplayPosition(I)V
    .locals 1

    .line 152
    invoke-super {p0, p1}, Lcom/amazon/kindle/home/card/AbstractHomeCard;->setDisplayPosition(I)V

    .line 154
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->adapter:Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->setWidgetPosition(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/BrandedShovelerWidget;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
