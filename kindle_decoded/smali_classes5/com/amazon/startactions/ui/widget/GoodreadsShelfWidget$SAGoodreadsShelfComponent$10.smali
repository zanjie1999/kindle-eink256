.class Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$10;
.super Ljava/lang/Object;
.source "GoodreadsShelfWidget.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 755
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$10;->this$0:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 758
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$10;->this$0:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->access$700(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;->noticeUserInteraction()V

    .line 760
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string p2, "AnyActionsBlockingJIT"

    const-string v0, "AutoShelvingJitToggle"

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$10;->this$0:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->access$1100(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)V

    .line 766
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$10;->this$0:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->access$1400(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    const-string p2, "ClickedJITToggle"

    const/4 v0, 0x1

    .line 767
    invoke-virtual {p1, p2, v0}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    return-void
.end method
