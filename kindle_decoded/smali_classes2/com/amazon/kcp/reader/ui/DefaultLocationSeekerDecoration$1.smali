.class Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration$1;
.super Ljava/lang/Object;
.source "DefaultLocationSeekerDecoration.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getChangeListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration$1;->this$0:Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration$1;->this$0:Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration$1;->this$0:Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->access$002(Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;Z)Z

    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration$1;->this$0:Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration$1;->this$0:Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->access$002(Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;Z)Z

    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration$1;->this$0:Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    return-void
.end method
