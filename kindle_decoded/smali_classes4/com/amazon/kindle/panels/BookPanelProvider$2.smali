.class Lcom/amazon/kindle/panels/BookPanelProvider$2;
.super Ljava/lang/Object;
.source "BookPanelProvider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/panels/BookPanelProvider;->setupCustomPanelItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/panels/BookPanelProvider;

.field final synthetic val$item:Lcom/amazon/kindle/panels/IPanelCustomItem;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/panels/BookPanelProvider;Lcom/amazon/kindle/panels/IPanelCustomItem;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/amazon/kindle/panels/BookPanelProvider$2;->this$0:Lcom/amazon/kindle/panels/BookPanelProvider;

    iput-object p2, p0, Lcom/amazon/kindle/panels/BookPanelProvider$2;->val$item:Lcom/amazon/kindle/panels/IPanelCustomItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 237
    iget-object p1, p0, Lcom/amazon/kindle/panels/BookPanelProvider$2;->val$item:Lcom/amazon/kindle/panels/IPanelCustomItem;

    invoke-interface {p1}, Lcom/amazon/kindle/panels/IPanelCustomItem;->getCallback()Lcom/amazon/kindle/callback/ICallback;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 239
    iget-object v0, p0, Lcom/amazon/kindle/panels/BookPanelProvider$2;->this$0:Lcom/amazon/kindle/panels/BookPanelProvider;

    invoke-static {v0}, Lcom/amazon/kindle/panels/BookPanelProvider;->access$101(Lcom/amazon/kindle/panels/BookPanelProvider;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 240
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 246
    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    new-instance p1, Lcom/amazon/kindle/panels/BookPanelProvider$2$1;

    invoke-direct {p1, p0, v1}, Lcom/amazon/kindle/panels/BookPanelProvider$2$1;-><init>(Lcom/amazon/kindle/panels/BookPanelProvider$2;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/panels/BookPanelProvider$2;->val$item:Lcom/amazon/kindle/panels/IPanelCustomItem;

    invoke-interface {v0}, Lcom/amazon/kindle/panels/IPanelCustomItem;->getCallback()Lcom/amazon/kindle/callback/ICallback;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/callback/OperationResult;

    iget-object v2, p0, Lcom/amazon/kindle/panels/BookPanelProvider$2;->this$0:Lcom/amazon/kindle/panels/BookPanelProvider;

    iget-object v2, v2, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {v1, v2}, Lcom/amazon/kindle/callback/OperationResult;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/callback/ICallback;->call(Lcom/amazon/kindle/callback/OperationResult;)V

    .line 256
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPanelController()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 258
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/amazon/kindle/panels/PanelLocation;->RIGHT:Lcom/amazon/kindle/panels/PanelLocation;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/amazon/kindle/panels/PanelLocation;->LEFT:Lcom/amazon/kindle/panels/PanelLocation;

    .line 260
    :goto_0
    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/panels/IPanelController;->closePanel(Lcom/amazon/kindle/panels/PanelLocation;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 262
    :cond_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_1
    return-void
.end method
