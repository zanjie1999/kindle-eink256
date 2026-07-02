.class Lcom/amazon/kindle/seekbar/LayeredSeekBar$1;
.super Ljava/lang/Object;
.source "LayeredSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/seekbar/LayeredSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/seekbar/LayeredSeekBar;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/seekbar/LayeredSeekBar;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$1;->this$0:Lcom/amazon/kindle/seekbar/LayeredSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$1;->this$0:Lcom/amazon/kindle/seekbar/LayeredSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    invoke-static {p1, p2, p3}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->access$000(Lcom/amazon/kindle/seekbar/LayeredSeekBar;IZ)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 123
    iget-object p1, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$1;->this$0:Lcom/amazon/kindle/seekbar/LayeredSeekBar;

    invoke-static {p1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->access$100(Lcom/amazon/kindle/seekbar/LayeredSeekBar;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 128
    iget-object p1, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$1;->this$0:Lcom/amazon/kindle/seekbar/LayeredSeekBar;

    invoke-static {p1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->access$200(Lcom/amazon/kindle/seekbar/LayeredSeekBar;)V

    return-void
.end method
