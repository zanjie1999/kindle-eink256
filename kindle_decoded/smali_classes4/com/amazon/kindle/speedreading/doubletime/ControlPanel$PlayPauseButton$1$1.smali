.class Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1$1;
.super Ljava/lang/Object;
.source "ControlPanel.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;)V
    .locals 0

    .line 718
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1$1;->this$2:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 741
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1$1;->this$2:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getClutchTouchListener()Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->setGesturesDisabled(Z)V

    const/4 p1, 0x1

    .line 746
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1$1;->this$2:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;

    iget-object v1, v1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object v1, v1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1$1;->this$2:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;

    iget-object v2, v2, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object v2, v2, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v2}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->resumeDoubletime(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1$1;->this$2:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;

    iget-object v0, v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    sget-object v1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;->PAUSE:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->setMode(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;)V

    .line 757
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1$1;->this$2:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;

    iget-object v0, v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->setPlayPauseEnabled(Z)V

    .line 758
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1$1;->this$2:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;

    iget-object v0, v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object v0, v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->enableCloseButton(Z)V

    .line 761
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1$1;->this$2:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$1800(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/SystemMarginView;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/speedreading/R$id;->doubletime_speed_bar:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;

    .line 764
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->progressToWordsPerMin(I)I

    move-result p1

    .line 765
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1$1;->this$2:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;

    iget-object v0, v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object v0, v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getMetricsHandler()Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1$1;->this$2:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;

    iget-object v1, v1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object v1, v1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    .line 766
    invoke-static {v1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    .line 765
    invoke-virtual {v0, v1, p1}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->reportStartDoubleTimeLooperMetric(II)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 722
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1$1;->this$2:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getClutchTouchListener()Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->setGesturesDisabled(Z)V

    .line 724
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1$1;->this$2:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$1500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$1600(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;Landroid/widget/ImageButton;Z)V

    .line 725
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1$1;->this$2:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$1700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$1600(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;Landroid/widget/ImageButton;Z)V

    .line 727
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1$1;->this$2:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->enableCloseButton(Z)V

    .line 728
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1$1;->this$2:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->setPlayPauseEnabled(Z)V

    .line 729
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1$1;->this$2:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$300(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object p1

    .line 730
    invoke-interface {p1, v1, v1}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->setOverlaysVisible(ZZ)V

    .line 732
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1$1;->this$2:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$300(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookSelection()Lcom/amazon/kindle/krx/content/IContentSelection;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->selectNone()V

    return-void
.end method
