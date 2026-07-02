.class final Lcom/amazon/android/tableofcontents/TableOfContentsUtil$2;
.super Ljava/lang/Object;
.source "TableOfContentsUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/tableofcontents/TableOfContentsUtil;->getCoverEntryOnClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 112
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    .line 114
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPanelController()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object v0

    .line 115
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 117
    sget-object v1, Lcom/amazon/kindle/panels/PanelLocation;->LEFT:Lcom/amazon/kindle/panels/PanelLocation;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/panels/IPanelController;->closePanel(Lcom/amazon/kindle/panels/PanelLocation;)V

    .line 121
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 126
    :cond_1
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 133
    :cond_2
    invoke-static {p1}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 134
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 136
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 137
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    .line 139
    sget-object v2, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookLandmarkType;->COVER_PAGE:Lcom/amazon/kindle/krx/reader/IBookNavigator$BookLandmarkType;

    invoke-interface {p1, v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLandmarkPosition(Lcom/amazon/kindle/krx/reader/IBookNavigator$BookLandmarkType;)I

    move-result v2

    const/4 v3, -0x1

    const-string v4, "TOCCoverClick"

    const/4 v5, 0x1

    if-eq v2, v3, :cond_4

    .line 142
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {v1, p1, v5, v4}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;ZLjava/lang/String;)V

    goto :goto_1

    .line 145
    :cond_4
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBeginningPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {v1, p1, v5, v4}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;ZLjava/lang/String;)V

    goto :goto_1

    .line 151
    :cond_5
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToCover()V

    :cond_6
    :goto_1
    return-void
.end method
