.class Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$3;
.super Ljava/lang/Object;
.source "ThumbnailScrubber.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$pageIndexForView:I

.field final synthetic val$viewID:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;II)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$3;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    iput p2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$3;->val$viewID:I

    iput p3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$3;->val$pageIndexForView:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$3;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$3;->val$viewID:I

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$3;->val$pageIndexForView:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->sendThumbnailUpdateRequest(II)V

    return-void
.end method
