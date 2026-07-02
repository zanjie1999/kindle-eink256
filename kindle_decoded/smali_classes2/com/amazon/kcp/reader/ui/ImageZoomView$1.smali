.class Lcom/amazon/kcp/reader/ui/ImageZoomView$1;
.super Ljava/lang/Object;
.source "ImageZoomView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ImageZoomView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ImageZoomView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ImageZoomView;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView$1;->this$0:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 223
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView$1;->this$0:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->access$000(Lcom/amazon/kcp/reader/ui/ImageZoomView;)Lcom/amazon/kcp/reader/ImageZoomActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView$1;->this$0:Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->access$000(Lcom/amazon/kcp/reader/ui/ImageZoomView;)Lcom/amazon/kcp/reader/ImageZoomActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
