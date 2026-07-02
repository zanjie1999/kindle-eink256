.class public final Lcom/amazon/kcp/home/widget/WaysToReadWidget;
.super Lcom/amazon/kindle/home/card/AbstractHomeCard;
.source "WaysToReadWidget.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWaysToReadWidget.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WaysToReadWidget.kt\ncom/amazon/kcp/home/widget/WaysToReadWidget\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,224:1\n133#2,3:225\n153#2,3:228\n181#2,2:237\n1147#3,2:231\n1221#3,4:233\n*E\n*S KotlinDebug\n*F\n+ 1 WaysToReadWidget.kt\ncom/amazon/kcp/home/widget/WaysToReadWidget\n*L\n76#1,3:225\n77#1,3:228\n68#1,2:237\n58#1,2:231\n58#1,4:233\n*E\n"
.end annotation


# instance fields
.field private final cardData:Lcom/amazon/kindle/home/model/CardData;

.field private final fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

.field private final itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/home/widget/DisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private swipeMetricRecorded:Z

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

.field private final viewLayoutId:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;",
            "Lcom/amazon/kindle/home/model/CardData;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fastMetrics"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "themes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/amazon/kindle/home/card/AbstractHomeCard;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->cardData:Lcom/amazon/kindle/home/model/CardData;

    const/16 p1, 0xa

    .line 231
    invoke-static {p4, p1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result p1

    const/16 p2, 0x10

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    .line 232
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 233
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 234
    check-cast p3, Ljava/lang/String;

    .line 58
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

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->themeImageDownloaded:Ljava/util/Map;

    .line 61
    sget p1, Lcom/amazon/kindle/librarymodule/R$layout;->ways_to_read_card_view:I

    iput p1, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->viewLayoutId:I

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->itemList:Ljava/util/List;

    .line 68
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->cardData:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object p1

    .line 237
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/home/model/HomeZone;

    .line 69
    instance-of p4, p2, Lcom/amazon/kindle/home/model/WaysToReadBlock;

    if-eqz p4, :cond_1

    .line 70
    iget-object p4, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->itemList:Ljava/util/List;

    new-instance v0, Lcom/amazon/kcp/home/widget/DisplayItem;

    check-cast p2, Lcom/amazon/kindle/home/model/WaysToReadBlock;

    invoke-direct {v0, p3, p2}, Lcom/amazon/kcp/home/widget/DisplayItem;-><init>(Ljava/lang/String;Lcom/amazon/kindle/home/model/WaysToReadBlock;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static final synthetic access$getFastMetrics$p(Lcom/amazon/kcp/home/widget/WaysToReadWidget;)Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    return-object p0
.end method

.method public static final synthetic access$getSwipeMetricRecorded$p(Lcom/amazon/kcp/home/widget/WaysToReadWidget;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->swipeMetricRecorded:Z

    return p0
.end method

.method public static final synthetic access$reportAction(Lcom/amazon/kcp/home/widget/WaysToReadWidget;Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->reportAction(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V

    return-void
.end method

.method public static final synthetic access$setSwipeMetricRecorded$p(Lcom/amazon/kcp/home/widget/WaysToReadWidget;Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->swipeMetricRecorded:Z

    return-void
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

    .line 211
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/home/widget/WaysToReadWidget$getImage$1;

    invoke-direct {v1, p1, p2}, Lcom/amazon/kcp/home/widget/WaysToReadWidget$getImage$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private final getShovelerComponentView(Lcom/amazon/kcp/home/widget/DisplayItem;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 7

    .line 151
    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/DisplayItem;->getZone()Lcom/amazon/kindle/home/model/WaysToReadBlock;

    move-result-object v0

    .line 153
    sget-object v1, Lcom/amazon/kcp/home/models/CardType;->TIPS_AND_TRICKS:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {v1}, Lcom/amazon/kcp/home/models/CardType;->getTemplateId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->cardData:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getTemplateId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "cardImageView"

    const-string v3, "introTextView"

    const-string/jumbo v4, "titleTextView"

    const-string v5, "layoutInflater.inflate(R\u2026                   false)"

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    .line 154
    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->tips_and_tricks_card_shoveler_component_layout:I

    invoke-virtual {p3, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    sget p3, Lcom/amazon/kindle/librarymodule/R$id;->tat_shoveler_component_title:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/amazon/android/ui/UiFontTextView;

    .line 158
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->tat_shoveler_component_image:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 159
    sget v5, Lcom/amazon/kindle/librarymodule/R$id;->tat_shoveler_component_intro_text:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/amazon/android/ui/UiFontTextView;

    .line 160
    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/WaysToReadBlock;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/WaysToReadBlock;->getIntro()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->populateImages(Landroid/widget/ImageView;Lcom/amazon/kindle/home/model/WaysToReadBlock;)V

    .line 163
    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/DisplayItem;->getZoneName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    :cond_0
    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->ways_to_read_card_shoveler_component_layout:I

    invoke-virtual {p3, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    sget p3, Lcom/amazon/kindle/librarymodule/R$id;->wtr_shoveler_component_title:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/amazon/android/ui/UiFontTextView;

    .line 169
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->wtr_shoveler_component_image:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 170
    sget v5, Lcom/amazon/kindle/librarymodule/R$id;->wtr_shoveler_component_intro_text:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/amazon/android/ui/UiFontTextView;

    .line 171
    sget v6, Lcom/amazon/kindle/librarymodule/R$id;->wtr_shoveler_component_landing_page_link_display_text:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/amazon/android/ui/UiFontTextView;

    .line 172
    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/WaysToReadBlock;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/WaysToReadBlock;->getIntro()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p3, "landingPageLinkTextView"

    .line 174
    invoke-static {v6, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/WaysToReadBlock;->getLandingPageUrlDisplayText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p3

    or-int/lit8 p3, p3, 0x8

    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 176
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->populateImages(Landroid/widget/ImageView;Lcom/amazon/kindle/home/model/WaysToReadBlock;)V

    .line 177
    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/DisplayItem;->getZoneName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-object p2
.end method

.method private final populateImages(Landroid/widget/ImageView;Lcom/amazon/kindle/home/model/WaysToReadBlock;)V
    .locals 2

    .line 192
    sget-object v0, Lcom/amazon/kcp/home/util/HomeContext;->INSTANCE:Lcom/amazon/kcp/home/util/HomeContext;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/util/HomeContext;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/amazon/kcp/home/widget/WaysToReadWidget$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 194
    sget-object v0, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/WaysToReadBlock;->getLightImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/HomeUtils;->themedImageCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 193
    :cond_1
    sget-object v0, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/WaysToReadBlock;->getDarkImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/HomeUtils;->themedImageCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    :goto_1
    new-instance v1, Lcom/amazon/kcp/home/widget/WaysToReadWidget$populateImages$1;

    invoke-direct {v1, p1, p2}, Lcom/amazon/kcp/home/widget/WaysToReadWidget$populateImages$1;-><init>(Landroid/widget/ImageView;Lcom/amazon/kindle/home/model/WaysToReadBlock;)V

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->getImage(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final reportAction(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 9

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p3, p1, Ljava/lang/String;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->cardData:Lcom/amazon/kindle/home/model/CardData;

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
    .locals 11

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "homeActionManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    instance-of v0, p1, Lcom/amazon/kcp/home/ui/HomeCardView;

    if-nez v0, :cond_0

    const-string p1, "com.amazon.kcp.home.widget.WaysToReadWidget"

    const-string p2, "Wrong view received, ignoring and returning w/o binding a model to view"

    .line 90
    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 94
    :cond_0
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->home_card_header_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->cardData:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "titleTextView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/amazon/kindle/home/model/TextZone;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v1, v3

    :cond_1
    check-cast v1, Lcom/amazon/kindle/home/model/TextZone;

    if-eqz v1, :cond_2

    .line 96
    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_2
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->home_card_header_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "subTitleTextView"

    .line 100
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->cardData:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v2, :cond_3

    move-object v1, v3

    :cond_3
    check-cast v1, Lcom/amazon/kindle/home/model/TextZone;

    const/16 v2, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 101
    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    .line 103
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->home_card_footer_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 106
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->home_card_footer_divider:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 107
    sget-object v5, Lcom/amazon/kcp/home/models/CardType;->WAYS_TO_READ:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {v5}, Lcom/amazon/kcp/home/models/CardType;->getTemplateId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->cardData:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v6}, Lcom/amazon/kindle/home/model/CardData;->getTemplateId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "footerDivider"

    const-string v7, "footerButton"

    if-eqz v5, :cond_5

    .line 108
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 109
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 111
    :cond_5
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 112
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->cardData:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/amazon/kindle/home/model/ButtonZone;

    if-nez v2, :cond_6

    move-object v1, v3

    :cond_6
    check-cast v1, Lcom/amazon/kindle/home/model/ButtonZone;

    if-eqz v1, :cond_7

    .line 115
    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/ButtonZone;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/ButtonZone;->getAltText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 122
    :cond_7
    :goto_1
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->wtr_shoveler_horizontal_scroller:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView;

    .line 123
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->wtr_shoveler:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 124
    check-cast p1, Lcom/amazon/kcp/home/ui/HomeCardView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 125
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 126
    iget-object v5, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->itemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x1

    if-ge v6, v5, :cond_8

    .line 127
    iget-object v8, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->itemList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/kcp/home/widget/DisplayItem;

    const-string/jumbo v9, "shoveler"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "layoutInflater"

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v8, v2, p1}, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->getShovelerComponentView(Lcom/amazon/kcp/home/widget/DisplayItem;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v8

    .line 128
    iget-object v9, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->cardData:Lcom/amazon/kindle/home/model/CardData;

    .line 130
    new-instance v10, Lcom/amazon/kcp/home/widget/WaysToReadWidget$bindView$4;

    invoke-direct {v10, p0}, Lcom/amazon/kcp/home/widget/WaysToReadWidget$bindView$4;-><init>(Lcom/amazon/kcp/home/widget/WaysToReadWidget;)V

    new-array v7, v7, [Landroid/view/View;

    aput-object v8, v7, v4

    .line 128
    invoke-interface {p2, v9, v3, v10, v7}, Lcom/amazon/kindle/home/action/HomeActionManager;->registerActions(Lcom/amazon/kindle/home/model/CardData;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;[Landroid/view/View;)V

    .line 132
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 135
    :cond_8
    new-instance p1, Lcom/amazon/kcp/home/widget/WaysToReadWidget$bindView$5;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/home/widget/WaysToReadWidget$bindView$5;-><init>(Lcom/amazon/kcp/home/widget/WaysToReadWidget;)V

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView;->addScrollChangedListener(Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView$OnScrollChangedListener;)V

    .line 147
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->cardData:Lcom/amazon/kindle/home/model/CardData;

    new-instance v1, Lcom/amazon/kcp/home/widget/WaysToReadWidget$bindView$6;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/home/widget/WaysToReadWidget$bindView$6;-><init>(Lcom/amazon/kcp/home/widget/WaysToReadWidget;)V

    new-array v2, v7, [Landroid/view/View;

    aput-object v0, v2, v4

    invoke-interface {p2, p1, v3, v1, v2}, Lcom/amazon/kindle/home/action/HomeActionManager;->registerActions(Lcom/amazon/kindle/home/model/CardData;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;[Landroid/view/View;)V

    return-void
.end method

.method public final getCardData()Lcom/amazon/kindle/home/model/CardData;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->cardData:Lcom/amazon/kindle/home/model/CardData;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->cardData:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result v0

    return v0
.end method

.method public getState()Lcom/amazon/kindle/home/card/HomeCardState;
    .locals 6

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->themeImageDownloaded:Ljava/util/Map;

    .line 225
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 226
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

    const/4 v0, 0x0

    .line 77
    :goto_1
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->themeImageDownloaded:Ljava/util/Map;

    .line 228
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 229
    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 77
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_2
    if-eqz v2, :cond_7

    .line 80
    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->FAILED:Lcom/amazon/kindle/home/card/HomeCardState;

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    .line 81
    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->READY:Lcom/amazon/kindle/home/card/HomeCardState;

    goto :goto_3

    .line 82
    :cond_8
    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->LOADING:Lcom/amazon/kindle/home/card/HomeCardState;

    :goto_3
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

    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->themeImageDownloaded:Ljava/util/Map;

    return-object v0
.end method

.method public getViewLayoutId()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->viewLayoutId:I

    return v0
.end method

.method public reportImpressionData(Z)V
    .locals 1

    .line 183
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->cardData:Lcom/amazon/kindle/home/model/CardData;

    invoke-static {p1, v0}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordImpression(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->cardData:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
