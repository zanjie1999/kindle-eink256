.class Lcom/amazon/krf/platform/WebviewPlugin$6;
.super Ljava/lang/Object;
.source "WebviewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/platform/WebviewPlugin;->setScaleFactor(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/platform/WebviewPlugin;

.field final synthetic val$scaleFactor:D


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/WebviewPlugin;D)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin$6;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    iput-wide p2, p0, Lcom/amazon/krf/platform/WebviewPlugin$6;->val$scaleFactor:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$6;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-static {v0}, Lcom/amazon/krf/platform/WebviewPlugin;->access$100(Lcom/amazon/krf/platform/WebviewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$6;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    iget-wide v1, p0, Lcom/amazon/krf/platform/WebviewPlugin$6;->val$scaleFactor:D

    invoke-static {v0, v1, v2}, Lcom/amazon/krf/platform/WebviewPlugin;->access$1002(Lcom/amazon/krf/platform/WebviewPlugin;D)D

    return-void

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "The webview has already been initialized in the webview plugin. The new scale factor will be ignored."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
