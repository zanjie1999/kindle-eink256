.class final Lcom/amazon/android/tableofcontents/TableOfContentsUtil$1;
.super Ljava/lang/Object;
.source "TableOfContentsUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/tableofcontents/TableOfContentsUtil;->getBeginningEntryOnClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 46
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 56
    :cond_1
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 63
    :cond_2
    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 64
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 66
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 67
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_8

    .line 69
    sget-object v2, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookLandmarkType;->SRL:Lcom/amazon/kindle/krx/reader/IBookNavigator$BookLandmarkType;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLandmarkPosition(Lcom/amazon/kindle/krx/reader/IBookNavigator$BookLandmarkType;)I

    move-result v2

    .line 71
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 72
    sget-object v3, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->TABLE_OF_CONTENTS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v4, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->GOTO_BEGINNING:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v3, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    goto :goto_1

    .line 75
    :cond_4
    sget-object v3, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->LEFT_NAVIGATION_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v4, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->GOTO_BEGINNING:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v3, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    :goto_1
    const/4 v3, -0x1

    const-string v4, "GoToBeginning"

    const/4 v5, 0x1

    if-eq v2, v3, :cond_5

    .line 81
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {p1, v0, v5, v4}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;ZLjava/lang/String;)V

    goto :goto_3

    .line 84
    :cond_5
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBeginningPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {p1, v0, v5, v4}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;ZLjava/lang/String;)V

    goto :goto_3

    .line 89
    :cond_6
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 90
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->TABLE_OF_CONTENTS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->GOTO_BEGINNING:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {p1, v1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    goto :goto_2

    .line 93
    :cond_7
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->LEFT_NAVIGATION_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->GOTO_BEGINNING:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {p1, v1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    .line 97
    :goto_2
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToBeginning()V

    :cond_8
    :goto_3
    return-void
.end method
