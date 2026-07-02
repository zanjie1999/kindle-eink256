.class Lcom/amazon/kcp/reader/ui/LayoutCache$1;
.super Ljava/lang/Object;
.source "LayoutCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/LayoutCache;->getLayout(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/LayoutCache;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$layoutId:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/LayoutCache;ILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/LayoutCache$1;->this$0:Lcom/amazon/kcp/reader/ui/LayoutCache;

    iput p2, p0, Lcom/amazon/kcp/reader/ui/LayoutCache$1;->val$layoutId:I

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/LayoutCache$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/LayoutCache$1;->this$0:Lcom/amazon/kcp/reader/ui/LayoutCache;

    iget v1, p0, Lcom/amazon/kcp/reader/ui/LayoutCache$1;->val$layoutId:I

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/LayoutCache;->getLayout(I)Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/LayoutCache$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
