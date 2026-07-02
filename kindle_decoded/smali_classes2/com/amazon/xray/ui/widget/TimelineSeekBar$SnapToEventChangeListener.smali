.class Lcom/amazon/xray/ui/widget/TimelineSeekBar$SnapToEventChangeListener;
.super Ljava/lang/Object;
.source "TimelineSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/widget/TimelineSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SnapToEventChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$SnapToEventChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/widget/TimelineSeekBar;Lcom/amazon/xray/ui/widget/TimelineSeekBar$1;)V
    .locals 0

    .line 557
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar$SnapToEventChangeListener;-><init>(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_1

    .line 561
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$SnapToEventChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$200(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Lcom/amazon/xray/ui/widget/TimelineSeekBar$OnTimelineSeekBarChangeListener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 565
    :cond_0
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$SnapToEventChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$300(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)I

    move-result p1

    add-int/2addr p2, p1

    .line 566
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$SnapToEventChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-virtual {p1, p2}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->getEventIndexForPosition(I)I

    move-result p1

    .line 567
    iget-object p2, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$SnapToEventChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {p2}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$200(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Lcom/amazon/xray/ui/widget/TimelineSeekBar$OnTimelineSeekBarChangeListener;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$SnapToEventChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {p3}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$400(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)[I

    move-result-object v0

    aget v0, v0, p1

    invoke-interface {p2, p3, p1, v0}, Lcom/amazon/xray/ui/widget/TimelineSeekBar$OnTimelineSeekBarChangeListener;->onProgressChanged(Lcom/amazon/xray/ui/widget/TimelineSeekBar;II)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 573
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$SnapToEventChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$200(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Lcom/amazon/xray/ui/widget/TimelineSeekBar$OnTimelineSeekBarChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 574
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$SnapToEventChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$200(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Lcom/amazon/xray/ui/widget/TimelineSeekBar$OnTimelineSeekBarChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$SnapToEventChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-interface {p1, v0}, Lcom/amazon/xray/ui/widget/TimelineSeekBar$OnTimelineSeekBarChangeListener;->onStartTrackingTouch(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 580
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$SnapToEventChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$200(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Lcom/amazon/xray/ui/widget/TimelineSeekBar$OnTimelineSeekBarChangeListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 584
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$SnapToEventChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$300(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)I

    move-result v0

    add-int/2addr p1, v0

    .line 585
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$SnapToEventChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-virtual {v0, p1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->getEventIndexForPosition(I)I

    move-result p1

    .line 586
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$SnapToEventChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$200(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Lcom/amazon/xray/ui/widget/TimelineSeekBar$OnTimelineSeekBarChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$SnapToEventChangeListener;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$400(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)[I

    move-result-object v2

    aget v2, v2, p1

    invoke-interface {v0, v1, p1, v2}, Lcom/amazon/xray/ui/widget/TimelineSeekBar$OnTimelineSeekBarChangeListener;->onStopTrackingTouch(Lcom/amazon/xray/ui/widget/TimelineSeekBar;II)V

    return-void
.end method
