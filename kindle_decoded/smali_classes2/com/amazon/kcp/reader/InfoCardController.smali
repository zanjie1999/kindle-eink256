.class public Lcom/amazon/kcp/reader/InfoCardController;
.super Ljava/lang/Object;
.source "InfoCardController.java"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/InfoCardContainer$InfoCardContainerDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/InfoCardController$InfoCardsStateChangeEvent;
    }
.end annotation


# static fields
.field private static final CARD_COVERAGE_INVALID:I = 0x4

.field private static final INFOCARD_DISPLAYED:Ljava/lang/String; = "InfocardDisplayed"

.field private static final KEY_COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final KLOCardName:Ljava/lang/String; = "KLOInfoCard"

.field private static final KLOClassName:Ljava/lang/String; = "com.amazon.klo.infocard.KLOInfoCardView"

.field private static final METRICS_NAME:Ljava/lang/String; = "InfoCardController"

.field private static final PAGE_TYPE:Ljava/lang/String; = "Infocards"

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_KEY:Ljava/lang/String; = "type"


# instance fields
.field private final ALLOW_PARTIALLY_HIDDEN:Ljava/lang/String;

.field private final CARD_TITLE:Ljava/lang/String;

.field private allowPartiallyHidden:Z

.field protected cardCoverage:I

.field private final cardProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXInfoCardItem;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXInfoCardItem;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;>;"
        }
    .end annotation
.end field

.field protected cardWidget:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

.field protected cardWidgetContainer:Landroid/widget/FrameLayout;

.field protected cardsSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/InfoCardView;",
            ">;>;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field protected hasPopulated:Z

.field private final infoCardViewProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/InfoCardView;",
            "Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/InfoCardView;",
            "Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private lastDisplayedOnBottom:Z

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field protected objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

.field protected onHoverListener:Landroid/view/View$OnHoverListener;

.field protected pageIndicator:Lcom/amazon/kcp/reader/ui/DotPageIndicator;

.field private previousSelectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

.field protected final readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

.field private screenSize:Landroid/graphics/Rect;

.field private singleCardBackup:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/amazon/kcp/reader/InfoCardController;->KEY_COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 91
    const-class v0, Lcom/amazon/kcp/reader/InfoCardController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/InfoCardController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/kindle/krx/providers/IProviderRegistry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/reader/ui/ReaderLayout;",
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXInfoCardItem;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXInfoCardItem;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;>;)V"
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->hasPopulated:Z

    const/4 v1, 0x4

    .line 116
    iput v1, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardCoverage:I

    .line 120
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->lastDisplayedOnBottom:Z

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->allowPartiallyHidden:Z

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->previousSelectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    .line 126
    iput-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->singleCardBackup:Landroid/os/Bundle;

    const-string v1, "title"

    .line 127
    iput-object v1, p0, Lcom/amazon/kcp/reader/InfoCardController;->CARD_TITLE:Ljava/lang/String;

    const-string v1, "allowPartiallyHidden"

    .line 128
    iput-object v1, p0, Lcom/amazon/kcp/reader/InfoCardController;->ALLOW_PARTIALLY_HIDDEN:Ljava/lang/String;

    .line 138
    iput-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 145
    iput-object p1, p0, Lcom/amazon/kcp/reader/InfoCardController;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 146
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/InfoCardController;->handler:Landroid/os/Handler;

    .line 147
    iput-object p2, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    .line 148
    iput-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->infoCardViewProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    .line 150
    invoke-direct {p0}, Lcom/amazon/kcp/reader/InfoCardController;->initialization()V

    return-void
.end method

