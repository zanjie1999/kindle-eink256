.class Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler$1;
.super Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$RemoteTodoWebRequest;
.source "PageNumbersTodoItemHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;->handle(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;

.field final synthetic val$asin:Ljava/lang/String;

.field final synthetic val$filenameAndPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler$1;->this$0:Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;

    iput-object p4, p0, Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler$1;->val$filenameAndPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler$1;->val$asin:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$RemoteTodoWebRequest;-><init>(Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;)V

    return-void
.end method


# virtual methods
.method public onRequestComplete()Z
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler$1;->this$0:Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;

    invoke-static {v0}, Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;->access$000(Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;)Lcom/amazon/kcp/application/IKindleApplicationController;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler$1;->val$filenameAndPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler$1;->val$asin:Ljava/lang/String;

    invoke-static {v0, p0, v1, v2, v3}, Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;->access$100(Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kcp/application/IKindleApplicationController;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-super {p0}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$RemoteTodoWebRequest;->onRequestComplete()Z

    const/4 v0, 0x1

    return v0
.end method
