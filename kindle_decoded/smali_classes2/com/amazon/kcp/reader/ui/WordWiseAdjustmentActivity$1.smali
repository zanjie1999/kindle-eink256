.class Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity$1;
.super Ljava/lang/Object;
.source "WordWiseAdjustmentActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    int-to-double p1, p2

    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    div-double/2addr p1, v0

    .line 99
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p2, p1

    add-int/lit8 p2, p2, 0x1

    .line 100
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;

    invoke-static {p1, p2}, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->access$000(Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