.method private inflateContainerWidget()Z
    .locals 4

    .line 624
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    sget v1, Lcom/amazon/kindle/krl/R$id;->info_card_widget_stub:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 625
    iget-object v1, p0, Lcom/amazon/kcp/reader/InfoCardController;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    sget v2, Lcom/amazon/kindle/krl/R$id;->info_card_widget_stub_inflated:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 630
    iget-object v2, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidgetContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidgetContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2

    if-eq v2, v1, :cond_2

    .line 632
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidget:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->removeAllCards()V

    const/4 v2, 0x0

    .line 633
    iput-object v2, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidget:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    .line 634
    iput-object v2, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidgetContainer:Landroid/widget/FrameLayout;

    .line 635
    iput-object v2, p0, Lcom/amazon/kcp/reader/InfoCardController;->pageIndicator:Lcom/amazon/kcp/reader/ui/DotPageIndicator;

    .line 638
    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidgetContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    if-nez v2, :cond_7

    if-eqz v0, :cond_3

    .line 640
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidgetContainer:Landroid/widget/FrameLayout;

    goto :goto_0

    .line 642
    :cond_3
    iput-object v1, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidgetContainer:Landroid/widget/FrameLayout;

    .line 645
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidgetContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    .line 646
    sget v1, Lcom/amazon/kindle/krl/R$id;->info_card_widget_instance:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    iput-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidget:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    .line 647
    iput-object p0, v0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->delegate:Lcom/amazon/kcp/reader/ui/InfoCardContainer$InfoCardContainerDelegate;

    .line 650
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidgetContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidget:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x4

    .line 657
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return v3

    :cond_6
    :goto_1
    const/4 v0, 0x0

    return v0

    :cond_7
    return v3
.end method

