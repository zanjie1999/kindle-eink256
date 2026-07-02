.class Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer$2;
.super Ljava/lang/Object;
.source "ThumbnailScrubberContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->alignScrubberToCurrentReadingPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer$2;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer$2;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->access$400(Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;)Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->alignScrubberToCurrentReadingPage()V

    return-void
.end method
