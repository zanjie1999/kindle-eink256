.class public final Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;
.super Lcom/amazon/kindle/home/card/AbstractHomeCard;
.source "FalkorDiscoverWidget.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFalkorDiscoverWidget.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FalkorDiscoverWidget.kt\ncom/amazon/kcp/home/widget/FalkorDiscoverWidget\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,124:1\n133#2,3:125\n153#2,3:128\n*E\n*S KotlinDebug\n*F\n+ 1 FalkorDiscoverWidget.kt\ncom/amazon/kcp/home/widget/FalkorDiscoverWidget\n*L\n48#1,3:125\n49#1,3:128\n*E\n"
.end annotation


# instance fields
.field private final data:Lcom/amazon/kindle/home/model/CardData;

.field private final fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

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
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fastMetrics"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Lcom/amazon/kindle/home/card/AbstractHomeCard;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->data:Lcom/amazon/kindle/home/model/CardData;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    .line 41
    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->priority:I

    .line 42
    sget p1, Lcom/amazon/kindle/librarymodule/R$layout;->falkor_discover_card_view:I

    iput p1, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->viewLayoutId:I

    const/4 p1, 0x2

    new-array p1, p1, [Lkotlin/Pair;

    .line 45
    sget-object p2, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-virtual {p2}, Lcom/amazon/kindle/krx/theme/Theme;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    sget-object p2, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-virtual {p2}, Lcom/amazon/kindle/krx/theme/Theme;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, p1, p3

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->themeImageDownloaded:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$reportAction(Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->reportAction(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V

    return-void
.end method

.method private final reportAction(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 9

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p3, p1, Ljava/lang/String;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->data:Lcom/amazon/kindle/home/model/CardData;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/4 v8, 0x0

    move-object v2, p2

    invoke-static/range {v0 .. v8}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordAction$default(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/model/HomeAction;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final submitOffMainThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 103
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    invoke-interface {v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 107
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/amazon/kindle/home/action/HomeActionManager;)V
    .locals 9

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->falkor_discover_card_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.falkor_discover_card_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/amazon/android/ui/UiFontTextView;

    .line 60
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->data:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v1

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

    if-eqz v1, :cond_7

    .line 61
    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->falkor_discover_body_1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "view.findViewById(R.id.falkor_discover_body_1)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/amazon/android/ui/UiFontTextView;

    .line 64
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->data:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v4, :cond_1

    move-object v2, v3

    :cond_1
    check-cast v2, Lcom/amazon/kindle/home/model/TextZone;

    if-eqz v2, :cond_7

    .line 65
    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->home_card_footer_button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v4, "view.findViewById(R.id.home_card_footer_button)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/Button;

    .line 68
    iget-object v4, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->data:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v4}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/amazon/kindle/home/model/ButtonZone;

    if-nez v5, :cond_2

    move-object v4, v3

    :cond_2
    check-cast v4, Lcom/amazon/kindle/home/model/ButtonZone;

    if-eqz v4, :cond_7

    .line 69
    invoke-virtual {v4}, Lcom/amazon/kindle/home/model/ButtonZone;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {v4}, Lcom/amazon/kindle/home/model/ButtonZone;->getAltText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 72
    sget v4, Lcom/amazon/kindle/librarymodule/R$id;->falkor_discovery_image:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string/jumbo v5, "view.findViewById(R.id.falkor_discovery_image)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/ImageView;

    .line 73
    iget-object v5, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->data:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v5}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/amazon/kindle/home/model/ThemedImageZone;

    if-nez v6, :cond_3

    move-object v5, v3

    :cond_3
    check-cast v5, Lcom/amazon/kindle/home/model/ThemedImageZone;

    if-eqz v5, :cond_7

    .line 74
    iget-object v6, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v6, :cond_4

    invoke-interface {v6}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v6

    if-eqz v6, :cond_4

    sget-object v7, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v6, v7}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v6

    goto :goto_0

    :cond_4
    move-object v6, v3

    :goto_0
    const/4 v7, 0x1

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    sget-object v8, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v8, v6

    if-eq v6, v7, :cond_6

    .line 76
    :goto_1
    sget-object v6, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-virtual {v5}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getLightImageUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/amazon/kcp/library/HomeUtils;->themedImageCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 75
    :cond_6
    sget-object v6, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-virtual {v5}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getDarkImageUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/amazon/kcp/library/HomeUtils;->themedImageCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 79
    :goto_2
    new-instance v8, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1;

    invoke-direct {v8, v6, v4, v5, p1}, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1;-><init>(Ljava/lang/String;Landroid/widget/ImageView;Lcom/amazon/kindle/home/model/ThemedImageZone;Landroid/view/View;)V

    invoke-direct {p0, v8}, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->submitOffMainThread(Ljava/lang/Runnable;)V

    .line 99
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->data:Lcom/amazon/kindle/home/model/CardData;

    new-instance v5, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$2;

    invoke-direct {v5, p0}, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$2;-><init>(Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;)V

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/view/View;

    const/4 v8, 0x0

    aput-object v2, v6, v8

    aput-object v4, v6, v7

    const/4 v2, 0x2

    aput-object v1, v6, v2

    const/4 v1, 0x3

    aput-object v0, v6, v1

    invoke-interface {p2, p1, v3, v5, v6}, Lcom/amazon/kindle/home/action/HomeActionManager;->registerActions(Lcom/amazon/kindle/home/model/CardData;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;[Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method public final getData()Lcom/amazon/kindle/home/model/CardData;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->data:Lcom/amazon/kindle/home/model/CardData;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->priority:I

    return v0
.end method

.method public getState()Lcom/amazon/kindle/home/card/HomeCardState;
    .locals 6

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->themeImageDownloaded:Ljava/util/Map;

    .line 125
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 126
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

    .line 48
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 49
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->themeImageDownloaded:Ljava/util/Map;

    .line 128
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 129
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 49
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    .line 52
    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->FAILED:Lcom/amazon/kindle/home/card/HomeCardState;

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    .line 53
    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->READY:Lcom/amazon/kindle/home/card/HomeCardState;

    goto :goto_2

    .line 54
    :cond_7
    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->LOADING:Lcom/amazon/kindle/home/card/HomeCardState;

    :goto_2
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
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->themeImageDownloaded:Ljava/util/Map;

    return-object v0
.end method

.method public getViewLayoutId()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->viewLayoutId:I

    return v0
.end method

.method public reportImpressionData(Z)V
    .locals 1

    .line 115
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget;->data:Lcom/amazon/kindle/home/model/CardData;

    invoke-static {p1, v0}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordImpression(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Falkor Discover Card Widget"

    return-object v0
.end method
