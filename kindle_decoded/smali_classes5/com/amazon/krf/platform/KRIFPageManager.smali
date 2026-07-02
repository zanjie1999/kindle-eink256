.class public final Lcom/amazon/krf/platform/KRIFPageManager;
.super Ljava/lang/Object;
.source "KRIFPageManager.kt"


# instance fields
.field private final mainThreadHandler:Landroid/os/Handler;

.field private final pageManager:Lcom/amazon/krf/platform/PageManager;


# direct methods
.method public constructor <init>(Lcom/amazon/krf/platform/PageManager;Lcom/amazon/krf/platform/PageManagerOptions;)V
    .locals 1

    const-string/jumbo v0, "pageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pageOptions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFPageManager;->pageManager:Lcom/amazon/krf/platform/PageManager;

    .line 35
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFPageManager;->mainThreadHandler:Landroid/os/Handler;

    .line 38
    invoke-virtual {p0, p2}, Lcom/amazon/krf/platform/KRIFPageManager;->reloadPagesWithOptions(Lcom/amazon/krf/platform/PageManagerOptions;)V

    return-void
.end method

.method public static final synthetic access$getPageManager$p(Lcom/amazon/krf/platform/KRIFPageManager;)Lcom/amazon/krf/platform/PageManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/krf/platform/KRIFPageManager;->pageManager:Lcom/amazon/krf/platform/PageManager;

    return-object p0
.end method

.method public static synthetic getPageModel$default(Lcom/amazon/krf/platform/KRIFPageManager;Lcom/amazon/krf/platform/Position;ZILjava/lang/Object;)Lcom/amazon/krf/platform/PageModel;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 62
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/krf/platform/KRIFPageManager;->getPageModel(Lcom/amazon/krf/platform/Position;Z)Lcom/amazon/krf/platform/PageModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getPageView$default(Lcom/amazon/krf/platform/KRIFPageManager;Lcom/amazon/krf/platform/PageModel;ZILjava/lang/Object;)Lcom/amazon/krf/platform/KRFPageView;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 71
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/krf/platform/KRIFPageManager;->getPageView(Lcom/amazon/krf/platform/PageModel;Z)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object p0

    return-object p0
.end method

