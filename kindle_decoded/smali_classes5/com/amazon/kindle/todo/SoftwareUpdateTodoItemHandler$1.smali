.class Lcom/amazon/kindle/todo/SoftwareUpdateTodoItemHandler$1;
.super Ljava/lang/Object;
.source "SoftwareUpdateTodoItemHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/todo/SoftwareUpdateTodoItemHandler;->handle(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/todo/SoftwareUpdateTodoItemHandler;Lcom/amazon/kindle/krx/messaging/ITodoItem;)V
    .locals 0

    .line 38
    iput-object p2, p0, Lcom/amazon/kindle/todo/SoftwareUpdateTodoItemHandler$1;->val$todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 41
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUpdateManager()Lcom/amazon/kcp/application/internal/IUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/todo/SoftwareUpdateTodoItemHandler$1;->val$todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/internal/IUpdateManager;->processUpdateTodoItem(Lcom/amazon/kindle/krx/messaging/ITodoItem;)V

    return-void
.end method
