.class public final Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ShovelerWidgetAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/amazon/kcp/home/widget/ViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShovelerWidgetAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShovelerWidgetAdapter.kt\ncom/amazon/kcp/home/widget/ShovelerWidgetAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,187:1\n1#2:188\n181#3,2:189\n*E\n*S KotlinDebug\n*F\n+ 1 ShovelerWidgetAdapter.kt\ncom/amazon/kcp/home/widget/ShovelerWidgetAdapter\n*L\n69#1,2:189\n*E\n"
.end annotation


# instance fields
.field private am:Lcom/amazon/kindle/home/action/HomeActionManager;

.field private final card:Lcom/amazon/kindle/home/model/CardData;

.field private final coverCacheManager:Lcom/amazon/kcp/cover/ICoverCacheManager;

.field private final coverUrlDownloadManager:Lcom/amazon/kcp/home/util/CoverUrlDownloadManager;

.field private final fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

.field private final itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/home/models/ShovelerDisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private widgetPosition:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kcp/cover/ICoverCacheManager;Lcom/amazon/kindle/home/model/CardData;)V
    .locals 7

    const-string v0, "fm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverCacheManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "card"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 77
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kcp/cover/ICoverCacheManager;Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kcp/home/util/CoverUrlDownloadManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kcp/cover/ICoverCacheManager;Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kcp/home/util/CoverUrlDownloadManager;)V
    .locals 1

    const-string v0, "fm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverCacheManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "card"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->coverCacheManager:Lcom/amazon/kcp/cover/ICoverCacheManager;

    iput-object p4, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->card:Lcom/amazon/kindle/home/model/CardData;

    iput-object p5, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->coverUrlDownloadManager:Lcom/amazon/kcp/home/util/CoverUrlDownloadManager;

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->itemList:Ljava/util/List;

    .line 69
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object p1

    .line 189
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

    .line 70
    instance-of p4, p2, Lcom/amazon/kindle/home/model/ImageZone;

    if-eqz p4, :cond_0

    .line 71
    iget-object p4, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->itemList:Ljava/util/List;

    new-instance p5, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;

    check-cast p2, Lcom/amazon/kindle/home/model/ImageZone;

    invoke-direct {p5, p3, p2}, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;-><init>(Ljava/lang/String;Lcom/amazon/kindle/home/model/ImageZone;)V

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final synthetic access$reportCoverActionMetrics(Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->reportCoverActionMetrics(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V

    return-void
.end method

.method private final createBadgeableCover(Landroid/view/ViewGroup;)Lcom/amazon/kcp/cover/BadgeableCover;
    .locals 4

    .line 102
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 104
    sget v2, Lcom/amazon/kindle/librarymodule/R$layout;->shoveler_book_cover:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/amazon/kcp/cover/BadgeableCover;

    .line 105
    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryViewType;->CAROUSEL:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/cover/BadgeableCover;->setViewType(Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 106
    sget-object v1, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/cover/BadgeableCover;->setSizeType(Lcom/amazon/kindle/cover/ImageSizes$Type;)V

    const-string v1, "context"

    .line 107
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$dimen;->shoveler_default_book_cover_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 108
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/librarymodule/R$dimen;->shoveler_default_book_cover_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 109
    invoke-virtual {p1, v1, v0}, Lcom/amazon/kcp/cover/BadgeableCover;->setDefaultSize(II)V

    return-object p1

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type com.amazon.kcp.cover.BadgeableCover"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final reportCoverActionMetrics(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 10

    .line 152
    instance-of p3, p1, Lcom/amazon/kcp/cover/BadgeableCover;

    if-nez p3, :cond_0

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to report metrics since view is not BadgeableCover: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.amazon.kcp.home.widget.ShovelerWidgetAdapter"

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 157
    :cond_0
    check-cast p1, Lcom/amazon/kcp/cover/BadgeableCover;

    invoke-virtual {p1}, Lcom/amazon/kcp/cover/BadgeableCover;->getLibraryItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object p3

    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->itemList:Ljava/util/List;

    invoke-static {v0, p3}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result v6

    .line 159
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    const/4 p1, 0x7

    new-array p1, p1, [Lkotlin/Pair;

    const/4 v0, 0x0

    .line 161
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "refTag"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "item"

    .line 162
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAsin()Ljava/lang/String;

    move-result-object v1

    const-string v2, "asin"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x2

    .line 163
    iget v1, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->widgetPosition:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "widgetPosition"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x3

    .line 164
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "asinPosition"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x4

    .line 165
    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/HomeAction;->getEvent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "action"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x5

    .line 166
    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/HomeAction;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "actionType"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x6

    const-string v1, "actionSource"

    const-string v2, "ShovelerItem"

    .line 167
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, p1, v0

    .line 160
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 169
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "HomeSKWidget"

    const-string v2, "Click"

    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-interface {p3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAsin()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v3, p2

    invoke-static/range {v1 .. v9}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordAction$default(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/model/HomeAction;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final reportItemAltTextMissing(Lcom/amazon/kcp/home/models/ShovelerDisplayItem;)V
    .locals 6

    .line 178
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "ImageAltTextMissing"

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "com.amazon.kcp.home.widget.ShovelerWidgetAdapter"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    .line 181
    iget-object v4, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v4}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "refTag"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 182
    invoke-virtual {p1}, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;->getAsin()Ljava/lang/String;

    move-result-object p1

    const-string v4, "asin"

    invoke-static {v4, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v2, v3

    .line 180
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string v2, "HomeSKWidget"

    invoke-interface {v0, v2, v1, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getCard()Lcom/amazon/kindle/home/model/CardData;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->card:Lcom/amazon/kindle/home/model/CardData;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 56
    check-cast p1, Lcom/amazon/kcp/home/widget/ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->onBindViewHolder(Lcom/amazon/kcp/home/widget/ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/amazon/kcp/home/widget/ViewHolder;I)V
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/ViewHolder;->getCover()Lcom/amazon/kcp/cover/BadgeableCover;

    move-result-object p1

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;

    .line 124
    invoke-virtual {p1, p2}, Lcom/amazon/kcp/cover/BadgeableCover;->setLibraryItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    .line 126
    invoke-virtual {p2}, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;->getZone()Lcom/amazon/kindle/home/model/ImageZone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/ImageZone;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->coverUrlDownloadManager:Lcom/amazon/kcp/home/util/CoverUrlDownloadManager;

    if-eqz v1, :cond_0

    .line 128
    sget-object v3, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-virtual {v3, v0}, Lcom/amazon/kcp/library/HomeUtils;->imagePathForShovelerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-virtual {p1}, Lcom/amazon/kcp/cover/BadgeableCover;->getLibraryItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v4

    const-string v5, "libraryItem"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    const-string v5, "libraryItem.bookID"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v4

    const-string v5, "libraryItem.bookID.serializedForm"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    .line 128
    invoke-interface {v1, v0, v3, v4, v5}, Lcom/amazon/kcp/home/util/CoverUrlDownloadManager;->getCover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->coverCacheManager:Lcom/amazon/kcp/cover/ICoverCacheManager;

    sget-object v1, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {v0, p2, v1}, Lcom/amazon/kcp/cover/ICoverCacheManager;->getCover(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/cover/ImageSizes$Type;)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object v0

    .line 127
    :goto_0
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/cover/BadgeableCover;->setUpdatableCover(Lcom/amazon/kcp/cover/UpdatableCover;)V

    .line 134
    invoke-virtual {p2}, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;->getZoneName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p2}, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;->getZone()Lcom/amazon/kindle/home/model/ImageZone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/ImageZone;->getImageAltText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 138
    :cond_2
    invoke-direct {p0, p2}, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->reportItemAltTextMissing(Lcom/amazon/kcp/home/models/ShovelerDisplayItem;)V

    .line 140
    :goto_2
    iget-object p2, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->am:Lcom/amazon/kindle/home/action/HomeActionManager;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->card:Lcom/amazon/kindle/home/model/CardData;

    new-instance v1, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter$onBindViewHolder$1$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter$onBindViewHolder$1$3;-><init>(Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;)V

    new-array v2, v2, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    invoke-interface {p2, v0, v3, v1, v2}, Lcom/amazon/kindle/home/action/HomeActionManager;->registerActions(Lcom/amazon/kindle/home/model/CardData;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;[Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kcp/home/widget/ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kcp/home/widget/ViewHolder;
    .locals 0

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance p2, Lcom/amazon/kcp/home/widget/ViewHolder;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->createBadgeableCover(Landroid/view/ViewGroup;)Lcom/amazon/kcp/cover/BadgeableCover;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/kcp/home/widget/ViewHolder;-><init>(Lcom/amazon/kcp/cover/BadgeableCover;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 56
    check-cast p1, Lcom/amazon/kcp/home/widget/ViewHolder;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->onViewRecycled(Lcom/amazon/kcp/home/widget/ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/amazon/kcp/home/widget/ViewHolder;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/ViewHolder;->getCover()Lcom/amazon/kcp/cover/BadgeableCover;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/cover/BadgeableCover;->getUpdatableCover()Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->coverCacheManager:Lcom/amazon/kcp/cover/ICoverCacheManager;

    const-string v1, "cover"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/cover/UpdatableCover;->getFilePath()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    const v2, 0x7ffffffe

    invoke-interface {v0, p1, v1, v2}, Lcom/amazon/kcp/cover/ICoverCacheManager;->updateCoverPosition(Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;I)V

    :cond_0
    return-void
.end method

.method public final setAm(Lcom/amazon/kindle/home/action/HomeActionManager;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->am:Lcom/amazon/kindle/home/action/HomeActionManager;

    return-void
.end method

.method public final setWidgetPosition(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;->widgetPosition:I

    return-void
.end method
