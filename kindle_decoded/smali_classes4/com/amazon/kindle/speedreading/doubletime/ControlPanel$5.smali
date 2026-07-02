.class Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5;
.super Ljava/lang/Object;
.source "ControlPanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->inflateView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$speedBar:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;Landroid/app/Activity;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5;->val$speedBar:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;

    iput-object p3, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .line 522
    invoke-static {p2}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->progressToWordsPerMin(I)I

    move-result p1

    .line 523
    iget-object p3, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p3, p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$800(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;I)D

    move-result-wide v0

    .line 525
    iget-object p3, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    int-to-double v2, p1

    add-double/2addr v2, v0

    invoke-static {p3, v2, v3}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$900(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;D)J

    move-result-wide v0

    .line 526
    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->setUserDelay(JI)V

    .line 528
    iget-object p3, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5;->val$activity:Landroid/app/Activity;

    const-string v0, "DoubleTime"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    .line 529
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v0, "word_speed"

    .line 531
    invoke-interface {p3, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 532
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 534
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5;->val$speedBar:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->updateTextView(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 517
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5;->val$speedBar:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->setTracking(Z)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    .line 492
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 497
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 498
    new-instance v2, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5$1;-><init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5;ILandroid/widget/SeekBar;)V

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 512
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5;->val$speedBar:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->setTracking(Z)V

    return-void
.end method
