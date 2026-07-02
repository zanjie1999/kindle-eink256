.class Lcom/amazon/startactions/plugin/StartActionsController$BookInfoButtonLauncher$1;
.super Ljava/lang/Object;
.source "StartActionsController.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IButton;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/plugin/StartActionsController$BookInfoButtonLauncher;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/ui/IButton<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/startactions/plugin/StartActionsController$BookInfoButtonLauncher;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/plugin/StartActionsController$BookInfoButtonLauncher;)V
    .locals 0

    .line 1416
    iput-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$BookInfoButtonLauncher$1;->this$1:Lcom/amazon/startactions/plugin/StartActionsController$BookInfoButtonLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIconKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;
    .locals 1

    .line 1425
    iget-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$BookInfoButtonLauncher$1;->this$1:Lcom/amazon/startactions/plugin/StartActionsController$BookInfoButtonLauncher;

    iget-object p1, p1, Lcom/amazon/startactions/plugin/StartActionsController$BookInfoButtonLauncher;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {p1}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1600(Lcom/amazon/startactions/plugin/StartActionsController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/ea/R$string;->startactions_book_info_button_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVisibility(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 0

    .line 1430
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object p1
.end method

.method public bridge synthetic getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 0

    .line 1416
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/startactions/plugin/StartActionsController$BookInfoButtonLauncher$1;->getVisibility(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    .line 1435
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v1, "ClickedOpenBookInfoButton"

    .line 1436
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    .line 1435
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    .line 1438
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$BookInfoButtonLauncher$1;->this$1:Lcom/amazon/startactions/plugin/StartActionsController$BookInfoButtonLauncher;

    iget-object v0, v0, Lcom/amazon/startactions/plugin/StartActionsController$BookInfoButtonLauncher;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    sget-object v1, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->BOOK_INFO_BUTTON:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/startactions/plugin/StartActionsController;->launchStartActions(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;)Z

    return-void
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)V
    .locals 0

    .line 1416
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/startactions/plugin/StartActionsController$BookInfoButtonLauncher$1;->onClick(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method
