.class Lcom/amazon/kcp/debug/DebugActivity$44;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity;->onDumpHeap(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivity;

.field final synthetic val$file:Ljava/lang/String;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 2498
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$44;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$44;->val$file:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/debug/DebugActivity$44;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2502
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivity$44;->val$file:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2504
    invoke-static {}, Lcom/amazon/kcp/debug/DebugActivity;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "failed to dump heap"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2506
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivity$44;->val$view:Landroid/view/View;

    new-instance v1, Lcom/amazon/kcp/debug/DebugActivity$44$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/debug/DebugActivity$44$1;-><init>(Lcom/amazon/kcp/debug/DebugActivity$44;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
