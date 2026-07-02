.class Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$2;
.super Ljava/lang/Object;
.source "ThumbnailScrubber.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->loadInitialThumbnails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$2;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 278
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    .line 279
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$2;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getThumbnailScrubberContainer()Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->cancelHideOverlaysAfterDelay()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
