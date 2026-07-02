.class Lcom/amazon/startactions/plugin/StartActionsController$LeftNavPanelLauncher$1;
.super Ljava/lang/Object;
.source "StartActionsController.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/plugin/StartActionsController$LeftNavPanelLauncher;->get(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/startactions/plugin/StartActionsController$LeftNavPanelLauncher;

.field final synthetic val$book:Lcom/amazon/kindle/krx/content/IBook;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/plugin/StartActionsController$LeftNavPanelLauncher;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 1468
    iput-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$LeftNavPanelLauncher$1;->this$1:Lcom/amazon/startactions/plugin/StartActionsController$LeftNavPanelLauncher;

    iput-object p2, p0, Lcom/amazon/startactions/plugin/StartActionsController$LeftNavPanelLauncher$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()Z
    .locals 3

    .line 1471
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$LeftNavPanelLauncher$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v1, "ClickedOpenLeftNavTeaser"

    .line 1472
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    .line 1471
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    .line 1473
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "LeftNav"

    const-string v2, "AboutThisBook"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$LeftNavPanelLauncher$1;->this$1:Lcom/amazon/startactions/plugin/StartActionsController$LeftNavPanelLauncher;

    iget-object v0, v0, Lcom/amazon/startactions/plugin/StartActionsController$LeftNavPanelLauncher;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    iget-object v1, p0, Lcom/amazon/startactions/plugin/StartActionsController$LeftNavPanelLauncher$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    sget-object v2, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->LEFT_NAVIGATION_BAR:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/plugin/StartActionsController;->launchStartActions(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;)Z

    const/4 v0, 0x1

    return v0
.end method
