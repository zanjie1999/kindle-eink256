.class Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5$1;
.super Ljava/lang/Object;
.source "ControlPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5;->onStopTrackingTouch(Landroid/widget/SeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5;

.field final synthetic val$seekBar:Landroid/widget/SeekBar;

.field final synthetic val$seekBarPosition:I


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5;ILandroid/widget/SeekBar;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5;

    iput p2, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5$1;->val$seekBarPosition:I

    iput-object p3, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5$1;->val$seekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5;

    iget-object v0, v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->isInDoubletimeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5$1;->val$seekBarPosition:I

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5$1;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 506
    iget v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5$1;->val$seekBarPosition:I

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->progressToWordsPerMin(I)I

    move-result v0

    .line 507
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5$1;->this$1:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5;

    iget-object v1, v1, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$5;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getMetricsHandler()Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->reportWPMMetric(I)V

    :cond_0
    return-void
.end method
