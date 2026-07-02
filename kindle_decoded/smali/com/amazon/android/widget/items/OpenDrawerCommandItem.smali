.class public final Lcom/amazon/android/widget/items/OpenDrawerCommandItem;
.super Lcom/amazon/android/widget/items/AbstractReaderActionCommandItem;
.source "OpenDrawerCommandItem.kt"


# instance fields
.field private final activity:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget v0, Lcom/amazon/kindle/krl/R$string;->open_nav_panel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/android/widget/items/AbstractReaderActionCommandItem;-><init>(Ljava/lang/Integer;)V

    iput-object p1, p0, Lcom/amazon/android/widget/items/OpenDrawerCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    return-void
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "LeftNavHamburgerToggle"

    return-object v0
.end method

.method public getDisplayPreference(Landroid/content/Context;)Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object p1, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->NO_PREFERENCE:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    return-object p1
.end method

.method public getId()I
    .locals 1

    .line 34
    sget v0, Lcom/amazon/kindle/krl/R$id;->menuitem_hamburger:I

    return v0
.end method

.method public getImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    sget v0, Lcom/amazon/kindle/krl/R$drawable;->ic_chrome_toc_toggle:I

    invoke-static {p1, v0}, Lcom/amazon/android/widget/CommandBarUtils;->getThemedButtonDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 110
    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$drawable;->ic_hamburger_toggle:I

    invoke-static {p1, v0}, Lcom/amazon/android/widget/CommandBarUtils;->getThemedButtonDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 1

    .line 26
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 27
    iget-object p1, p0, Lcom/amazon/android/widget/items/OpenDrawerCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$integer;->newtron_command_bar_toc:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0xc8

    :goto_0
    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/OpenDrawerCommandItem;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method

.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    invoke-super {p0, p1}, Lcom/amazon/android/widget/items/AbstractReaderActionCommandItem;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 119
    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$string;->newtron_toc_subhead_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026ewtron_toc_subhead_title)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public isVisible(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 6

    .line 75
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNewtronNotebookAdditionEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/amazon/android/widget/CommandBarUtils;->INSTANCE:Lcom/amazon/android/widget/CommandBarUtils;

    invoke-virtual {v0, p1}, Lcom/amazon/android/widget/CommandBarUtils;->isMobiReplicaContent(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/debug/INeutronUtil;->isNewtronTOCEnabled()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    .line 80
    const-class v0, Lcom/amazon/kindle/krx/reader/ITableOfContentsExProvider;

    invoke-static {v0}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object v0

    const-string v3, "Discoveries.of(ITableOfC\u2026tsExProvider::class.java)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Lcom/amazon/discovery/Discoveries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/reader/ITableOfContentsExProvider;

    .line 82
    invoke-interface {v3, p1}, Lcom/amazon/kindle/krx/reader/ITableOfContentsExProvider;->isTOCAvailable(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/widget/items/OpenDrawerCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const-string v3, "activity.docViewer"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    const-string v3, "doc"

    .line 90
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IKindleTOC;->getTopLevelTOCItems()Ljava/util/List;

    move-result-object v4

    :cond_3
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x1

    :goto_2
    xor-int/2addr v0, v2

    if-eqz p1, :cond_6

    .line 91
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result p1

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    if-nez v0, :cond_7

    if-eqz p1, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    return v1

    :cond_9
    if-nez p1, :cond_a

    return v2

    .line 103
    :cond_a
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object v3

    sget-object v5, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->CHILDREN:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    if-eq v3, v5, :cond_c

    .line 101
    sget-object v3, Lcom/amazon/android/widget/CommandBarUtils;->INSTANCE:Lcom/amazon/android/widget/CommandBarUtils;

    invoke-virtual {v3, p1}, Lcom/amazon/android/widget/CommandBarUtils;->considerAsPdf(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 102
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string v3, "Utils.getFactory()"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPanelController()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/amazon/kindle/panels/IPanelController;->getSidePanelLayout()Landroid/view/View;

    move-result-object v4

    :cond_b
    if-eqz v4, :cond_c

    if-nez v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method public bridge synthetic isVisible(Ljava/lang/Object;)Z
    .locals 0

    .line 23
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/OpenDrawerCommandItem;->isVisible(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNewtronTOCEnabled()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/amazon/android/widget/items/OpenDrawerCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->showTOCFragment()V

    return v0

    .line 43
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string v1, "Utils.getFactory()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPanelController()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v1, "Utils.getFactory().panelController ?: return false"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    sget-object v2, Lcom/amazon/kindle/panels/PanelLocation;->RIGHT:Lcom/amazon/kindle/panels/PanelLocation;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/amazon/kindle/panels/PanelLocation;->LEFT:Lcom/amazon/kindle/panels/PanelLocation;

    .line 46
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kindle/panels/IPanelController;->isTOCPanelOpened()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    invoke-interface {p1, v2}, Lcom/amazon/kindle/panels/IPanelController;->closePanel(Lcom/amazon/kindle/panels/PanelLocation;)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 51
    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->OPEN_TOC:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v3, "KindlePerformanceConstants.OPEN_TOC"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 55
    :cond_3
    invoke-interface {p1, v2}, Lcom/amazon/kindle/panels/IPanelController;->openPanel(Lcom/amazon/kindle/panels/PanelLocation;)V

    .line 58
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 60
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->CHROME:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    .line 61
    sget-object v3, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_TABLE_OF_CONTENTS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    .line 59
    invoke-static {p1, v3, v2, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics$default(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;ILjava/lang/Object;)V

    goto :goto_2

    .line 65
    :cond_4
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->CHROME:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    .line 66
    sget-object v3, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_LEFTNAV:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    .line 64
    invoke-static {p1, v3, v2, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics$default(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;ILjava/lang/Object;)V

    :goto_2
    return v0

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
