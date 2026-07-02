.class Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer$1;
.super Ljava/lang/Object;
.source "ThumbnailScrubberContainer.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;
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

    .line 77
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer$1;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 2

    .line 80
    invoke-static {}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->access$000()Ljava/lang/String;

    .line 81
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer$1;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->access$100(Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;)Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 82
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer$1;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {p1}, Lcom/amazon/android/util/UIUtils;->convertScreenToConfigurationOrientation(I)I

    move-result p1

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer$1;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->adjustMargins(Landroid/content/Context;I)V

    return-void
.end method
