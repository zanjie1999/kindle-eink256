.class Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler$1;
.super Ljava/lang/Object;
.source "DownloadContentTodoItemHandler.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IBooleanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;->startSync(Lcom/amazon/kindle/krx/messaging/ITodoItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;

.field final synthetic val$todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;Lcom/amazon/kindle/krx/messaging/ITodoItem;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler$1;->this$0:Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;

    iput-object p2, p0, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler$1;->val$todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 130
    invoke-static {}, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Sync has finished unsuccessfully"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler$1;->val$todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType(Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object p1

    .line 133
    iget-object v0, p0, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler$1;->this$0:Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;

    invoke-static {v0}, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;->access$100(Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler$1;->val$todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {p1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getBookTypeForTodoType(Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 133
    invoke-interface {v0, v1, p1, v2, v3}, Lcom/amazon/kindle/content/ILibraryService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 137
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isSample()Z

    move-result v0

    if-nez v0, :cond_2

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 139
    new-instance v1, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler$1$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler$1$1;-><init>(Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler$1;Lcom/amazon/kindle/content/ContentMetadata;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
