.class Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$8;
.super Ljava/lang/Object;
.source "GoodreadsShelfWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->buildTutorial()Lcom/amazon/startactions/jit/BlockingTutorialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)V
    .locals 0

    .line 704
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$8;->this$0:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 707
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$8;->this$0:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->access$700(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;->noticeUserInteraction()V

    .line 708
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$8;->this$0:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->access$1000(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)Landroid/widget/CompoundButton;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 710
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v1, "AnyActionsBlockingJIT"

    const-string v2, "AutoShelvingJitConfirm"

    invoke-interface {p1, v1, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$8;->this$0:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->access$1100(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)V

    .line 716
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$8;->this$0:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->access$1200(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    const-string v1, "ClickedJITEnableButton"

    .line 717
    invoke-virtual {p1, v1, v0}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    return-void
.end method
