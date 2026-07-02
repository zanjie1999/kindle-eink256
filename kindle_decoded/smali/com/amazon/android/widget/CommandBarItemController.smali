.class public Lcom/amazon/android/widget/CommandBarItemController;
.super Ljava/lang/Object;
.source "CommandBarItemController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/widget/CommandBarItemController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommandBarItemController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommandBarItemController.kt\ncom/amazon/android/widget/CommandBarItemController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,533:1\n1819#2,2:534\n1819#2,2:536\n1819#2,2:538\n734#2:540\n825#2,2:541\n1819#2,2:543\n734#2:545\n825#2,2:546\n1819#2,2:548\n734#2:550\n825#2,2:551\n1819#2,2:553\n1819#2:555\n1819#2,2:556\n1820#2:558\n304#2,8:559\n734#2:567\n825#2,2:568\n1013#2:570\n318#2,7:571\n1819#2,2:578\n*E\n*S KotlinDebug\n*F\n+ 1 CommandBarItemController.kt\ncom/amazon/android/widget/CommandBarItemController\n*L\n199#1,2:534\n207#1,2:536\n212#1,2:538\n253#1:540\n253#1,2:541\n254#1,2:543\n264#1:545\n264#1,2:546\n265#1,2:548\n283#1:550\n283#1,2:551\n284#1,2:553\n299#1:555\n300#1,2:556\n299#1:558\n369#1,8:559\n406#1:567\n406#1,2:568\n406#1:570\n435#1,7:571\n444#1,2:578\n*E\n"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final FLASHCARDS_BUTTON:Ljava/lang/String;

.field private final KLO_CLASSNAME:Ljava/lang/String;

.field private final NOTEBOOK_BUTTON:Ljava/lang/String;

.field private final SHOP_KINDLE_STORE_BUTTON:Ljava/lang/String;

.field private final XRAY_BUTTON:Ljava/lang/String;

.field private cachedEndItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/android/widget/items/IPrioritizedWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cachedLegacyWrappers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private cachedStartItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/android/widget/items/IPrioritizedWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation
.end field

.field private commandBar:Lcom/amazon/android/widget/CommandBar;

.field private final endCommandBarItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/android/widget/items/IPrioritizedWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation
.end field

.field private final neutronUtil:Lcom/amazon/kcp/debug/INeutronUtil;

.field private final objectFactory:Lcom/amazon/kcp/application/IKindleObjectFactory;

.field private final onItemClickListener:Lcom/amazon/android/widget/CommandBarItemController$onItemClickListener$1;

.field private final startCommandBarItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/android/widget/items/IPrioritizedWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/android/widget/CommandBarItemController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/android/widget/CommandBarItemController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 530
    const-class v0, Lcom/amazon/android/widget/CommandBarItemController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/widget/CommandBarItemController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/amazon/android/widget/CommandBarItemController;-><init>(Lcom/amazon/kcp/debug/INeutronUtil;Lcom/amazon/kcp/application/IKindleObjectFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/debug/INeutronUtil;Lcom/amazon/kcp/application/IKindleObjectFactory;)V
    .locals 1

    const-string/jumbo v0, "neutronUtil"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "objectFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/CommandBarItemController;->neutronUtil:Lcom/amazon/kcp/debug/INeutronUtil;

    iput-object p2, p0, Lcom/amazon/android/widget/CommandBarItemController;->objectFactory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    const-string p1, "NotebookButton"

    .line 54
    iput-object p1, p0, Lcom/amazon/android/widget/CommandBarItemController;->NOTEBOOK_BUTTON:Ljava/lang/String;

    const-string p1, "X-Ray"

    .line 55
    iput-object p1, p0, Lcom/amazon/android/widget/CommandBarItemController;->XRAY_BUTTON:Ljava/lang/String;

    const-string p1, "ShopInStoreReaderBookAction"

    .line 56
    iput-object p1, p0, Lcom/amazon/android/widget/CommandBarItemController;->SHOP_KINDLE_STORE_BUTTON:Ljava/lang/String;

    const-string p1, "FlashcardsButton"

    .line 57
    iput-object p1, p0, Lcom/amazon/android/widget/CommandBarItemController;->FLASHCARDS_BUTTON:Ljava/lang/String;

    const-string p1, "com.amazon.klo"

    .line 58
    iput-object p1, p0, Lcom/amazon/android/widget/CommandBarItemController;->KLO_CLASSNAME:Ljava/lang/String;

    .line 59
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/CommandBarItemController;->startCommandBarItems:Ljava/util/Set;

    .line 60
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/CommandBarItemController;->endCommandBarItems:Ljava/util/Set;

    .line 65
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/CommandBarItemController;->cachedLegacyWrappers:Ljava/util/Map;

    .line 72
    new-instance p1, Lcom/amazon/android/widget/CommandBarItemController$onItemClickListener$1;

    invoke-direct {p1, p0}, Lcom/amazon/android/widget/CommandBarItemController$onItemClickListener$1;-><init>(Lcom/amazon/android/widget/CommandBarItemController;)V

    iput-object p1, p0, Lcom/amazon/android/widget/CommandBarItemController;->onItemClickListener:Lcom/amazon/android/widget/CommandBarItemController$onItemClickListener$1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kcp/debug/INeutronUtil;Lcom/amazon/kcp/application/IKindleObjectFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 51
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 52
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    const-string p3, "Utils.getFactory()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/widget/CommandBarItemController;-><init>(Lcom/amazon/kcp/debug/INeutronUtil;Lcom/amazon/kcp/application/IKindleObjectFactory;)V

    return-void
