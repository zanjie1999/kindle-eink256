.class Lcom/amazon/startactions/plugin/StartActionsController$LeftNavPanelLauncher;
.super Ljava/lang/Object;
.source "StartActionsController.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/IPanelContentProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/plugin/StartActionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LeftNavPanelLauncher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/plugin/StartActionsController;


# direct methods
.method private constructor <init>(Lcom/amazon/startactions/plugin/StartActionsController;)V
    .locals 0

    .line 1456
    iput-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$LeftNavPanelLauncher;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/startactions/plugin/StartActionsController;Lcom/amazon/startactions/plugin/StartActionsController$1;)V
    .locals 0

    .line 1456
    invoke-direct {p0, p1}, Lcom/amazon/startactions/plugin/StartActionsController$LeftNavPanelLauncher;-><init>(Lcom/amazon/startactions/plugin/StartActionsController;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1456
    check-cast p1, Lcom/amazon/kindle/krx/ui/panels/PanelKey;

    invoke-virtual {p0, p1}, Lcom/amazon/startactions/plugin/StartActionsController$LeftNavPanelLauncher;->get(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/panels/PanelKey;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/panels/IPanelRow;",
            ">;"
        }
    .end annotation

    .line 1460
    iget-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$LeftNavPanelLauncher;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {p1}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1300(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    .line 1461
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$LeftNavPanelLauncher;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-virtual {v0, p1}, Lcom/amazon/startactions/plugin/StartActionsController;->canRegisterStartActions(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$LeftNavPanelLauncher;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {v0}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1600(Lcom/amazon/startactions/plugin/StartActionsController;)Landroid/content/Context;

    move-result-object v0

    .line 1467
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/ea/R$string;->startactions_feature_title:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/amazon/startactions/plugin/StartActionsController$LeftNavPanelLauncher$1;

    invoke-direct {v2, p0, p1}, Lcom/amazon/startactions/plugin/StartActionsController$LeftNavPanelLauncher$1;-><init>(Lcom/amazon/startactions/plugin/StartActionsController$LeftNavPanelLauncher;Lcom/amazon/kindle/krx/content/IBook;)V

    .line 1466
    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/krx/ui/panels/PanelComponentFactory;->createTextComponent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;)Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;

    move-result-object p1

    .line 1481
    new-instance v0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;->setTextComponent(Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;)Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;->build()Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;

    move-result-object p1

    .line 1482
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)I
    .locals 0

    const/16 p1, 0x258

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 1456
    check-cast p1, Lcom/amazon/kindle/krx/ui/panels/PanelKey;

    invoke-virtual {p0, p1}, Lcom/amazon/startactions/plugin/StartActionsController$LeftNavPanelLauncher;->getPriority(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)I

    move-result p1

    return p1
.end method
