.class Lcom/amazon/krf/platform/WebviewPlugin$4;
.super Ljava/lang/Object;
.source "WebviewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/platform/WebviewPlugin;->setVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/platform/WebviewPlugin;

.field final synthetic val$isVisible:Z


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/WebviewPlugin;Z)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin$4;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    iput-boolean p2, p0, Lcom/amazon/krf/platform/WebviewPlugin$4;->val$isVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 180
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$4;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    iget-boolean v1, p0, Lcom/amazon/krf/platform/WebviewPlugin$4;->val$isVisible:Z

    invoke-static {v0, v1}, Lcom/amazon/krf/platform/WebviewPlugin;->access$202(Lcom/amazon/krf/platform/WebviewPlugin;Z)Z

    .line 181
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$4;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-static {v0}, Lcom/amazon/krf/platform/WebviewPlugin;->access$600(Lcom/amazon/krf/platform/WebviewPlugin;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$4;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-static {v0}, Lcom/amazon/krf/platform/WebviewPlugin;->access$600(Lcom/amazon/krf/platform/WebviewPlugin;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amazon/krf/platform/WebviewPlugin$4;->val$isVisible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 184
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$4;->val$isVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$4;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-static {v0}, Lcom/amazon/krf/platform/WebviewPlugin;->access$700(Lcom/amazon/krf/platform/WebviewPlugin;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$4;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-static {v0}, Lcom/amazon/krf/platform/WebviewPlugin;->access$000(Lcom/amazon/krf/platform/WebviewPlugin;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/krf/platform/WebviewPlugin$4;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-static {v1}, Lcom/amazon/krf/platform/WebviewPlugin;->access$800(Lcom/amazon/krf/platform/WebviewPlugin;)D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double v1, v1, v3

    double-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method
