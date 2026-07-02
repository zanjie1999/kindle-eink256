.class Lcom/amazon/kindle/panels/TOCTreeViewAdapter$1;
.super Ljava/lang/Object;
.source "TOCTreeViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/panels/TOCTreeViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/panels/TOCTreeViewAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/panels/TOCTreeViewAdapter;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter$1;->this$0:Lcom/amazon/kindle/panels/TOCTreeViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    if-eqz p1, :cond_7

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter$1;->this$0:Lcom/amazon/kindle/panels/TOCTreeViewAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/TreeTOCItem;

    .line 71
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/TreeTOCItem;->onItemClicked()V

    goto/16 :goto_3

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/TreeTOCItem;->onClick()Z

    move-result v0

    if-nez v0, :cond_7

    .line 76
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 78
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_2

    .line 80
    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/TreeTOCItem;->getTocPosition()I

    move-result p1

    invoke-interface {v4, p1}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    const/4 v4, 0x1

    const-string v5, "TOCClick"

    invoke-interface {v3, p1, v4, v5}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;ZLjava/lang/String;)V

    .line 83
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 84
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->TABLE_OF_CONTENTS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v3, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->PRESS_TOC:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {p1, v3}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    goto :goto_1

    .line 88
    :cond_3
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->LEFT_NAVIGATION_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v3, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->PRESS_TOC:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {p1, v3}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    .line 99
    :goto_1
    iget-object p1, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter$1;->this$0:Lcom/amazon/kindle/panels/TOCTreeViewAdapter;

    iget-object p1, p1, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {p1}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz v1, :cond_4

    .line 100
    new-instance v2, Lcom/amazon/kindle/panels/TOCTreeViewAdapter$1$1;

    invoke-direct {v2, p0, v1}, Lcom/amazon/kindle/panels/TOCTreeViewAdapter$1$1;-><init>(Lcom/amazon/kindle/panels/TOCTreeViewAdapter$1;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 107
    :cond_4
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPanelController()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 109
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/amazon/kindle/panels/PanelLocation;->RIGHT:Lcom/amazon/kindle/panels/PanelLocation;

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/amazon/kindle/panels/PanelLocation;->LEFT:Lcom/amazon/kindle/panels/PanelLocation;

    .line 111
    :goto_2
    invoke-interface {p1, v0, v2}, Lcom/amazon/kindle/panels/IPanelController;->closePanel(Lcom/amazon/kindle/panels/PanelLocation;Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    .line 113
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_7
    :goto_3
    return-void
.end method
