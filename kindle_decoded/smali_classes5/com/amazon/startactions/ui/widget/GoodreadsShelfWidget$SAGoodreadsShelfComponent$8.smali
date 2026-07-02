.class Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$8;
.super Ljava/lang/Object;
.source "GoodreadsShelfWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->buildTutorial()Lcom/amazon/startactions/jit/BlockingTutorialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$8;->this$0:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 724
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$8;->this$0:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->access$700(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;->noticeUserInteraction()V

    .line 725
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$8;->this$0:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->access$1000(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)Landroid/widget/CompoundButton;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 727
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v1, "AnyActionsBlockingJIT"

    const-string v2, "AutoShelvingJitConfirm"

    invoke-interface {p1, v1, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$8;->this$0:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->access$1100(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)V

    .line 733
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$8;->this$0:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->access$1200(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    const-string v1, "ClickedJITEnableButton"

    .line 734
    invoke-virtual {p1, v1, v0}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    return-void
.end method
