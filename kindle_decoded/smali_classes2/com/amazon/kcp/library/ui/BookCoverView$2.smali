.class Lcom/amazon/kcp/library/ui/BookCoverView$2;
.super Ljava/lang/Object;
.source "BookCoverView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/ui/BookCoverView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/ui/BookCoverView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/ui/BookCoverView;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView$2;->this$0:Lcom/amazon/kcp/library/ui/BookCoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView$2;->this$0:Lcom/amazon/kcp/library/ui/BookCoverView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
