.class Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$1;
.super Ljava/lang/Object;
.source "ThumbnailScrubber.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 267
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$1;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$1;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    invoke-static {v0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->access$000(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;Landroid/view/View;)I

    move-result p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->access$100(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;IZZ)V

    return-void
.end method
