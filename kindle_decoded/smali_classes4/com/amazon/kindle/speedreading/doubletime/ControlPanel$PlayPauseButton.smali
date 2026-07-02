.class Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;
.super Ljava/lang/Object;
.source "ControlPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayPauseButton"
.end annotation


# instance fields
.field private button:Landroid/widget/ImageButton;

.field private isEnabled:Z

.field private mode:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

.field private pauseAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private playAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field final synthetic this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;Landroid/widget/ImageButton;)V
    .locals 1

    .line 681
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 675
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->isEnabled:Z

    const/4 v0, 0x0

    .line 677
    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->playAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 678
    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->pauseAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 682
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->button:Landroid/widget/ImageButton;

    .line 683
    sget-object v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;->PLAY:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->mode:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    .line 684
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$1;-><init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;)Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;
    .locals 0

    .line 672
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->mode:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 672
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->playAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 672
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->playAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object p1
.end method


# virtual methods
.method pause()V
    .locals 5

    .line 885
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$1900(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->cancelAnimation()V

    .line 889
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->isDoubletimePaused()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    .line 897
    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getClutchTouchListener()Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->isShowingClutch()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 903
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getMetricsHandler()Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    .line 904
    invoke-static {v3}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    .line 903
    invoke-virtual {v0, v3}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->reportEndDoubleTimeLooperMetrics(I)V

    .line 907
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->pauseAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-nez v0, :cond_4

    .line 909
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$3;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$3;-><init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;)V

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->pauseAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 948
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$2100(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V

    .line 949
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$1900(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v3}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->pauseAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3, v4}, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->hideWordRunner(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;Landroid/animation/Animator$AnimatorListener;)V

    .line 952
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$2500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V

    .line 953
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$300(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->setOverlaysVisible(ZZ)V

    return-void
.end method

.method resumeFromHold()V
    .locals 4

    .line 839
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$2000(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 840
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$2100(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V

    .line 841
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$2200(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 843
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$2000(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$2300(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 846
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->enablePlayPause(Z)V

    .line 848
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;->PAUSE:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->setPlayPauseMode(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;)V

    .line 850
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getClutchTouchListener()Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->setGesturesDisabled(Z)V

    .line 851
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->enableCloseButton(Z)V

    .line 853
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$2000(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$2;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$2;-><init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method setMode(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 803
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->mode:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    .line 804
    sget-object v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$9;->$SwitchMap$com$amazon$kindle$speedreading$doubletime$ControlPanel$PlayPauseMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 811
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->button:Landroid/widget/ImageButton;

    sget v0, Lcom/amazon/kindle/speedreading/R$drawable;->dt_pause_large:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 808
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->button:Landroid/widget/ImageButton;

    sget v0, Lcom/amazon/kindle/speedreading/R$drawable;->dt_play_large:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method setPlayPauseEnabled(Z)V
    .locals 1

    .line 824
    iput-boolean p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->isEnabled:Z

    .line 825
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->button:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 829
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->button:Landroid/widget/ImageButton;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_0

    .line 833
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->button:Landroid/widget/ImageButton;

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    :goto_0
    return-void
.end method
