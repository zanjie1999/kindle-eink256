.class Lcom/amazon/kindle/todo/DcpTodoReceiver$1;
.super Ljava/lang/Object;
.source "DcpTodoReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/todo/DcpTodoReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/todo/DcpTodoReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/todo/DcpTodoReceiver;Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/kindle/todo/DcpTodoReceiver$1;->this$0:Lcom/amazon/kindle/todo/DcpTodoReceiver;

    iput-object p2, p0, Lcom/amazon/kindle/todo/DcpTodoReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/amazon/kindle/todo/DcpTodoReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/amazon/kindle/todo/DcpTodoReceiver$1;->val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/todo/DcpTodoReceiver$1;->this$0:Lcom/amazon/kindle/todo/DcpTodoReceiver;

    iget-object v1, p0, Lcom/amazon/kindle/todo/DcpTodoReceiver$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/kindle/todo/DcpTodoReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/todo/DcpTodoReceiver;->access$000(Lcom/amazon/kindle/todo/DcpTodoReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 44
    invoke-static {}, Lcom/amazon/kindle/todo/DcpTodoReceiver;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Executing Async task for Dcp Todo action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/todo/DcpTodoReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/todo/DcpTodoReceiver$1;->val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method
