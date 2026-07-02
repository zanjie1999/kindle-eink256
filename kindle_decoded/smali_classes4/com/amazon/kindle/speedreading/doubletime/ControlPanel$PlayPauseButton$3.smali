.class Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$3;
.super Ljava/lang/Object;
.source "ControlPanel.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->pause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;)V
    .locals 0

    .line 910
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$3;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 933
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$3;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$1500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$1600(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;Landroid/widget/ImageButton;Z)V

    .line 934
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$3;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$1700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$1600(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;Landroid/widget/ImageButton;Z)V

    .line 936
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$3;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    sget-object v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;->PLAY:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->setMode(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;)V

    .line 937
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$3;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->setPlayPauseEnabled(Z)V

    .line 939
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$3;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getClutchTouchListener()Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->setGesturesDisabled(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 914
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$3;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getClutchTouchListener()Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->setGesturesDisabled(Z)V

    .line 916
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$3;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$2000(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 918
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$3;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->pauseDoubletime()V

    .line 919
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$3;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->setPlayPauseEnabled(Z)V

    .line 924
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton$3;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;

    iget-object p1, p1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseButton;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$2400(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V

    return-void
.end method
