.class public Lcom/amazon/kindle/todo/UpdateAnnotationTodoItemHandler;
.super Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;
.source "UpdateAnnotationTodoItemHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appController:Lcom/amazon/kcp/application/IKindleApplicationController;

.field private libraryController:Lcom/amazon/kcp/library/ILibraryController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/kindle/todo/UpdateAnnotationTodoItemHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/todo/UpdateAnnotationTodoItemHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/kcp/application/IKindleApplicationController;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/kindle/todo/UpdateAnnotationTodoItemHandler;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    .line 33
    iput-object p2, p0, Lcom/amazon/kindle/todo/UpdateAnnotationTodoItemHandler;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/todo/UpdateAnnotationTodoItemHandler;Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;->onTodoItemHandled(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 3

    .line 43
    sget-object v0, Lcom/amazon/kindle/todo/UpdateAnnotationTodoItemHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling todoItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType(Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getBookTypeForTodoType(Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    .line 49
    new-instance v2, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-direct {v2, v0, v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/todo/UpdateAnnotationTodoItemHandler;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/ILibraryController;->getBookFromBookId(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->isAnnotationsSyncEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAnnotationsManager()Lcom/amazon/kindle/annotation/IAnnotationsManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/todo/UpdateAnnotationTodoItemHandler$1;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kindle/todo/UpdateAnnotationTodoItemHandler$1;-><init>(Lcom/amazon/kindle/todo/UpdateAnnotationTodoItemHandler;Lcom/amazon/kindle/krx/messaging/ITodoItem;)V

    invoke-interface {v1, v0, v2}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->downloadAnnotationsAsync(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/foundation/internal/IObjectCallback;)Z

    goto :goto_0

    .line 71
    :cond_0
    sget-object v0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->CANCELLED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;->onTodoItemHandled(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public supports(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 1

    .line 38
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPDATE_ANNOTATION:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
