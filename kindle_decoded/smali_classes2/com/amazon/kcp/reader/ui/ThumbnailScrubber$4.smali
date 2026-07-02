.class Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$4;
.super Ljava/lang/Object;
.source "ThumbnailScrubber.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->onProgressChanged(Landroid/widget/SeekBar;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;I)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$4;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    iput p2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$4;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 590
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$4;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->access$200(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)V

    .line 592
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$4;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->access$300(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)Lcom/amazon/kindle/seekbar/LinearMapper;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$4;->val$progress:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->mapNoClamp(F)F

    move-result v0

    float-to-int v0, v0

    .line 593
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$4;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 594
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$4;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->access$400(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)V

    return-void
.end method
