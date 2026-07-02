.class Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer$ModelChangeCallback;
.super Ljava/lang/Object;
.source "ThumbnailScrubberContainer.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelChangeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer$ModelChangeCallback;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer$1;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer$ModelChangeCallback;-><init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer$ModelChangeCallback;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->access$200(Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;)Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer$ModelChangeCallback;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->access$200(Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;)Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V

    return-void
.end method
