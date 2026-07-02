.class Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;
.super Ljava/lang/Object;
.source "ControlPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;-><init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;Landroid/widget/ImageButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V
    .locals 0

    .line 685
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 692
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$300(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->closeComponentViewer()V

    .line 694
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->access$1000(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;)Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;->PLAY:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 696
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$1100(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$1200(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    if-nez p1, :cond_1

    .line 698
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$600(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V

    .line 702
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    .line 703
    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object v0, v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$1200(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object v1, v1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$1100(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->isBetween(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 705
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$1300(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V

    .line 709
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 715
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->access$1400(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    if-nez p1, :cond_4

    .line 717
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1$1;-><init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;)V

    invoke-static {p1, v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->access$1402(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator$AnimatorListener;

    .line 774
    :cond_4
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$1900(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object v0, v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    invoke-static {v1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->access$1400(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->showWordRunner(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 779
    :cond_5
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->access$1000(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;)Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;->HOLDING:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 781
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->resumeFromHold()V

    goto :goto_0

    .line 783
    :cond_6
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->access$1000(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;)Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;->PAUSE:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 785
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getClutchTouchListener()Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->showClutch(Z)V

    .line 786
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    sget-object v1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;->HOLDING:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->setMode(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;)V

    .line 787
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->enableForwardRewind(Z)V

    .line 788
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->setPlayPauseEnabled(Z)V

    :cond_7
    :goto_0
    return-void
.end method
