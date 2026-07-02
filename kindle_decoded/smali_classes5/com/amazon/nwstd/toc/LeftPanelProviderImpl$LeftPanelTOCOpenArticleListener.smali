.class Lcom/amazon/nwstd/toc/LeftPanelProviderImpl$LeftPanelTOCOpenArticleListener;
.super Ljava/lang/Object;
.source "LeftPanelProviderImpl.java"

# interfaces
.implements Lcom/amazon/nwstd/toc/TOCListOpenArticleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LeftPanelTOCOpenArticleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;


# direct methods
.method private constructor <init>(Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl$LeftPanelTOCOpenArticleListener;->this$0:Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;Lcom/amazon/nwstd/toc/LeftPanelProviderImpl$1;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl$LeftPanelTOCOpenArticleListener;-><init>(Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;)V

    return-void
.end method


# virtual methods
.method public onArticleSelected()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl$LeftPanelTOCOpenArticleListener;->this$0:Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;

    invoke-static {v0}, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->access$100(Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;)Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl$LeftPanelTOCOpenArticleListener;->this$0:Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;

    invoke-static {v0}, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->access$100(Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;)Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPanelController()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    sget-object v1, Lcom/amazon/kindle/panels/PanelLocation;->LEFT:Lcom/amazon/kindle/panels/PanelLocation;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/panels/IPanelController;->closePanel(Lcom/amazon/kindle/panels/PanelLocation;)V

    :cond_0
    return-void
.end method
