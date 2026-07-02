.class public Lcom/amazon/android/docviewer/TreeTOCItem;
.super Ljava/lang/Object;
.source "TreeTOCItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/TreeTOCItem$Tree;
    }
.end annotation


# instance fields
.field private children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/android/docviewer/TreeTOCItem;",
            ">;"
        }
    .end annotation
.end field

.field private customClickListener:Landroid/view/View$OnClickListener;

.field private expanded:Z

.field private level:I

.field private final parentTocItem:Lcom/amazon/android/docviewer/TreeTOCItem;

.field private title:Ljava/lang/String;

.field private final tocItem:Lcom/amazon/android/docviewer/ITOCItem;

.field private tocPosition:I


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/ITOCItem;ILcom/amazon/android/docviewer/TreeTOCItem;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->expanded:Z

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->customClickListener:Landroid/view/View$OnClickListener;

    .line 58
    iput-object p1, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->tocItem:Lcom/amazon/android/docviewer/ITOCItem;

    .line 59
    iput p2, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->level:I

    .line 60
    iput-object p3, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->parentTocItem:Lcom/amazon/android/docviewer/TreeTOCItem;

    if-eqz p1, :cond_0

    .line 62
    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->title:Ljava/lang/String;

    .line 63
    iget-object p1, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->tocItem:Lcom/amazon/android/docviewer/ITOCItem;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->tocPosition:I

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 65
    iput-object p1, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->title:Ljava/lang/String;

    const/4 p1, -0x1

    .line 66
    iput p1, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->tocPosition:I

    :goto_0
    return-void
.end method


# virtual methods
.method public addChild(Lcom/amazon/android/docviewer/TreeTOCItem;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->children:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->children:Ljava/util/ArrayList;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/android/docviewer/TreeTOCItem;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->children:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->level:I

    return v0
.end method

.method public getParent()Lcom/amazon/android/docviewer/TreeTOCItem;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->parentTocItem:Lcom/amazon/android/docviewer/TreeTOCItem;

    return-object v0
.end method

.method public getTOCItem()Lcom/amazon/android/docviewer/ITOCItem;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->tocItem:Lcom/amazon/android/docviewer/ITOCItem;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTocPosition()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->tocPosition:I

    return v0
.end method

.method public hasChildren()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isChild()Z
    .locals 1

    .line 107
    iget v0, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->level:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->expanded:Z

    return v0
.end method

.method public onClick()Z
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->customClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 144
    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onItemClicked()V
    .locals 7

    .line 155
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 157
    :goto_0
    iget-object v3, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->customClickListener:Landroid/view/View$OnClickListener;

    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    .line 159
    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 161
    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v4

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/TreeTOCItem;->getTocPosition()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, "TOCClick"

    invoke-interface {v3, v4, v5, v6}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;ZLjava/lang/String;)V

    goto :goto_1

    .line 165
    :cond_1
    invoke-interface {v3, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 168
    :cond_2
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 169
    sget-object v3, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->TABLE_OF_CONTENTS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v4, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->PRESS_TOC:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v3, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    goto :goto_2

    .line 173
    :cond_3
    sget-object v3, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->LEFT_NAVIGATION_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v4, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->PRESS_TOC:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v3, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    :goto_2
    if-nez v0, :cond_4

    return-void

    .line 183
    :cond_4
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v3

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 189
    invoke-static {v3}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 190
    new-instance v1, Lcom/amazon/android/docviewer/TreeTOCItem$1;

    invoke-direct {v1, p0, v2}, Lcom/amazon/android/docviewer/TreeTOCItem$1;-><init>(Lcom/amazon/android/docviewer/TreeTOCItem;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 197
    :cond_5
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPanelController()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 199
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/amazon/kindle/panels/PanelLocation;->RIGHT:Lcom/amazon/kindle/panels/PanelLocation;

    goto :goto_3

    :cond_6
    sget-object v2, Lcom/amazon/kindle/panels/PanelLocation;->LEFT:Lcom/amazon/kindle/panels/PanelLocation;

    .line 201
    :goto_3
    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/panels/IPanelController;->closePanel(Lcom/amazon/kindle/panels/PanelLocation;Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_8

    .line 203
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_8
    :goto_4
    return-void
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->customClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->expanded:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->title:Ljava/lang/String;

    return-void
.end method

.method public setTocPosition(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/amazon/android/docviewer/TreeTOCItem;->tocPosition:I

    return-void
.end method
