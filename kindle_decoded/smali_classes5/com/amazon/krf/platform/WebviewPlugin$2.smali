.class Lcom/amazon/krf/platform/WebviewPlugin$2;
.super Ljava/lang/Object;
.source "WebviewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/WebviewPlugin;
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

    .line 117
    iput-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin$2;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 121
    invoke-static {}, Lcom/amazon/krf/platform/ThreadUtils;->assertRunningOnUiThread()V

    .line 122
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$2;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-static {v0}, Lcom/amazon/krf/platform/WebviewPlugin;->access$100(Lcom/amazon/krf/platform/WebviewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$2;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-static {v0}, Lcom/amazon/krf/platform/WebviewPlugin;->access$100(Lcom/amazon/krf/platform/WebviewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$2;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-static {v0}, Lcom/amazon/krf/platform/WebviewPlugin;->access$200(Lcom/amazon/krf/platform/WebviewPlugin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$2;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-static {v0}, Lcom/amazon/krf/platform/WebviewPlugin;->access$100(Lcom/amazon/krf/platform/WebviewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$2;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-static {v0}, Lcom/amazon/krf/platform/WebviewPlugin;->access$300(Lcom/amazon/krf/platform/WebviewPlugin;)V

    :cond_0
    return-void
.end method
