.class Lcom/amazon/kcp/reader/ui/ReaderLayout$3;
.super Ljava/lang/Object;
.source "ReaderLayout.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ReaderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$3;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    .line 408
    new-instance v0, Landroid/graphics/Rect;

    .line 409
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    .line 410
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getStableInsetRight()I

    move-result v3

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 412
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$3;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/amazon/android/util/UIUtils;->isActivityInMultiWindowedMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 413
    :goto_0
    invoke-static {v1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->setInMultiWindowMode(Z)V

    .line 415
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$3;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getVisibleOverlays()I

    move-result v3

    if-nez v3, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$3;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v3, v3, Lcom/amazon/kcp/reader/ui/ReaderLayout;->insets:Landroid/graphics/Rect;

    .line 416
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 417
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$3;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iput-object v0, v3, Lcom/amazon/kcp/reader/ui/ReaderLayout;->insets:Landroid/graphics/Rect;

    .line 421
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v3

    new-instance v4, Lcom/amazon/kcp/reader/ui/ReaderLayout$3$1;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$3$1;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout$3;)V

    invoke-interface {v3, v4}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 429
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 431
    :cond_3
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_1
    return-object p2
.end method