.method private final submit(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 96
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 84
    new-instance v0, Lcom/amazon/krf/platform/KRIFPageManager$dispose$1;

    invoke-direct {v0, p0}, Lcom/amazon/krf/platform/KRIFPageManager$dispose$1;-><init>(Lcom/amazon/krf/platform/KRIFPageManager;)V

    invoke-direct {p0, v0}, Lcom/amazon/krf/platform/KRIFPageManager;->submit(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method public final getIndexedOffsetPairAdjacentToPageModel(Lcom/amazon/krf/platform/PageModel;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/krf/platform/PageModel;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/amazon/krf/platform/KRIFPageManager$getIndexedOffsetPairAdjacentToPageModel$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/krf/platform/KRIFPageManager$getIndexedOffsetPairAdjacentToPageModel$1;-><init>(Lcom/amazon/krf/platform/KRIFPageManager;Lcom/amazon/krf/platform/PageModel;)V

    invoke-direct {p0, v0}, Lcom/amazon/krf/platform/KRIFPageManager;->submit(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    return-object p1
.end method

.method public final getPageModel(Lcom/amazon/krf/platform/PageModel;I)Lcom/amazon/krf/platform/PageModel;
    .locals 1

    const-string v0, "basePage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/amazon/krf/platform/KRIFPageManager$getPageModel$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/krf/platform/KRIFPageManager$getPageModel$2;-><init>(Lcom/amazon/krf/platform/KRIFPageManager;Lcom/amazon/krf/platform/PageModel;I)V

    invoke-direct {p0, v0}, Lcom/amazon/krf/platform/KRIFPageManager;->submit(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/krf/platform/PageModel;

    return-object p1
.end method

.method public final getPageModel(Lcom/amazon/krf/platform/Position;)Lcom/amazon/krf/platform/PageModel;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/amazon/krf/platform/KRIFPageManager;->getPageModel$default(Lcom/amazon/krf/platform/KRIFPageManager;Lcom/amazon/krf/platform/Position;ZILjava/lang/Object;)Lcom/amazon/krf/platform/PageModel;

    move-result-object p1

    return-object p1
.end method

.method public final getPageModel(Lcom/amazon/krf/platform/Position;Z)Lcom/amazon/krf/platform/PageModel;
    .locals 1

    .line 63
    new-instance v0, Lcom/amazon/krf/platform/KRIFPageManager$getPageModel$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/krf/platform/KRIFPageManager$getPageModel$1;-><init>(Lcom/amazon/krf/platform/KRIFPageManager;Lcom/amazon/krf/platform/Position;Z)V

    invoke-direct {p0, v0}, Lcom/amazon/krf/platform/KRIFPageManager;->submit(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/krf/platform/PageModel;

    return-object p1
.end method

.method public final getPageView(Lcom/amazon/krf/platform/PageModel;)Lcom/amazon/krf/platform/KRFPageView;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/amazon/krf/platform/KRIFPageManager;->getPageView$default(Lcom/amazon/krf/platform/KRIFPageManager;Lcom/amazon/krf/platform/PageModel;ZILjava/lang/Object;)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object p1

    return-object p1
.end method

.method public final getPageView(Lcom/amazon/krf/platform/PageModel;Z)Lcom/amazon/krf/platform/KRFPageView;
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/amazon/krf/platform/KRIFPageManager$getPageView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/krf/platform/KRIFPageManager$getPageView$1;-><init>(Lcom/amazon/krf/platform/KRIFPageManager;Lcom/amazon/krf/platform/PageModel;Z)V

    invoke-direct {p0, v0}, Lcom/amazon/krf/platform/KRIFPageManager;->submit(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/krf/platform/KRFPageView;

    return-object p1
.end method

.method public final getPageViewContainingPosition(Lcom/amazon/krf/platform/Position;)Lcom/amazon/krf/platform/KRFPageView;
    .locals 1

    const-string/jumbo v0, "platformPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcom/amazon/krf/platform/KRIFPageManager$getPageViewContainingPosition$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/krf/platform/KRIFPageManager$getPageViewContainingPosition$1;-><init>(Lcom/amazon/krf/platform/KRIFPageManager;Lcom/amazon/krf/platform/Position;)V

    invoke-direct {p0, v0}, Lcom/amazon/krf/platform/KRIFPageManager;->submit(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/krf/platform/KRFPageView;

    return-object p1
.end method

.method public final isPageIndexingComplete()Z
    .locals 1

    .line 54
    new-instance v0, Lcom/amazon/krf/platform/KRIFPageManager$isPageIndexingComplete$1;

    invoke-direct {v0, p0}, Lcom/amazon/krf/platform/KRIFPageManager$isPageIndexingComplete$1;-><init>(Lcom/amazon/krf/platform/KRIFPageManager;)V

    invoke-direct {p0, v0}, Lcom/amazon/krf/platform/KRIFPageManager;->submit(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final onDisplayedPagesChanged(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/KRFPageView;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "pages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/amazon/krf/platform/KRIFPageManager$onDisplayedPagesChanged$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/krf/platform/KRIFPageManager$onDisplayedPagesChanged$1;-><init>(Lcom/amazon/krf/platform/KRIFPageManager;Ljava/util/ArrayList;)V

    invoke-direct {p0, v0}, Lcom/amazon/krf/platform/KRIFPageManager;->submit(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method public final reloadPagesWithOptions(Lcom/amazon/krf/platform/PageManagerOptions;)V
    .locals 1

    const-string/jumbo v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/amazon/krf/platform/KRIFPageManager$reloadPagesWithOptions$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/krf/platform/KRIFPageManager$reloadPagesWithOptions$1;-><init>(Lcom/amazon/krf/platform/KRIFPageManager;Lcom/amazon/krf/platform/PageManagerOptions;)V

    invoke-direct {p0, v0}, Lcom/amazon/krf/platform/KRIFPageManager;->submit(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method public final setKRFPageUpdateListener(Lcom/amazon/krf/platform/KRFPageUpdateListener;)V
    .locals 1

    .line 50
    new-instance v0, Lcom/amazon/krf/platform/KRIFPageManager$setKRFPageUpdateListener$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/krf/platform/KRIFPageManager$setKRFPageUpdateListener$1;-><init>(Lcom/amazon/krf/platform/KRIFPageManager;Lcom/amazon/krf/platform/KRFPageUpdateListener;)V

    invoke-direct {p0, v0}, Lcom/amazon/krf/platform/KRIFPageManager;->submit(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method public final startIndexing(Lcom/amazon/krf/platform/Position;)V
    .locals 1

    .line 42
    new-instance v0, Lcom/amazon/krf/platform/KRIFPageManager$startIndexing$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/krf/platform/KRIFPageManager$startIndexing$1;-><init>(Lcom/amazon/krf/platform/KRIFPageManager;Lcom/amazon/krf/platform/Position;)V

    invoke-direct {p0, v0}, Lcom/amazon/krf/platform/KRIFPageManager;->submit(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method
