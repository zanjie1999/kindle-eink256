.class public final Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;
.super Ljava/lang/Object;
.source "ResumeOnClickHandler.kt"


# instance fields
.field private final listener:Lcom/amazon/kindle/home/card/HomeWidgetListener;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/home/card/HomeWidgetListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;->listener:Lcom/amazon/kindle/home/card/HomeWidgetListener;

    return-void
.end method

.method private final processClickEvent(ILcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;)V
    .locals 2

    const-string v0, "HomeResumeShoveler"

    const-string v1, "ResumeShoveler"

    .line 37
    invoke-direct {p0, p2, v1, v0, p1}, Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;->reportOnClickMetricsForResume(Lcom/amazon/kcp/library/ILibraryDisplayItem;Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    invoke-static {p1}, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;->reportBookOpenedFromHome(I)V

    .line 42
    invoke-static {}, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsManager;->getInstance()Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetrics;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetrics;->reportBookIndexOpenedFromHome(I)V

    .line 43
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;->listener:Lcom/amazon/kindle/home/card/HomeWidgetListener;

    new-instance v1, Lcom/amazon/kindle/home/card/LibraryCardEvent;

    invoke-direct {v1, p3, p2, p4}, Lcom/amazon/kindle/home/card/LibraryCardEvent;-><init>(Landroid/view/View;Ljava/lang/Object;Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;)V

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/home/card/HomeWidgetListener;->onResumeWidgetEvent(Lcom/amazon/kindle/home/card/LibraryCardEvent;Ljava/lang/String;)V

    return-void
.end method

.method private final reportOnClickMetricsForResume(Lcom/amazon/kcp/library/ILibraryDisplayItem;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/Pair;

    .line 48
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    if-ltz p4, :cond_0

    .line 50
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p4, "ResumeShovelerPosition"

    invoke-interface {p1, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p2, "Click"

    .line 52
    invoke-static {p3, p2, p1}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final onClick(ILcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;->ITEM_CLICKED:Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;->processClickEvent(ILcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;)V

    return-void
.end method

.method public final onLongClick(ILcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;->ITEM_LONG_CLICKED_SHOVELER:Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;->processClickEvent(ILcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kindle/home/card/LibraryCardEvent$EventType;)V

    return-void
.end method
