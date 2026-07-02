.class Lcom/amazon/kindle/panels/LavaPanelProvider$2;
.super Ljava/lang/Object;
.source "LavaPanelProvider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/panels/LavaPanelProvider;->addTOCItem(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/panels/LavaPanelProvider;

.field final synthetic val$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/panels/LavaPanelProvider;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/amazon/kindle/panels/LavaPanelProvider$2;->this$0:Lcom/amazon/kindle/panels/LavaPanelProvider;

    iput-object p2, p0, Lcom/amazon/kindle/panels/LavaPanelProvider$2;->val$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 188
    iget-object p1, p0, Lcom/amazon/kindle/panels/LavaPanelProvider$2;->this$0:Lcom/amazon/kindle/panels/LavaPanelProvider;

    iget-object p1, p1, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToTOC()V

    .line 189
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPanelController()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 191
    sget-object v0, Lcom/amazon/kindle/panels/PanelLocation;->LEFT:Lcom/amazon/kindle/panels/PanelLocation;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/panels/IPanelController;->closePanel(Lcom/amazon/kindle/panels/PanelLocation;)V

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/panels/LavaPanelProvider$2;->val$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->setOverlaysVisible(ZZ)V

    return-void
.end method
