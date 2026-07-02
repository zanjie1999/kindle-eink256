.class public final Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BookEntityShovelerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/amazon/kcp/home/widget/BookViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBookEntityShovelerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BookEntityShovelerAdapter.kt\ncom/amazon/kcp/home/widget/BookEntityShovelerAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,261:1\n1819#2,2:262\n1819#2,2:265\n1#3:264\n*E\n*S KotlinDebug\n*F\n+ 1 BookEntityShovelerAdapter.kt\ncom/amazon/kcp/home/widget/BookEntityShovelerAdapter\n*L\n78#1,2:262\n65#1,2:265\n*E\n"
.end annotation


# instance fields
.field private final card:Lcom/amazon/kindle/home/model/CardData;

.field private final fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

.field private final imageCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final imageProvider:Lcom/amazon/kcp/home/util/CardImageProvider;

.field private final itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/model/BookEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final threadPoolManager:Lcom/amazon/foundation/internal/IThreadPoolManager;

.field private widgetPosition:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kcp/home/util/CardImageProvider;Lcom/amazon/kindle/home/model/CardData;)V
    .locals 1

    const-string v0, "fm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "card"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->imageProvider:Lcom/amazon/kcp/home/util/CardImageProvider;

    iput-object p4, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->card:Lcom/amazon/kindle/home/model/CardData;

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->itemList:Ljava/util/List;

    .line 60
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->threadPoolManager:Lcom/amazon/foundation/internal/IThreadPoolManager;

    .line 61
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->imageCache:Ljava/util/Map;

    .line 64
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object p1

    const-string p2, "BOOK_ENTITY_LIST"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lcom/amazon/kindle/home/model/BookEntityListZone;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/amazon/kindle/home/model/BookEntityListZone;

    if-eqz p1, :cond_2

    .line 65
    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/BookEntityListZone;->getBookEntityList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 265
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/home/model/BookEntity;

    .line 66
    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/BookEntity;->getAsin()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->isOwned(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 67
    iget-object p3, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->itemList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static final synthetic access$getImageProvider$p(Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;)Lcom/amazon/kcp/home/util/CardImageProvider;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->imageProvider:Lcom/amazon/kcp/home/util/CardImageProvider;

    return-object p0
.end method

.method public static final synthetic access$getSdk$p(Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method public static final synthetic access$getThreadPoolManager$p(Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;)Lcom/amazon/foundation/internal/IThreadPoolManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->threadPoolManager:Lcom/amazon/foundation/internal/IThreadPoolManager;

    return-object p0
.end method

.method public static final synthetic access$onCoverClicked(Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;Landroid/view/View;Lcom/amazon/kindle/home/model/BookEntity;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->onCoverClicked(Landroid/view/View;Lcom/amazon/kindle/home/model/BookEntity;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$readAndCacheBitmapFromFile(Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->readAndCacheBitmapFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private final isOwned(Ljava/lang/String;)Z
    .locals 2

    .line 96
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 101
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isArchivable()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private final onCoverClicked(Landroid/view/View;Lcom/amazon/kindle/home/model/BookEntity;Ljava/lang/String;)V
    .locals 5

    .line 161
    sget-object v0, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/BookEntity;->getDetailLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/HomeUtils;->formatUrl(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    const-class v1, Lcom/amazon/kindle/store/StoreOpenerFactory;

    invoke-static {v1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/store/StoreOpenerFactory;

    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/store/StoreOpenerFactory;->createUrlOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    .line 165
    sget-object v1, Lcom/amazon/kcp/home/util/HomeContext;->INSTANCE:Lcom/amazon/kcp/home/util/HomeContext;

    invoke-virtual {v1}, Lcom/amazon/kcp/home/util/HomeContext;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/store/StoreOpener;->setScreenletContext(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    .line 166
    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/BookEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    .line 167
    invoke-interface {v0}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    .line 169
    new-instance v0, Lcom/amazon/kindle/home/model/HomeAction;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    const/4 v2, 0x0

    .line 170
    iget-object v3, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v3}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "reftag"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 171
    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/BookEntity;->getDetailLink()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v1, v2

    .line 169
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "tap"

    const-string v3, "STORE"

    invoke-direct {v0, v2, v3, v1}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 173
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->reportCoverActionMetrics(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/model/BookEntity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final readAndCacheBitmapFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 241
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 242
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 243
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->imageCache:Ljava/util/Map;

    const-string v1, "bitmap"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_1
    return-object v2
.end method

.method private final reportCoverActionMetrics(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/model/BookEntity;Ljava/lang/String;)V
    .locals 9

    .line 185
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->itemList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 187
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {p3}, Lcom/amazon/kindle/home/model/BookEntity;->getAsin()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v2, p2

    move-object v3, p4

    invoke-static/range {v0 .. v8}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordAction$default(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/model/HomeAction;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final reportItemAltTextMissing()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.amazon.kcp.home.widget.BookEntityShovelerAdapter"

    const-string v2, "ImageAltTextMissing"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final setCover(Lcom/amazon/kcp/home/ui/BookEntityCover;Lcom/amazon/kindle/home/model/BookEntity;)V
    .locals 4

    .line 145
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    :goto_0
    const-string v1, "Utils.getFactory().kindl\u2026T_OF_BOOK) ?: Theme.LIGHT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-static {p2, v0}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapterKt;->access$getImageUrlForTheme(Lcom/amazon/kindle/home/model/BookEntity;Lcom/amazon/kindle/krx/theme/Theme;)Ljava/lang/String;

    move-result-object v1

    .line 147
    sget-object v2, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-virtual {v2, v1}, Lcom/amazon/kcp/library/HomeUtils;->imagePathForShovelerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/BookEntity;->getAsin()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2d

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 149
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 151
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->setCoverOrDefaultCover(Lcom/amazon/kcp/home/ui/BookEntityCover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final setCoverOrDefaultCover(Lcom/amazon/kcp/home/ui/BookEntityCover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 198
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->imageCache:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/home/ui/BookEntityCover;->setCoverImage(Landroid/graphics/Bitmap;)V

    return-void

    .line 203
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDefaultCoverBackgroundProvider()Lcom/amazon/kcp/cover/IDefaultCoverBackgroundProvider;

    move-result-object v0

    const-string v1, "Utils.getFactory().defaultCoverBackgroundProvider"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    sget-object v2, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/amazon/kcp/cover/IDefaultCoverBackgroundProvider;->getImageResource(Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)I

    move-result v0

    .line 205
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "cover.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "cover.context.resources.getDrawable(resId)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/home/ui/BookEntityCover;->setDefaultCover(Landroid/graphics/drawable/Drawable;)V

    .line 207
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->threadPoolManager:Lcom/amazon/foundation/internal/IThreadPoolManager;

    new-instance v7, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;-><init>(Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/home/ui/BookEntityCover;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public final getCard()Lcom/amazon/kindle/home/model/CardData;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->card:Lcom/amazon/kindle/home/model/CardData;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 50
    check-cast p1, Lcom/amazon/kcp/home/widget/BookViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->onBindViewHolder(Lcom/amazon/kcp/home/widget/BookViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/amazon/kcp/home/widget/BookViewHolder;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/BookViewHolder;->getCover()Lcom/amazon/kcp/home/ui/BookEntityCover;

    move-result-object p1

    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/home/model/BookEntity;

    .line 120
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/home/ui/BookEntityCover;->setBookEntity(Lcom/amazon/kindle/home/model/BookEntity;)V

    .line 122
    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/BookEntity;->getAspectRatio()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 123
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    mul-float v3, v3, v1

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 126
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOK_ENTITY_LIST_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->setCover(Lcom/amazon/kcp/home/ui/BookEntityCover;Lcom/amazon/kindle/home/model/BookEntity;)V

    .line 128
    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/BookEntity;->getCoverAltText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 129
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 130
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->reportItemAltTextMissing()V

    .line 132
    :goto_1
    new-instance v2, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$onBindViewHolder$$inlined$apply$lambda$1;

    invoke-direct {v2, v0, v1, p0, p2}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$onBindViewHolder$$inlined$apply$lambda$1;-><init>(Lcom/amazon/kindle/home/model/BookEntity;Ljava/lang/String;Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;I)V

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kcp/home/widget/BookViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kcp/home/widget/BookViewHolder;
    .locals 3

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 114
    new-instance v0, Lcom/amazon/kcp/home/widget/BookViewHolder;

    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->book_entity_cover:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/amazon/kcp/home/ui/BookEntityCover;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/home/widget/BookViewHolder;-><init>(Lcom/amazon/kcp/home/ui/BookEntityCover;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "null cannot be cast to non-null type com.amazon.kcp.home.ui.BookEntityCover"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final refreshData()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->itemList:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->itemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 262
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/home/model/BookEntity;

    .line 79
    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/BookEntity;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->isOwned(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->itemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setWidgetPosition(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->widgetPosition:I

    return-void
.end method
