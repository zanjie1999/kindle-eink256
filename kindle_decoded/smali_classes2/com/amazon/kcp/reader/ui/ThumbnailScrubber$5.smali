.class Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$5;
.super Ljava/lang/Object;
.source "ThumbnailScrubber.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->alignScrubberToCurrentReadingPage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

.field final synthetic val$animated:Z


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;Z)V
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$5;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$5;->val$animated:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 671
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$5;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    .line 672
    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->access$500(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)I

    move-result v1

    iget-boolean v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$5;->val$animated:Z

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->access$600(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;IZ)V

    .line 673
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$5;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->access$700(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)V

    return-void
.end method
