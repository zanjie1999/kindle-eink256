.class Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$9;
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

    .line 722
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$9;->this$0:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 725
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$9;->this$0:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->access$700(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;->noticeUserInteraction()V

    .line 727
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v0, "AnyActionsBlockingJIT"

    const-string v1, "AutoShelvingJitCancel"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$9;->this$0:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->access$1100(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)V

    .line 733
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$9;->this$0:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->access$1300(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    const-string v0, "ClickedJITDisableButton"

    const/4 v1, 0x1

    .line 734
    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    return-void
.end method
