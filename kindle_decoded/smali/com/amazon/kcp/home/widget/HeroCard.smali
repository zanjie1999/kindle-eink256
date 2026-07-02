.class public final Lcom/amazon/kcp/home/widget/HeroCard;
.super Lcom/amazon/kindle/home/card/AbstractHomeCard;
.source "HeroCard.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHeroCard.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeroCard.kt\ncom/amazon/kcp/home/widget/HeroCard\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,147:1\n133#2,3:148\n153#2,3:151\n8639#3,2:154\n9321#3,4:156\n*E\n*S KotlinDebug\n*F\n+ 1 HeroCard.kt\ncom/amazon/kcp/home/widget/HeroCard\n*L\n137#1,3:148\n143#1,3:151\n45#1,2:154\n45#1,4:156\n*E\n"
.end annotation


# instance fields
.field private final card:Lcom/amazon/kindle/home/model/CardData;

.field private final fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

.field private hasBeenShownToUser:Z

.field private final priority:I

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

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
.method public constructor <init>(Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;)V
    .locals 4

    const-string v0, "card"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fm"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Lcom/amazon/kindle/home/card/AbstractHomeCard;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/HeroCard;->card:Lcom/amazon/kindle/home/model/CardData;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/HeroCard;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/HeroCard;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    .line 42
    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/home/widget/HeroCard;->priority:I

    .line 43
    sget p1, Lcom/amazon/kindle/librarymodule/R$layout;->hero_card:I

    iput p1, p0, Lcom/amazon/kcp/home/widget/HeroCard;->viewLayoutId:I

    .line 45
    invoke-static {}, Lcom/amazon/kindle/krx/theme/Theme;->values()[Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p1

    .line 154
    array-length p2, p1

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result p2

    const/16 p3, 0x10

    invoke-static {p2, p3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    .line 155
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 156
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 46
    new-instance v2, Lkotlin/Pair;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/theme/Theme;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p3}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/HeroCard;->themeImageDownloaded:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$reportAction(Lcom/amazon/kcp/home/widget/HeroCard;Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/home/widget/HeroCard;->reportAction(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V

    return-void
.end method

.method private final allImagesDownloaded()Z
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/HeroCard;->themeImageDownloaded:Ljava/util/Map;

    .line 148
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    .line 149
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

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/HeroCard;->themeImageDownloaded:Ljava/util/Map;

    .line 151
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 152
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

    .line 143
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

    .line 119
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/home/widget/HeroCard$getImage$1;

    invoke-direct {v1, p1, p2}, Lcom/amazon/kcp/home/widget/HeroCard$getImage$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private final reportAction(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 9

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p3, p1, Ljava/lang/String;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/HeroCard;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/HeroCard;->card:Lcom/amazon/kindle/home/model/CardData;

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
    .locals 7

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "am"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->home_card_header_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/HeroCard;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "titleView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/amazon/kindle/home/model/TextZone;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v1, v3

    :cond_0
    check-cast v1, Lcom/amazon/kindle/home/model/TextZone;

    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_1
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->home_card_header_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/HeroCard;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "subtitleView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v2, :cond_2

    move-object v1, v3

    :cond_2
    check-cast v1, Lcom/amazon/kindle/home/model/TextZone;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 68
    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    :goto_0
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->hero_card_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 76
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/HeroCard;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v1

    const-string v4, "imageView"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lcom/amazon/kindle/home/model/ThemedImageZone;

    if-nez v4, :cond_4

    move-object v1, v3

    :cond_4
    check-cast v1, Lcom/amazon/kindle/home/model/ThemedImageZone;

    const/4 v4, 0x1

    if-eqz v1, :cond_8

    .line 77
    iget-object v5, p0, Lcom/amazon/kcp/home/widget/HeroCard;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v5

    if-eqz v5, :cond_5

    sget-object v6, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v5, v6}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v5

    goto :goto_1

    :cond_5
    move-object v5, v3

    :goto_1
    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    sget-object v6, Lcom/amazon/kcp/home/widget/HeroCard$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    if-eq v5, v4, :cond_7

    .line 79
    :goto_2
    sget-object v5, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getLightImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amazon/kcp/library/HomeUtils;->themedImageCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 78
    :cond_7
    sget-object v5, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getDarkImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amazon/kcp/library/HomeUtils;->themedImageCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 82
    :goto_3
    new-instance v6, Lcom/amazon/kcp/home/widget/HeroCard$bindView$$inlined$let$lambda$1;

    invoke-direct {v6, v1, p0, v0}, Lcom/amazon/kcp/home/widget/HeroCard$bindView$$inlined$let$lambda$1;-><init>(Lcom/amazon/kindle/home/model/ThemedImageZone;Lcom/amazon/kcp/home/widget/HeroCard;Landroid/widget/ImageView;)V

    invoke-direct {p0, v5, v6}, Lcom/amazon/kcp/home/widget/HeroCard;->getImage(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 93
    :cond_8
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->home_card_footer_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 94
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/HeroCard;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v1

    const-string v5, "footerButton"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Lcom/amazon/kindle/home/model/ButtonZone;

    if-nez v5, :cond_9

    move-object v1, v3

    :cond_9
    check-cast v1, Lcom/amazon/kindle/home/model/ButtonZone;

    if-eqz v1, :cond_a

    .line 95
    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/ButtonZone;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/ButtonZone;->getAltText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 97
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 100
    :cond_a
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/HeroCard;->card:Lcom/amazon/kindle/home/model/CardData;

    new-instance v5, Lcom/amazon/kcp/home/widget/HeroCard$bindView$4;

    invoke-direct {v5, p0}, Lcom/amazon/kcp/home/widget/HeroCard$bindView$4;-><init>(Lcom/amazon/kcp/home/widget/HeroCard;)V

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/view/View;

    aput-object v0, v6, v2

    aput-object p1, v6, v4

    invoke-interface {p2, v1, v3, v5, v6}, Lcom/amazon/kindle/home/action/HomeActionManager;->registerActions(Lcom/amazon/kindle/home/model/CardData;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;[Landroid/view/View;)V

    return-void
.end method

.method public final getCard()Lcom/amazon/kindle/home/model/CardData;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/HeroCard;->card:Lcom/amazon/kindle/home/model/CardData;

    return-object v0
.end method

.method public getHasBeenShownToUser()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/amazon/kcp/home/widget/HeroCard;->hasBeenShownToUser:Z

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/amazon/kcp/home/widget/HeroCard;->priority:I

    return v0
.end method

.method public getState()Lcom/amazon/kindle/home/card/HomeCardState;
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/HeroCard;->allImagesDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->READY:Lcom/amazon/kindle/home/card/HomeCardState;

    goto :goto_0

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/HeroCard;->anyImageDownloadsFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->FAILED:Lcom/amazon/kindle/home/card/HomeCardState;

    goto :goto_0

    .line 53
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

    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/HeroCard;->themeImageDownloaded:Ljava/util/Map;

    return-object v0
.end method

.method public getViewLayoutId()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/amazon/kcp/home/widget/HeroCard;->viewLayoutId:I

    return v0
.end method

.method public reportImpressionData(Z)V
    .locals 1

    .line 104
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/HeroCard;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/HeroCard;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-static {p1, v0}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordImpression(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;)V

    return-void
.end method

.method public setHasBeenShownToUser(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/amazon/kcp/home/widget/HeroCard;->hasBeenShownToUser:Z

    return-void
.end method
