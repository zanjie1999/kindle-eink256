.class Lcom/amazon/kindle/panels/BookPanelProvider$5;
.super Ljava/lang/Object;
.source "BookPanelProvider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/panels/BookPanelProvider;->addTOCItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/panels/BookPanelProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/panels/BookPanelProvider;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/amazon/kindle/panels/BookPanelProvider$5;->this$0:Lcom/amazon/kindle/panels/BookPanelProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 385
    iget-object p1, p0, Lcom/amazon/kindle/panels/BookPanelProvider$5;->this$0:Lcom/amazon/kindle/panels/BookPanelProvider;

    iget-object p1, p1, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToTOC()V

    .line 386
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPanelController()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 388
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/panels/PanelLocation;->RIGHT:Lcom/amazon/kindle/panels/PanelLocation;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/panels/PanelLocation;->LEFT:Lcom/amazon/kindle/panels/PanelLocation;

    .line 390
    :goto_0
    invoke-interface {p1, v0}, Lcom/amazon/kindle/panels/IPanelController;->closePanel(Lcom/amazon/kindle/panels/PanelLocation;)V

    .line 392
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->setOverlaysVisible(ZZ)V

    return-void
.end method