.end method

.method public static final synthetic access$emitInBookChromeMetrics(Lcom/amazon/android/widget/CommandBarItemController;Lcom/amazon/android/widget/AbstractActionWidgetItem;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/amazon/android/widget/CommandBarItemController;->emitInBookChromeMetrics(Lcom/amazon/android/widget/AbstractActionWidgetItem;)V

    return-void
.end method

.method public static final synthetic access$getCommandBar$p(Lcom/amazon/android/widget/CommandBarItemController;)Lcom/amazon/android/widget/CommandBar;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/android/widget/CommandBarItemController;->commandBar:Lcom/amazon/android/widget/CommandBar;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/amazon/android/widget/CommandBarItemController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final emitInBookChromeMetrics(Lcom/amazon/android/widget/AbstractActionWidgetItem;)V
    .locals 5

    .line 478
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBarItemController;->commandBar:Lcom/amazon/android/widget/CommandBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 479
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/android/widget/AbstractActionWidgetItem;->getButtonIdentifier()Ljava/lang/String;

    move-result-object v2

    const-string v3, "item.buttonIdentifier"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    sget-object v3, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->CHROME:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    .line 483
    iget-object v4, p0, Lcom/amazon/android/widget/CommandBarItemController;->commandBar:Lcom/amazon/android/widget/CommandBar;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/amazon/android/widget/CommandBar;->getPopupButtonItems()Ljava/util/List;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    if-eqz v4, :cond_2

    .line 484
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 485
    sget-object v3, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->OVERFLOW_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    :cond_2
    if-eqz v0, :cond_3

    .line 489
    sget v4, Lcom/amazon/kindle/krl/R$string;->menu_item_recommend_this_book_identifier:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v1

    :goto_2
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_RECOMMEND_THIS_BOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    goto/16 :goto_6

    :cond_4
    if-eqz v0, :cond_5

    .line 490
    sget v4, Lcom/amazon/kindle/krl/R$string;->menu_item_share_progress_identifier:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    move-object v4, v1

    :goto_3
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_SHARE_PROGRESS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    goto/16 :goto_6

    :cond_6
    if-eqz v0, :cond_7

    .line 491
    sget v4, Lcom/amazon/kindle/krl/R$string;->menu_item_word_runner_identifier:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_7
    move-object v4, v1

    :goto_4
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_WORD_RUNNER:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    goto :goto_6

    :cond_8
    if-eqz v0, :cond_9

    .line 492
    sget v4, Lcom/amazon/kindle/krl/R$string;->menu_item_word_wise_identifier:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_9
    move-object v0, v1

    :goto_5
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_WORDWISE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    goto :goto_6

    .line 493
    :cond_a
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBarItemController;->FLASHCARDS_BUTTON:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_FLASHCARDS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    goto :goto_6

    .line 494
    :cond_b
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBarItemController;->NOTEBOOK_BUTTON:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_NOTEBOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    goto :goto_6

    .line 495
    :cond_c
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBarItemController;->SHOP_KINDLE_STORE_BUTTON:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_SHOP_KINDLE_STORE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    goto :goto_6

    .line 496
    :cond_d
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBarItemController;->XRAY_BUTTON:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/android/widget/CommandBarItemController;->KLO_CLASSNAME:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v4, 0x2

    invoke-static {p1, v0, v2, v4, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 497
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_KLO:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    goto :goto_6

    .line 499
    :cond_e
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_XRAY:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    goto :goto_6

    :cond_f
    move-object p1, v1

    :goto_6
    if-eqz p1, :cond_10

    const/4 v0, 0x4

    .line 505
    invoke-static {v3, p1, v1, v0, v1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics$default(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;ILjava/lang/Object;)V

    :cond_10
    return-void
.end method

.method private final fetchKRXButtons(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/content/IBook;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Ljava/util/Set<",
            "Lcom/amazon/android/widget/items/IPrioritizedWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;)V"
        }
    .end annotation

    .line 282
    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p2

    const-string/jumbo v0, "sdk.readerUIManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getActionBarWidgetItems()Ljava/util/Collection;

    move-result-object p2

    const-string/jumbo v0, "sdk.readerUIManager.actionBarWidgetItems"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 551
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    .line 283
    invoke-virtual {v2, p1, p3}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;->getDisplayPosition(Landroid/content/Context;Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;->END:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 553
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    .line 286
    iget-object v1, p0, Lcom/amazon/android/widget/CommandBarItemController;->neutronUtil:Lcom/amazon/kcp/debug/INeutronUtil;

    invoke-interface {v1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 287
    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 288
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;->getDisplayPreference(Landroid/content/Context;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPreference;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPreference;->OVERFLOW_ONLY:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPreference;

    if-eq v1, v2, :cond_3

    .line 289
    :cond_4
    new-instance v1, Lcom/amazon/android/widget/items/KRXCommandActionWidgetItemWrapper;

    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0, p3}, Lcom/amazon/android/widget/items/KRXCommandActionWidgetItemWrapper;-><init>(Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;Lcom/amazon/kindle/krx/content/IBook;)V

    invoke-interface {p4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 294
    :cond_5
    iget-object p2, p0, Lcom/amazon/android/widget/CommandBarItemController;->neutronUtil:Lcom/amazon/kcp/debug/INeutronUtil;

    invoke-interface {p2}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result p2

    if-nez p2, :cond_8

    .line 295
    :cond_6
    new-instance p2, Lcom/amazon/android/widget/CommandBarItemController$fetchKRXButtons$actionContext$1;

    invoke-direct {p2, p1, p3}, Lcom/amazon/android/widget/CommandBarItemController$fetchKRXButtons$actionContext$1;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)V

    .line 299
    const-class p1, Lcom/amazon/kindle/krx/reader/ReaderBookActionFactory;

    invoke-static {p1}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object p1

    const-string p3, "Discoveries.of(ReaderBoo\u2026ctionFactory::class.java)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/krx/reader/ReaderBookActionFactory;

    .line 300
    invoke-interface {p3, p2}, Lcom/amazon/kindle/krx/action/ActionFactory;->createActions(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p3

    const-string v0, "it.createActions(actionContext)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/reader/ReaderBookAction;

    .line 301
    new-instance v1, Lcom/amazon/android/widget/ReaderBookActionWrapper;

    const-string v2, "action"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/amazon/android/widget/ReaderBookActionWrapper;-><init>(Lcom/amazon/kindle/krx/reader/ReaderBookAction;)V

    invoke-interface {p4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    return-void
.end method

.method private final fetchLegacyButtons(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/content/IBook;Ljava/util/Set;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Ljava/util/Set<",
            "Lcom/amazon/android/widget/items/IPrioritizedWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 191
    invoke-interface/range {p2 .. p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    const-string/jumbo v1, "sdk.readerUIManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getActionButtonProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 192
    invoke-interface/range {p2 .. p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCustomActionButtonProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v8

    .line 193
    invoke-static {}, Lcom/amazon/kcp/util/DocViewerUtils;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/ui/ColorModeUtil;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    :goto_0
    move-object v9, v1

    .line 194
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 196
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v1

    const-string v11, "button.id"

    const-string v2, "actionButtons"

    const/4 v12, 0x1

    if-eqz v1, :cond_2

    const/16 v1, 0x26ac

    .line 199
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/16 v3, 0x26ac

    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/amazon/kindle/krx/ui/IButton;

    .line 200
    invoke-interface {v14}, Lcom/amazon/kindle/krx/ui/IButton;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v12

    if-eqz v0, :cond_1

    add-int/lit8 v15, v3, 0x1

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p3

    move-object/from16 v4, p1

    move-object v5, v9

    .line 201
    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/widget/CommandBarItemController;->wrapLegacyButton(Lcom/amazon/kindle/krx/ui/IButton;Lcom/amazon/kindle/krx/content/IBook;ILandroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;)Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {v14}, Lcom/amazon/kindle/krx/ui/IButton;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v15

    goto :goto_1

    .line 207
    :cond_2
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/ui/IButton;

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping button for class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v0, "customActionButtons"

    .line 212
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/amazon/kindle/krx/ui/IActionButton;

    .line 213
    invoke-interface {v13}, Lcom/amazon/kindle/krx/ui/IButton;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v12

    if-eqz v0, :cond_4

    .line 214
    invoke-interface {v13}, Lcom/amazon/kindle/krx/ui/IActionButton;->getPriority()I

    move-result v3

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p3

    move-object/from16 v4, p1

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/widget/CommandBarItemController;->wrapLegacyButton(Lcom/amazon/kindle/krx/ui/IButton;Lcom/amazon/kindle/krx/content/IBook;ILandroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;)Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-interface {v13}, Lcom/amazon/kindle/krx/ui/IButton;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    return-void
.end method

.method private final getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 156
    invoke-direct {p0}, Lcom/amazon/android/widget/CommandBarItemController;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final getPrioritizedBarItems(Lcom/amazon/android/widget/CommandBar$Position;Lcom/amazon/kindle/krx/content/IBook;Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/widget/CommandBar$Position;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/android/widget/items/IPrioritizedWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation

    .line 401
    sget-object v0, Lcom/amazon/android/widget/CommandBarItemController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 403
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBarItemController;->endCommandBarItems:Ljava/util/Set;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBarItemController;->startCommandBarItems:Ljava/util/Set;

    .line 567
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 568
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;

    .line 406
    invoke-interface {v5, p2}, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;->isVisible(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 570
    :cond_3
    new-instance v0, Lcom/amazon/android/widget/CommandBarItemController$getPrioritizedBarItems$$inlined$sortedBy$1;

    invoke-direct {v0, p2}, Lcom/amazon/android/widget/CommandBarItemController$getPrioritizedBarItems$$inlined$sortedBy$1;-><init>(Lcom/amazon/kindle/krx/content/IBook;)V

    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 407
    sget-object v3, Lcom/amazon/android/widget/CommandBarItemController$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

    if-eq p1, v2, :cond_6

    if-ne p1, v1, :cond_5

    .line 414
    invoke-direct {p0, p2}, Lcom/amazon/android/widget/CommandBarItemController;->shouldModifyBookmarkPosition(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 415
    iget-object p1, p0, Lcom/amazon/android/widget/CommandBarItemController;->neutronUtil:Lcom/amazon/kcp/debug/INeutronUtil;

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 416
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$integer;->command_bar_visible_end_item_count_newtron_phase_1:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    goto :goto_2

    .line 418
    :cond_4
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$integer;->command_bar_end_item_count:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 420
    :goto_2
    invoke-direct {p0, v0, p1, p3}, Lcom/amazon/android/widget/CommandBarItemController;->modifyBookmarkPosition(Ljava/util/List;ILandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto :goto_3

    .line 414
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_6
    :goto_3
    return-object v0
.end method

.method private final getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBarItemController;->objectFactory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    return-object v0
.end method

.method private final getWidgetItemFromButtonIdentifier(Ljava/lang/String;)Lcom/amazon/android/widget/IWidgetItem;
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBarItemController;->endCommandBarItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;

    .line 382
    instance-of v2, v1, Lcom/amazon/android/widget/items/KRXCommandActionWidgetItemWrapper;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/amazon/android/widget/items/KRXCommandActionWidgetItemWrapper;

    invoke-virtual {v2}, Lcom/amazon/android/widget/items/KRXCommandActionWidgetItemWrapper;->getItem()Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;->getButtonIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 383
    :cond_1
    instance-of v2, v1, Lcom/amazon/android/widget/AbstractActionWidgetItem;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/amazon/android/widget/AbstractActionWidgetItem;

    invoke-virtual {v2}, Lcom/amazon/android/widget/AbstractActionWidgetItem;->getButtonIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private final modifyBookmarkPosition(Ljava/util/List;ILandroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/android/widget/items/IPrioritizedWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/android/widget/items/IPrioritizedWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation

    .line 572
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 573
    check-cast v3, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;

    .line 435
    instance-of v3, v3, Lcom/amazon/android/widget/items/ToggleBookmarkCommandItem;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-ne v2, v4, :cond_2

    return-object p1

    .line 578
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;

    .line 445
    instance-of v7, v4, Lcom/amazon/android/widget/ICommandItemPresenter;

    if-eqz v7, :cond_3

    check-cast v4, Lcom/amazon/android/widget/ICommandItemPresenter;

    invoke-interface {v4, p3}, Lcom/amazon/android/widget/ICommandItemPresenter;->getDisplayPreference(Landroid/content/Context;)Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    move-result-object v4

    goto :goto_3

    :cond_3
    sget-object v4, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->NO_PREFERENCE:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    :goto_3
    const-string v7, "if (it is ICommandItemPr\u2026ntext) else NO_PREFERENCE"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    sget-object v7, Lcom/amazon/android/widget/CommandBarItemController$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v7, v4

    if-eq v4, v6, :cond_5

    if-eq v4, v5, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-lt v1, p2, :cond_8

    if-ne v1, p2, :cond_7

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    sub-int/2addr p2, v5

    goto :goto_5

    :cond_8
    :goto_4
    add-int/lit8 p2, v1, -0x1

    .line 460
    :goto_5
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 461
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;

    .line 462
    invoke-interface {p1, p2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p1
.end method

.method public static synthetic refreshCommandBarIcon$default(Lcom/amazon/android/widget/CommandBarItemController;Lcom/amazon/android/widget/CommandBar;Lcom/amazon/android/widget/IWidgetItem;Lcom/amazon/android/widget/CommandBar$Position;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 346
    sget-object p3, Lcom/amazon/android/widget/CommandBar$Position;->END:Lcom/amazon/android/widget/CommandBar$Position;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/android/widget/CommandBarItemController;->refreshCommandBarIcon(Lcom/amazon/android/widget/CommandBar;Lcom/amazon/android/widget/IWidgetItem;Lcom/amazon/android/widget/CommandBar$Position;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: refreshCommandBarIcon"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic refreshCommandBarIcon$default(Lcom/amazon/android/widget/CommandBarItemController;Lcom/amazon/android/widget/CommandBar;Ljava/lang/String;Lcom/amazon/android/widget/CommandBar$Position;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 359
    sget-object p3, Lcom/amazon/android/widget/CommandBar$Position;->END:Lcom/amazon/android/widget/CommandBar$Position;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/android/widget/CommandBarItemController;->refreshCommandBarIcon(Lcom/amazon/android/widget/CommandBar;Ljava/lang/String;Lcom/amazon/android/widget/CommandBar$Position;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: refreshCommandBarIcon"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final shouldModifyBookmarkPosition(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 473
    invoke-direct {p0}, Lcom/amazon/android/widget/CommandBarItemController;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AUDIBLE_PLAYER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private final wrapLegacyButton(Lcom/amazon/kindle/krx/ui/IButton;Lcom/amazon/kindle/krx/content/IBook;ILandroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;)Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "I",
            "Landroid/content/Context;",
            "Lcom/amazon/kindle/krx/ui/ColorMode;",
            ")",
            "Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBarItemController;->cachedLegacyWrappers:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IButton;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;-><init>(Lcom/amazon/kindle/krx/ui/IButton;Lcom/amazon/kindle/krx/content/IBook;ILandroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 236
    :goto_0
    iget-object p2, p0, Lcom/amazon/android/widget/CommandBarItemController;->cachedLegacyWrappers:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IButton;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p3, "button.id"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected final fetchEndButtons(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/krx/content/IBook;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Ljava/util/Set<",
            "Lcom/amazon/android/widget/items/IPrioritizedWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "readerActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "book"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endItems"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBarItemController;->neutronUtil:Lcom/amazon/kcp/debug/INeutronUtil;

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Lcom/amazon/android/widget/items/SyncCommandItem;

    invoke-direct {v0, p1}, Lcom/amazon/android/widget/items/SyncCommandItem;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Lcom/amazon/android/widget/items/GoToCommandItem;

    invoke-direct {v0, p1}, Lcom/amazon/android/widget/items/GoToCommandItem;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v0, Lcom/amazon/android/widget/items/PopularHighlightsCommandItem;

    invoke-direct {v0, p1}, Lcom/amazon/android/widget/items/PopularHighlightsCommandItem;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_0
    new-instance v0, Lcom/amazon/android/widget/items/ViewOptionsCommandItem;

    invoke-direct {v0, p1, p2}, Lcom/amazon/android/widget/items/ViewOptionsCommandItem;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/krx/content/IBook;)V

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v0, Lcom/amazon/android/widget/items/ToggleBookmarkCommandItem;

    invoke-direct {v0, p1, p2}, Lcom/amazon/android/widget/items/ToggleBookmarkCommandItem;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/krx/content/IBook;)V

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getAdditionalCommandItems()Ljava/util/Set;

    move-result-object p1

    const-string/jumbo p2, "readerActivity.additionalCommandItems"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method protected final fetchStartButtons(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/krx/content/IBook;Ljava/util/Set;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Ljava/util/Set<",
            "Lcom/amazon/android/widget/items/IPrioritizedWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "readerActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "book"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "startItems"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-direct {p0}, Lcom/amazon/android/widget/CommandBarItemController;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 247
    :goto_0
    iget-object v2, p0, Lcom/amazon/android/widget/CommandBarItemController;->neutronUtil:Lcom/amazon/kcp/debug/INeutronUtil;

    invoke-interface {v2}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v2

    const-string v3, "it"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "sdk.readerUIManager.actionBarWidgetItems"

    const-string/jumbo v7, "sdk.readerUIManager"

    if-eqz v2, :cond_5

    sget-object v2, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AUDIBLE_PLAYER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-eq v1, v2, :cond_1

    goto :goto_4

    .line 252
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getActionBarWidgetItems()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 541
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    .line 253
    invoke-virtual {v9, p1, p2}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;->getDisplayPosition(Landroid/content/Context;Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;

    move-result-object v9

    sget-object v10, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;->START:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;

    if-ne v9, v10, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_2

    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 543
    :cond_4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    .line 255
    new-instance v8, Lcom/amazon/android/widget/items/KRXCommandActionWidgetItemWrapper;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v2, p2}, Lcom/amazon/android/widget/items/KRXCommandActionWidgetItemWrapper;-><init>(Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;Lcom/amazon/kindle/krx/content/IBook;)V

    invoke-interface {p3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 248
    :cond_5
    :goto_4
    new-instance v1, Lcom/amazon/kcp/reader/ui/buttons/LeaveBookButton;

    invoke-direct {v1, p1, p2}, Lcom/amazon/kcp/reader/ui/buttons/LeaveBookButton;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/krx/content/IBook;)V

    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_6
    iget-object v1, p0, Lcom/amazon/android/widget/CommandBarItemController;->neutronUtil:Lcom/amazon/kcp/debug/INeutronUtil;

    invoke-interface {v1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNewtronNotebookAdditionEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 260
    sget-object v1, Lcom/amazon/android/widget/CommandBarUtils;->INSTANCE:Lcom/amazon/android/widget/CommandBarUtils;

    invoke-virtual {v1, p2}, Lcom/amazon/android/widget/CommandBarUtils;->isMobiReplicaContent(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    .line 263
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getActionBarWidgetItems()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 546
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    .line 264
    invoke-virtual {v6, p1, p2}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;->getDisplayPosition(Landroid/content/Context;Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;

    move-result-object v6

    sget-object v7, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;->START:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;

    if-ne v6, v7, :cond_8

    const/4 v6, 0x1

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_7

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 548
    :cond_9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    .line 266
    new-instance v2, Lcom/amazon/android/widget/items/KRXCommandActionWidgetItemWrapper;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1, p2}, Lcom/amazon/android/widget/items/KRXCommandActionWidgetItemWrapper;-><init>(Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;Lcom/amazon/kindle/krx/content/IBook;)V

    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 271
    :cond_a
    new-instance p2, Lcom/amazon/android/widget/items/OpenDrawerCommandItem;

    invoke-direct {p2, p1}, Lcom/amazon/android/widget/items/OpenDrawerCommandItem;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final inflateCommandBarItems(Lcom/amazon/android/widget/CommandBar;Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 3

    const-string v0, "commandBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "readerActivity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBarItemController;->startCommandBarItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 110
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBarItemController;->endCommandBarItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 112
    invoke-direct {p0}, Lcom/amazon/android/widget/CommandBarItemController;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/widget/CommandBarItemController;->neutronUtil:Lcom/amazon/kcp/debug/INeutronUtil;

    invoke-interface {v1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    sget-object v1, Lcom/amazon/android/widget/CommandBar$Position;->END:Lcom/amazon/android/widget/CommandBar$Position;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/amazon/android/widget/CommandBar;->setShowIconsInPopup(Lcom/amazon/android/widget/CommandBar$Position;Z)V

    .line 120
    sget-object v1, Lcom/amazon/android/widget/CommandBar$Position;->END:Lcom/amazon/android/widget/CommandBar$Position;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/amazon/android/widget/CommandBar;->setEnableTextWrapInPopup(Lcom/amazon/android/widget/CommandBar$Position;Z)V

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/amazon/android/widget/CommandBarItemController;->startCommandBarItems:Ljava/util/Set;

    invoke-virtual {p0, p2, v0, v1}, Lcom/amazon/android/widget/CommandBarItemController;->fetchStartButtons(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/krx/content/IBook;Ljava/util/Set;)V

    .line 131
    sget-object v1, Lcom/amazon/android/widget/CommandBarUtils;->INSTANCE:Lcom/amazon/android/widget/CommandBarUtils;

    invoke-virtual {v1, v0}, Lcom/amazon/android/widget/CommandBarUtils;->considerAsPdf(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    sget-object v1, Lcom/amazon/android/widget/CommandBarItemController;->TAG:Ljava/lang/String;

    const-string v2, "PDF format content is being opened. All CommandBar items hidden except Aa menu."

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/amazon/android/widget/CommandBarItemController;->endCommandBarItems:Ljava/util/Set;

    new-instance v2, Lcom/amazon/android/widget/items/ViewOptionsCommandItem;

    invoke-direct {v2, p2, v0}, Lcom/amazon/android/widget/items/ViewOptionsCommandItem;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/krx/content/IBook;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_2
    invoke-direct {p0}, Lcom/amazon/android/widget/CommandBarItemController;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    .line 139
    iget-object v2, p0, Lcom/amazon/android/widget/CommandBarItemController;->endCommandBarItems:Ljava/util/Set;

    invoke-virtual {p0, p2, v0, v2}, Lcom/amazon/android/widget/CommandBarItemController;->fetchEndButtons(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/krx/content/IBook;Ljava/util/Set;)V

    if-eqz v1, :cond_3

    .line 143
    iget-object v2, p0, Lcom/amazon/android/widget/CommandBarItemController;->endCommandBarItems:Ljava/util/Set;

    invoke-direct {p0, p2, v1, v0, v2}, Lcom/amazon/android/widget/CommandBarItemController;->fetchKRXButtons(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/content/IBook;Ljava/util/Set;)V

    .line 146
    iget-object v2, p0, Lcom/amazon/android/widget/CommandBarItemController;->endCommandBarItems:Ljava/util/Set;

    invoke-direct {p0, p2, v1, v0, v2}, Lcom/amazon/android/widget/CommandBarItemController;->fetchLegacyButtons(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/content/IBook;Ljava/util/Set;)V

    .line 150
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/amazon/android/widget/CommandBarItemController;->onItemClickListener:Lcom/amazon/android/widget/CommandBarItemController$onItemClickListener$1;

    invoke-virtual {p1, p2}, Lcom/amazon/android/widget/CommandBar;->setOnItemClickListener(Lcom/amazon/android/widget/CommandBar$OnItemClickListener;)V

    .line 151
    iput-object p1, p0, Lcom/amazon/android/widget/CommandBarItemController;->commandBar:Lcom/amazon/android/widget/CommandBar;

    return-void
.end method

.method public final isKLOCommandItemVisible()Z
    .locals 8

    .line 516
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBarItemController;->objectFactory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 518
    :goto_0
    iget-object v2, p0, Lcom/amazon/android/widget/CommandBarItemController;->endCommandBarItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;

    .line 519
    instance-of v5, v3, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;

    invoke-virtual {v5}, Lcom/amazon/android/widget/LegacyButtonWidgetItemWrapper;->getButtonIdentifier()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/android/widget/CommandBarItemController;->XRAY_BUTTON:Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 521
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/android/widget/CommandBarItemController;->KLO_CLASSNAME:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-static {v5, v6, v4, v7, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 522
    invoke-interface {v3, v0}, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;->isVisible(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v4
.end method

.method public final populateCommandBar(Lcom/amazon/android/widget/CommandBar;)V
    .locals 5

    const-string v0, "commandBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Lcom/amazon/android/widget/CommandBarItemController;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 321
    :cond_1
    sget-object v1, Lcom/amazon/android/widget/CommandBar$Position;->START:Lcom/amazon/android/widget/CommandBar$Position;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "commandBar.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0, v2}, Lcom/amazon/android/widget/CommandBarItemController;->getPrioritizedBarItems(Lcom/amazon/android/widget/CommandBar$Position;Lcom/amazon/kindle/krx/content/IBook;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 322
    iget-object v2, p0, Lcom/amazon/android/widget/CommandBarItemController;->cachedStartItems:Ljava/util/List;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 323
    new-instance v2, Lcom/amazon/android/widget/WidgetItemGroup;

    invoke-direct {v2, v1}, Lcom/amazon/android/widget/WidgetItemGroup;-><init>(Ljava/util/List;)V

    sget-object v4, Lcom/amazon/android/widget/CommandBar$Position;->START:Lcom/amazon/android/widget/CommandBar$Position;

    invoke-virtual {p1, v2, v4}, Lcom/amazon/android/widget/CommandBar;->setItems(Lcom/amazon/android/widget/WidgetItemGroup;Lcom/amazon/android/widget/CommandBar$Position;)V

    .line 324
    iput-object v1, p0, Lcom/amazon/android/widget/CommandBarItemController;->cachedStartItems:Ljava/util/List;

    .line 328
    :cond_2
    sget-object v1, Lcom/amazon/android/widget/CommandBar$Position;->END:Lcom/amazon/android/widget/CommandBar$Position;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0, v2}, Lcom/amazon/android/widget/CommandBarItemController;->getPrioritizedBarItems(Lcom/amazon/android/widget/CommandBar$Position;Lcom/amazon/kindle/krx/content/IBook;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/amazon/android/widget/CommandBarItemController;->cachedEndItems:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 330
    new-instance v1, Lcom/amazon/android/widget/WidgetItemGroup;

    invoke-direct {v1, v0}, Lcom/amazon/android/widget/WidgetItemGroup;-><init>(Ljava/util/List;)V

    sget-object v2, Lcom/amazon/android/widget/CommandBar$Position;->END:Lcom/amazon/android/widget/CommandBar$Position;

    invoke-virtual {p1, v1, v2}, Lcom/amazon/android/widget/CommandBar;->setItems(Lcom/amazon/android/widget/WidgetItemGroup;Lcom/amazon/android/widget/CommandBar$Position;)V

    .line 331
    iput-object v0, p0, Lcom/amazon/android/widget/CommandBarItemController;->cachedEndItems:Ljava/util/List;

    goto :goto_1

    .line 333
    :cond_3
    sget-object v0, Lcom/amazon/android/widget/CommandBar$Position;->END:Lcom/amazon/android/widget/CommandBar$Position;

    invoke-virtual {p1, v0}, Lcom/amazon/android/widget/CommandBar;->refreshIcons(Lcom/amazon/android/widget/CommandBar$Position;)V

    :goto_1
    return-void
.end method

.method public final refreshCommandBarIcon(Lcom/amazon/android/widget/CommandBar;Lcom/amazon/android/widget/IWidgetItem;Lcom/amazon/android/widget/CommandBar$Position;)V
    .locals 1

    const-string v0, "commandBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "position"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1, p3, p2}, Lcom/amazon/android/widget/CommandBar;->refreshIcon(Lcom/amazon/android/widget/CommandBar$Position;Lcom/amazon/android/widget/IWidgetItem;)V

    return-void
.end method

.method public final refreshCommandBarIcon(Lcom/amazon/android/widget/CommandBar;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/amazon/android/widget/CommandBarItemController;->refreshCommandBarIcon$default(Lcom/amazon/android/widget/CommandBarItemController;Lcom/amazon/android/widget/CommandBar;Ljava/lang/String;Lcom/amazon/android/widget/CommandBar$Position;ILjava/lang/Object;)V

    return-void
.end method

.method public final refreshCommandBarIcon(Lcom/amazon/android/widget/CommandBar;Ljava/lang/String;Lcom/amazon/android/widget/CommandBar$Position;)V
    .locals 1

    const-string v0, "commandBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonIdentifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "position"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    invoke-direct {p0, p2}, Lcom/amazon/android/widget/CommandBarItemController;->getWidgetItemFromButtonIdentifier(Ljava/lang/String;)Lcom/amazon/android/widget/IWidgetItem;

    move-result-object p2

    .line 361
    invoke-virtual {p1, p3, p2}, Lcom/amazon/android/widget/CommandBar;->refreshIcon(Lcom/amazon/android/widget/CommandBar$Position;Lcom/amazon/android/widget/IWidgetItem;)V

    return-void
.end method

.method public final refreshToggleBookmarkItem(Lcom/amazon/android/widget/CommandBar;)V
    .locals 7

    const-string v0, "commandBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBarItemController;->endCommandBarItems:Ljava/util/Set;

    .line 560
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ltz v1, :cond_1

    .line 562
    check-cast v2, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;

    .line 369
    instance-of v2, v2, Lcom/amazon/android/widget/items/ToggleBookmarkCommandItem;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 561
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    if-eq v1, v3, :cond_3

    .line 371
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBarItemController;->endCommandBarItems:Ljava/util/Set;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 372
    invoke-static/range {v1 .. v6}, Lcom/amazon/android/widget/CommandBarItemController;->refreshCommandBarIcon$default(Lcom/amazon/android/widget/CommandBarItemController;Lcom/amazon/android/widget/CommandBar;Lcom/amazon/android/widget/IWidgetItem;Lcom/amazon/android/widget/CommandBar$Position;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method
