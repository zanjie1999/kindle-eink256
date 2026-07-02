.class Lcom/amazon/kcp/reader/ui/ReaderLayout$3$1;
.super Ljava/lang/Object;
.source "ReaderLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderLayout$3;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$3;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout$3;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$3$1;->this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$3$1;->this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$3;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$3;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
