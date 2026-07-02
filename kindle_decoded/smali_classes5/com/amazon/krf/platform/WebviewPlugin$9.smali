.class Lcom/amazon/krf/platform/WebviewPlugin$9;
.super Ljava/lang/Object;
.source "WebviewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/platform/WebviewPlugin;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/platform/WebviewPlugin;


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/WebviewPlugin;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin$9;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 472
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$9;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-static {v0}, Lcom/amazon/krf/platform/WebviewPlugin;->access$1100(Lcom/amazon/krf/platform/WebviewPlugin;)Lcom/amazon/krf/platform/KRFView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$9;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-static {v0}, Lcom/amazon/krf/platform/WebviewPlugin;->access$600(Lcom/amazon/krf/platform/WebviewPlugin;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$9;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-static {v0}, Lcom/amazon/krf/platform/WebviewPlugin;->access$1100(Lcom/amazon/krf/platform/WebviewPlugin;)Lcom/amazon/krf/platform/KRFView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/krf/platform/WebviewPlugin$9;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-static {v1}, Lcom/amazon/krf/platform/WebviewPlugin;->access$600(Lcom/amazon/krf/platform/WebviewPlugin;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$9;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-static {v0}, Lcom/amazon/krf/platform/WebviewPlugin;->access$100(Lcom/amazon/krf/platform/WebviewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$9;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-static {v0}, Lcom/amazon/krf/platform/WebviewPlugin;->access$100(Lcom/amazon/krf/platform/WebviewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    .line 481
    iget-object v2, p0, Lcom/amazon/krf/platform/WebviewPlugin$9;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-static {v2}, Lcom/amazon/krf/platform/WebviewPlugin;->access$100(Lcom/amazon/krf/platform/WebviewPlugin;)Landroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Lcom/amazon/krf/platform/WebviewPlugin$9$1;

    invoke-direct {v3, p0, v0}, Lcom/amazon/krf/platform/WebviewPlugin$9$1;-><init>(Lcom/amazon/krf/platform/WebviewPlugin$9;Landroid/webkit/WebView;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 490
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$9;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-static {v0, v1}, Lcom/amazon/krf/platform/WebviewPlugin;->access$102(Lcom/amazon/krf/platform/WebviewPlugin;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$9;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-static {v0, v1}, Lcom/amazon/krf/platform/WebviewPlugin;->access$602(Lcom/amazon/krf/platform/WebviewPlugin;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 493
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$9;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-static {v0, v1}, Lcom/amazon/krf/platform/WebviewPlugin;->access$1102(Lcom/amazon/krf/platform/WebviewPlugin;Lcom/amazon/krf/platform/KRFView;)Lcom/amazon/krf/platform/KRFView;

    .line 494
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$9;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-static {v0, v1}, Lcom/amazon/krf/platform/WebviewPlugin;->access$402(Lcom/amazon/krf/platform/WebviewPlugin;Lcom/amazon/krf/platform/Rect25D;)Lcom/amazon/krf/platform/Rect25D;

    .line 495
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$9;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-static {v0, v1}, Lcom/amazon/krf/platform/WebviewPlugin;->access$1202(Lcom/amazon/krf/platform/WebviewPlugin;Ljava/lang/String;)Ljava/lang/String;

    .line 496
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$9;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-static {v0, v1}, Lcom/amazon/krf/platform/WebviewPlugin;->access$1302(Lcom/amazon/krf/platform/WebviewPlugin;Lcom/amazon/krf/platform/KRFResourceProvider;)Lcom/amazon/krf/platform/KRFResourceProvider;

    return-void
.end method