.method private initialization()V
    .locals 2

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/InfoCardController;->setCards(Ljava/util/Collection;)V

    .line 168
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 169
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/reader/InfoCardController;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method private publishStateChangeEvent()V
    .locals 3

    .line 551
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidget:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->getCurrentCenterIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->getInfoCard(I)Lcom/amazon/kindle/krx/ui/InfoCardView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 553
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/ui/InfoCardView;->getNameForMetrics()Ljava/lang/String;

    move-result-object v1

    .line 555
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/InfoCardController;->isKLOInfoCard(Lcom/amazon/kindle/krx/ui/InfoCardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "KLOInfoCard"

    .line 559
    :cond_0
    invoke-static {v1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setContext(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidget:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->getCurrentCenterIndex()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setCurrentCardPosition(I)V

    .line 565
    invoke-static {}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->getContext()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "WikipediaInfoCard"

    .line 566
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TranslationInfoCard"

    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "QuickLookup"

    .line 568
    invoke-static {v0}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kcp/reader/InfoCardController$InfoCardsStateChangeEvent;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/amazon/kcp/reader/InfoCardController$InfoCardsStateChangeEvent;-><init>(Lcom/amazon/kcp/reader/InfoCardController;Z)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private restoreSavedInfoCard()V
    .locals 3

    .line 932
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->singleCardBackup:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "title"

    .line 933
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/InfoCardController;->singleCardBackup:Landroid/os/Bundle;

    const-string v2, "allowPartiallyHidden"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/InfoCardController;->showCardByTitle(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    .line 934
    iput-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->singleCardBackup:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method private saveInfoCard(Ljava/lang/String;Z)V
    .locals 2

    .line 920
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->singleCardBackup:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 921
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->singleCardBackup:Landroid/os/Bundle;

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->singleCardBackup:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    iget-object p1, p0, Lcom/amazon/kcp/reader/InfoCardController;->singleCardBackup:Landroid/os/Bundle;

    const-string v0, "allowPartiallyHidden"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected addCardToView(Lcom/amazon/kindle/krx/ui/InfoCardView;Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 3

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Have card for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/InfoCardView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 440
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 442
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/InfoCardView;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Infocards"

    const-string v2, "InfocardDisplayed"

    .line 443
    invoke-static {v1, v2, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 446
    :cond_1
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/krx/ui/InfoCardView;->setColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 447
    iget-object p2, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidget:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->addCard(Lcom/amazon/kindle/krx/ui/InfoCardView;)V

    .line 450
    iget-object p2, p0, Lcom/amazon/kcp/reader/InfoCardController;->onHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method protected clearCards()V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidget:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->removeAllCards()V

    const/4 v0, 0x0

    .line 580
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/InfoCardController;->setCards(Ljava/util/Collection;)V

    const/4 v0, 0x0

    .line 581
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->hasPopulated:Z

    const/4 v0, 0x1

    .line 582
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->allowPartiallyHidden:Z

    return-void
.end method

.method public dismissCards()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    :cond_0
    return-void
.end method

.method protected doesInfoCardFitOnScreen()Z
    .locals 4

    .line 677
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->screenSize:Landroid/graphics/Rect;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidget:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    if-eqz v0, :cond_1

    .line 678
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->getFullCardSize()Landroid/graphics/Point;

    move-result-object v0

    .line 679
    iget-object v2, p0, Lcom/amazon/kcp/reader/InfoCardController;->screenSize:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/amazon/kcp/reader/InfoCardController;->screenSize:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-lt v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected filterAndAddCard(Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 4

    .line 531
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardsSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/ui/InfoCardView;

    .line 532
    invoke-virtual {v1}, Lcom/amazon/kindle/krx/ui/InfoCardView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 535
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidget:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->getInfoCardCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 536
    iget-object v2, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidget:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->getInfoCard(I)Lcom/amazon/kindle/krx/ui/InfoCardView;

    move-result-object v2

    .line 537
    invoke-virtual {v2}, Lcom/amazon/kindle/krx/ui/InfoCardView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 540
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidget:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->removeAllCards()V

    .line 543
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/amazon/kcp/reader/InfoCardController;->addCardToView(Lcom/amazon/kindle/krx/ui/InfoCardView;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method protected getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/kindle/krx/ui/ColorMode;
    .locals 1

    .line 753
    sget-object v0, Lcom/amazon/kcp/reader/InfoCardController$3;->$SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 764
    sget-object p1, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    return-object p1

    .line 757
    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/ui/ColorMode;->NIGHT:Lcom/amazon/kindle/krx/ui/ColorMode;

    return-object p1

    .line 755
    :cond_1
    sget-object p1, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    return-object p1
.end method

.method public getInfoCardContainer()Lcom/amazon/kcp/reader/ui/InfoCardContainer;
    .locals 1

    .line 769
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidget:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    return-object v0
.end method

.method public getIsShown()Z
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidgetContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    return-object v0
.end method

.method public hasCards()Z
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardsSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hideCards()V
    .locals 3

    .line 592
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidgetContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    .line 595
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 597
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->lastDisplayedOnBottom:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 598
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/reader/InfoCardController;->setPageDrawableFooterVisibility(Z)V

    goto :goto_0

    .line 600
    :cond_1
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/reader/InfoCardController;->setPageDrawableTitleVisibility(Z)V

    .line 603
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setSelectionAccessibilityButtonVisibility(I)V

    .line 605
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->pageIndicator:Lcom/amazon/kcp/reader/ui/DotPageIndicator;

    if-eqz v0, :cond_2

    .line 606
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 609
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getVirtualViewHierarchyManager()Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    move-result-object v0

    .line 610
    invoke-virtual {v0, v2}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->setHoverGesturesDisabled(Z)V

    .line 612
    iput v1, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardCoverage:I

    .line 614
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kcp/reader/InfoCardController$InfoCardsStateChangeEvent;

    invoke-direct {v1, p0, v2}, Lcom/amazon/kcp/reader/InfoCardController$InfoCardsStateChangeEvent;-><init>(Lcom/amazon/kcp/reader/InfoCardController;Z)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method protected inflateCards()V
    .locals 5

    .line 408
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->infoCardViewProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/InfoCardController;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/InfoCardController;->setCards(Ljava/util/Collection;)V

    goto :goto_2

    .line 411
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 412
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookSelection()Lcom/amazon/kindle/krx/content/IContentSelection;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 414
    iget-object v1, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 416
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 417
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/ui/AbstractKRXInfoCardItem;

    .line 418
    iget-object v4, p0, Lcom/amazon/kcp/reader/InfoCardController;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/amazon/kindle/krx/ui/AbstractKRXInfoCardItem;->getInfoCardView(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/InfoCardView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 423
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 426
    :cond_3
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/reader/InfoCardController;->setCards(Ljava/util/Collection;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public infoCardContainerWillScrollToIndex(Lcom/amazon/kcp/reader/ui/InfoCardContainer;I)V
    .locals 4

    .line 774
    iget-object p1, p0, Lcom/amazon/kcp/reader/InfoCardController;->pageIndicator:Lcom/amazon/kcp/reader/ui/DotPageIndicator;

    if-eqz p1, :cond_0

    .line 775
    invoke-virtual {p1, p2}, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->setSelectedItem(I)V

    .line 778
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "index"

    invoke-static {v0, p1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 779
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "InfoCardController"

    const-string v3, "MovedToDifferentCard"

    invoke-virtual {v0, v2, v3, v1, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    .line 781
    invoke-static {}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->getCurrentCardPosition()I

    move-result p1

    .line 783
    invoke-static {p2}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setCurrentCardPosition(I)V

    .line 784
    sget-object v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;->SWIPE:Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    invoke-static {v0}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setEntryPoint(Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;)V

    .line 785
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidget:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->getInfoCard(I)Lcom/amazon/kindle/krx/ui/InfoCardView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 787
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/InfoCardController;->isKLOInfoCard(Lcom/amazon/kindle/krx/ui/InfoCardView;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "KLOInfoCard"

    .line 788
    invoke-static {v0}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setContext(Ljava/lang/String;)V

    goto :goto_0

    .line 790
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/ui/InfoCardView;->getNameForMetrics()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setContext(Ljava/lang/String;)V

    :goto_0
    if-eq p1, p2, :cond_2

    const-string p1, "QuickLookup"

    .line 795
    invoke-static {p1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected infoCardsShouldBeVisible(ZZ)Z
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->isCurrentSelectionQuickHighlightable()Z

    move-result v0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isKLOInfoCard(Lcom/amazon/kindle/krx/ui/InfoCardView;)Z
    .locals 1

    .line 827
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.amazon.klo.infocard.KLOInfoCardView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isLastDisplayedOnBottom()Z
    .locals 1

    .line 670
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->lastDisplayedOnBottom:Z

    return v0
.end method

.method protected modifyViewsForPlacement(Z)V
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->pageIndicator:Lcom/amazon/kcp/reader/ui/DotPageIndicator;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0x50

    goto :goto_0

    :cond_0
    const/16 v0, 0x30

    .line 694
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/InfoCardController;->pageIndicator:Lcom/amazon/kcp/reader/ui/DotPageIndicator;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    or-int/lit8 v0, v0, 0x1

    .line 695
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 696
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->pageIndicator:Lcom/amazon/kcp/reader/ui/DotPageIndicator;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 701
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/InfoCardController;->setPageDrawableFooterVisibility(Z)V

    goto :goto_1

    .line 703
    :cond_2
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/InfoCardController;->setPageDrawableTitleVisibility(Z)V

    .line 706
    :goto_1
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/InfoCardController;->lastDisplayedOnBottom:Z

    return-void
.end method

.method public onActivityDestroyed()V
    .locals 1

    .line 199
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onInfoCardsFullyShownEvent(Lcom/amazon/kcp/reader/ui/InfoCardContainer$InfoCardsFullyShownEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 802
    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/InfoCardContainer$InfoCardsFullyShownEvent;->container:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidget:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 806
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "InfoCardController"

    const-string v2, "LongLookupSwipeUp"

    invoke-virtual {p1, v1, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 808
    iget-object p1, p0, Lcom/amazon/kcp/reader/InfoCardController;->pageIndicator:Lcom/amazon/kcp/reader/ui/DotPageIndicator;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 810
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 811
    iget-object p1, p0, Lcom/amazon/kcp/reader/InfoCardController;->pageIndicator:Lcom/amazon/kcp/reader/ui/DotPageIndicator;

    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidget:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->getCurrentCenterIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->setSelectedItem(I)V

    .line 814
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 816
    iget-object p1, p0, Lcom/amazon/kcp/reader/InfoCardController;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setSelectionAccessibilityButtonVisibility(I)V

    :cond_2
    return-void
.end method

.method public onObjectSelectionModelEvent(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getPublisher()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/InfoCardController;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eq v0, v1, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getType()Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->STATE_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/amazon/kcp/reader/InfoCardController;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 188
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne p1, v0, :cond_1

    .line 189
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->INFO_CARDS_DRAW:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/InfoCardController;->updateWidgetVisibility()V

    return-void
.end method

.method public onOrientationChanged()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidget:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->getInfoCardCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidget:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->getInfoCard(I)Lcom/amazon/kindle/krx/ui/InfoCardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/ui/InfoCardView;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/InfoCardController;->allowPartiallyHidden:Z

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/reader/InfoCardController;->saveInfoCard(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected populateCards()V
    .locals 8

    .line 358
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->hasPopulated:Z

    if-eqz v0, :cond_0

    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->GRAPHICAL:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    if-ne v0, v1, :cond_1

    return-void

    .line 368
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InfoCardControllerTimer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kcp/reader/InfoCardController;->KEY_COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "InfoCardController.populateCards()"

    .line 371
    invoke-static {v3, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 372
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/InfoCardController;->inflateCards()V

    const/4 v4, 0x0

    .line 373
    invoke-static {v3, v4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 374
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/InfoCardController;->hasPopulated:Z

    .line 377
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$integer;->infocard_word_count_to_hide_cards:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 378
    iget-object v3, p0, Lcom/amazon/kcp/reader/InfoCardController;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kcp/util/Utils;->countWordsInString(Ljava/lang/String;)I

    move-result v4

    :goto_0
    if-ge v4, v2, :cond_3

    const-string v3, "ShortLookup"

    goto :goto_1

    :cond_3
    const-string v3, "LongLookup"

    .line 380
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v5

    sget-object v6, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v7, "InfoCardController"

    invoke-virtual {v5, v7, v3, v6}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 382
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->getMetricElapsedTime(Ljava/lang/String;)J

    move-result-wide v5

    if-ge v4, v2, :cond_4

    const-string v0, "ShowInfoCardsShortSelection"

    goto :goto_2

    :cond_4
    const-string v0, "ShowInfoCardsLongSelection"

    .line 386
    :goto_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 387
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Timer"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v3, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardsSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v3}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CardCount"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v3, v1, v0, v4, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    .line 392
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->onHoverListener:Landroid/view/View$OnHoverListener;

    if-nez v0, :cond_5

    .line 393
    new-instance v0, Lcom/amazon/kcp/reader/InfoCardController$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/InfoCardController$2;-><init>(Lcom/amazon/kcp/reader/InfoCardController;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->onHoverListener:Landroid/view/View$OnHoverListener;

    :cond_5
    return-void
.end method

.method public setCardCoverage(I)V
    .locals 4

    .line 847
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 848
    iget v1, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardCoverage:I

    if-eq v1, p1, :cond_4

    if-eqz v0, :cond_4

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    .line 850
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 854
    :cond_0
    iput p1, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardCoverage:I

    .line 857
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    const/4 v1, 0x1

    .line 863
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidget:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    iput-boolean v0, p1, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->isOnBottom:Z

    .line 864
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/InfoCardController;->modifyViewsForPlacement(Z)V

    if-eqz v1, :cond_3

    .line 867
    iget-object p1, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidget:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    invoke-virtual {p1, v2}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->partiallyHide(Z)V

    .line 868
    iget-object p1, p0, Lcom/amazon/kcp/reader/InfoCardController;->pageIndicator:Lcom/amazon/kcp/reader/ui/DotPageIndicator;

    if-eqz p1, :cond_4

    const/16 v0, 0x8

    .line 869
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 872
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidget:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->fullyShow(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected setCards(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/InfoCardView;",
            ">;)V"
        }
    .end annotation

    .line 250
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 249
    invoke-static {p1, v0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Suppliers;->ofInstance(Ljava/lang/Object;)Lcom/google/common/base/Supplier;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardsSupplier:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public setObjectSelectionModel(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/amazon/kcp/reader/InfoCardController;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    return-void
.end method

.method protected setPageDrawableFooterVisibility(Z)V
    .locals 2

    .line 714
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-nez v0, :cond_0

    return-void

    .line 718
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 719
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 721
    invoke-virtual {v0, p1, v1}, Lcom/amazon/android/docviewer/KindleDocView;->changeFooterVisibility(ZZ)V

    :cond_2
    return-void
.end method

.method protected setPageDrawableTitleVisibility(Z)V
    .locals 2

    .line 730
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-nez v0, :cond_0

    return-void

    .line 735
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 741
    :cond_1
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 743
    invoke-virtual {v0, p1, v1}, Lcom/amazon/android/docviewer/KindleDocView;->changeHeaderVisibility(ZZ)V

    :cond_2
    return-void
.end method

.method public shouldAllowPartiallyHidden()Z
    .locals 1

    .line 882
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->allowPartiallyHidden:Z

    return v0
.end method

.method protected showAllCards()V
    .locals 4

    .line 457
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/InfoCardController;->populateCards()V

    .line 458
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/InfoCardController;->hasCards()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 463
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getVirtualViewHierarchyManager()Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 466
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->setHoverGesturesDisabled(Z)V

    .line 470
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/DocViewerUtils;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    .line 471
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/InfoCardController;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v1

    .line 473
    iget-object v2, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardsSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/ui/InfoCardView;

    .line 474
    invoke-virtual {p0, v3, v1}, Lcom/amazon/kcp/reader/InfoCardController;->addCardToView(Lcom/amazon/kindle/krx/ui/InfoCardView;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    goto :goto_0

    .line 477
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidgetContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 478
    iget-object v1, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidgetContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 479
    iget-object v1, p0, Lcom/amazon/kcp/reader/InfoCardController;->pageIndicator:Lcom/amazon/kcp/reader/ui/DotPageIndicator;

    if-eqz v1, :cond_3

    .line 480
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 481
    iget-object v1, p0, Lcom/amazon/kcp/reader/InfoCardController;->pageIndicator:Lcom/amazon/kcp/reader/ui/DotPageIndicator;

    iget-object v2, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidget:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->getCurrentCenterIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->setSelectedItem(I)V

    .line 482
    iget-object v1, p0, Lcom/amazon/kcp/reader/InfoCardController;->pageIndicator:Lcom/amazon/kcp/reader/ui/DotPageIndicator;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    .line 483
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->pageIndicator:Lcom/amazon/kcp/reader/ui/DotPageIndicator;

    iget-object v1, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardsSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->setItemCount(I)V

    .line 488
    :cond_3
    sget-object v0, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;->HIGHLIGHT:Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    invoke-static {v0}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setEntryPoint(Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;)V

    .line 489
    invoke-direct {p0}, Lcom/amazon/kcp/reader/InfoCardController;->publishStateChangeEvent()V

    return-void
.end method

.method public showCardByTitle(Ljava/lang/String;Z)V
    .locals 1

    .line 498
    iput-boolean p2, p0, Lcom/amazon/kcp/reader/InfoCardController;->allowPartiallyHidden:Z

    .line 499
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/InfoCardController;->populateCards()V

    .line 500
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/InfoCardController;->hasCards()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 505
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 507
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getVirtualViewHierarchyManager()Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    move-result-object p2

    const/4 v0, 0x1

    .line 508
    invoke-virtual {p2, v0}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->setHoverGesturesDisabled(Z)V

    .line 512
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/DocViewerUtils;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object p2

    .line 513
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/reader/InfoCardController;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object p2

    .line 515
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/InfoCardController;->filterAndAddCard(Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 517
    iget-object p1, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidgetContainer:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 518
    iget-object p1, p0, Lcom/amazon/kcp/reader/InfoCardController;->cardWidgetContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 519
    iget-object p1, p0, Lcom/amazon/kcp/reader/InfoCardController;->pageIndicator:Lcom/amazon/kcp/reader/ui/DotPageIndicator;

    if-eqz p1, :cond_2

    const/16 p2, 0x8

    .line 520
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 522
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/reader/InfoCardController;->publishStateChangeEvent()V

    return-void
.end method

.method protected updateWidgetVisibility()V
    .locals 5

    .line 257
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz v0, :cond_0

    .line 261
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/amazon/kcp/reader/InfoCardController;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v1

    .line 263
    iget-object v2, p0, Lcom/amazon/kcp/reader/InfoCardController;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v2

    .line 264
    iget-object v3, p0, Lcom/amazon/kcp/reader/InfoCardController;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/amazon/kcp/reader/InfoCardController$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/amazon/kcp/reader/InfoCardController$1;-><init>(Lcom/amazon/kcp/reader/InfoCardController;Ljava/lang/String;Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;Ljava/util/Vector;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected updateWidgetVisibility(Ljava/lang/String;Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;Ljava/util/Vector;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_b

    .line 280
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 281
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/debug/InfoCardUtils;->isInfoCardsEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 285
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/reader/InfoCardController;->inflateContainerWidget()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 294
    :cond_2
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 299
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$bool;->rebuild_info_cards_on_orientation_change:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 300
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v1

    and-int/2addr v0, p1

    :cond_4
    if-eqz p3, :cond_5

    .line 307
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result p1

    if-lez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 308
    :goto_2
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kcp/reader/InfoCardController;->infoCardsShouldBeVisible(ZZ)Z

    move-result p1

    .line 310
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/InfoCardController;->doesInfoCardFitOnScreen()Z

    move-result p3

    if-nez p3, :cond_6

    const/4 p1, 0x0

    const/4 v0, 0x0

    :cond_6
    if-eqz p1, :cond_7

    .line 315
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/InfoCardController;->getIsShown()Z

    move-result p1

    if-nez p1, :cond_7

    .line 316
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/InfoCardController;->showAllCards()V

    goto :goto_3

    :cond_7
    if-nez v0, :cond_9

    .line 318
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/InfoCardController;->hasCards()Z

    move-result p1

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/amazon/kcp/reader/InfoCardController;->hasPopulated:Z

    if-eqz p1, :cond_9

    :cond_8
    const-string p1, "InfoCardController.clearAndHideCards()"

    .line 319
    invoke-static {p1, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 321
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/InfoCardController;->clearCards()V

    .line 322
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/InfoCardController;->hideCards()V

    .line 323
    invoke-static {p1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 330
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/amazon/kcp/reader/InfoCardController;->previousSelectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    sget-object p3, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne p1, p3, :cond_a

    if-eqz v0, :cond_a

    .line 331
    invoke-direct {p0}, Lcom/amazon/kcp/reader/InfoCardController;->restoreSavedInfoCard()V

    .line 333
    :cond_a
    iput-object p2, p0, Lcom/amazon/kcp/reader/InfoCardController;->previousSelectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    :cond_b
    :goto_4
    return-void
.end method
