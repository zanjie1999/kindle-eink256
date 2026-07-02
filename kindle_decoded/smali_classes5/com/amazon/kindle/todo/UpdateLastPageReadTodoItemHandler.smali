.class public Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;
.super Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;
.source "UpdateLastPageReadTodoItemHandler.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private final annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

.field private displayMRPRUpdate:Z

.field private final libraryController:Lcom/amazon/kcp/library/ILibraryController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/kindle/annotation/IAnnotationsManager;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;-><init>()V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->displayMRPRUpdate:Z

    .line 62
    iput-object p1, p0, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    .line 63
    iput-object p2, p0, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

    .line 64
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private isSameBook(Lcom/amazon/kindle/model/content/ILocalBookInfo;Lcom/amazon/kindle/model/content/ILocalBookInfo;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 220
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    .line 221
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 222
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method downloadSidecarForKRFBook(Lcom/amazon/kcp/library/models/internal/KRFBookItem;)V
    .locals 2

    .line 246
    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "application/x-topaz"

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->downloadAnnotationsAsync(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/foundation/internal/IObjectCallback;)Z

    :cond_1
    return-void
.end method

.method getBookFromTodoItem(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 2

    .line 229
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType(Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getBookTypeForTodoType(Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    .line 233
    new-instance v1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-direct {v1, v0, p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 235
    iget-object p1, p0, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kcp/library/ILibraryController;->getBookFromBookId(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    return-object p1
.end method

.method getRecencySyncHelper()Lcom/amazon/kindle/contentupdate/RecencySyncHelper;
    .locals 1

    .line 258
    invoke-static {}, Lcom/amazon/kindle/contentupdate/RecencySyncHelperManager;->getInstance()Lcom/amazon/kindle/contentupdate/RecencySyncHelper;

    move-result-object v0

    return-object v0
.end method

.method public handle(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 6

    .line 109
    sget-object v0, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling todoItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->getBookFromTodoItem(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    const-string/jumbo v1, "reset_lpr"

    const/4 v2, 0x0

    .line 114
    invoke-static {p1, v1, v2}, Lcom/amazon/kindle/todo/TodoItemUtils;->getBoolean(Lcom/amazon/kindle/krx/messaging/ITodoItem;Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->resetLprForDemoMode(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    return v2

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 120
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getGuid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getAmzGuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const-string v3, "MrprDialogDelay_TODO"

    .line 129
    invoke-static {v3}, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->resetMetricTimer(Ljava/lang/String;)V

    .line 131
    iget-object v3, p0, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

    sget-object v4, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    new-instance v5, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler$1;

    invoke-direct {v5, p0, p1, v0}, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler$1;-><init>(Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    invoke-interface {v3, v0, v4, v1, v5}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->downloadReadingPositionAsync(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krx/sync/LPRSyncType;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IObjectCallback;)V

    .line 148
    instance-of p1, v0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;

    if-eqz p1, :cond_2

    .line 149
    check-cast v0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->downloadSidecarForKRFBook(Lcom/amazon/kcp/library/models/internal/KRFBookItem;)V

    goto :goto_0

    .line 156
    :cond_1
    sget-object v0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->CANCELLED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->sendTodoItemHandledStatus(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v2
.end method

.method public handleSyncEvent(Lcom/amazon/kindle/sync/SynchronizationManagerEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 81
    invoke-virtual {p1}, Lcom/amazon/kindle/sync/SynchronizationManagerEvent;->getSyncParameters()Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_MANUAL_FULL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-eq v0, v1, :cond_0

    .line 82
    invoke-virtual {p1}, Lcom/amazon/kindle/sync/SynchronizationManagerEvent;->getSyncParameters()Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-ne v0, v1, :cond_1

    .line 83
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/sync/SynchronizationManagerEvent;->getType()Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;->SYNC_STARTED:Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 84
    iput-boolean p1, p0, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->displayMRPRUpdate:Z

    :cond_1
    return-void
.end method

.method public handleTodoEvent(Lcom/amazon/kcp/application/AllTodoItemsHandledEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 102
    invoke-virtual {p1}, Lcom/amazon/kcp/application/AllTodoItemsHandledEvent;->getTodoEvent()Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;->TODO_HANDLE_FINISHED:Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 103
    iput-boolean p1, p0, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->displayMRPRUpdate:Z

    :cond_0
    return-void
.end method

.method proposeMrprDialog(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->getBookAnnotationsManager(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->getServerReadingPosition(Lcom/amazon/kindle/krx/sync/LPRSyncType;)Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->proposeMrprToUser(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)V

    return-void
.end method

.method resetLprForDemoMode(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 5

    .line 191
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 192
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v0

    .line 193
    invoke-direct {p0, v0, p2}, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->isSameBook(Lcom/amazon/kindle/model/content/ILocalBookInfo;Lcom/amazon/kindle/model/content/ILocalBookInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    sget-object p2, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->CANCELLED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    invoke-virtual {p0, p1, p2, v1, v1}, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->sendTodoItemHandledStatus(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 200
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->LPR:Lcom/amazon/kindle/content/ContentMetadataField;

    const/4 v3, -0x1

    .line 201
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 200
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->MRPR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 203
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->FPR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 205
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 204
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->READING_PROGRESS:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 207
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    invoke-interface {v2, p2, v1, v0, v3}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 210
    sget-object p2, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->COMPLETED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    invoke-virtual {p0, p1, p2, v1, v1}, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->sendTodoItemHandledStatus(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_1
    sget-object p2, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->CANCELLED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    invoke-virtual {p0, p1, p2, v1, v1}, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->sendTodoItemHandledStatus(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method sendTodoItemHandledStatus(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V
    .locals 0

    .line 180
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;->onTodoItemHandled(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    return-void
.end method

.method shouldProposeMRPRToUserImmediately()Z
    .locals 2

    .line 240
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->propose_mrpr_immediately:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->displayMRPRUpdate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supports(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 1

    .line 69
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPDATE_LAST_PAGE_READ:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected updateLastAccessTime(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 3

    .line 163
    invoke-virtual {p0}, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->getRecencySyncHelper()Lcom/amazon/kindle/contentupdate/RecencySyncHelper;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/amazon/kindle/todo/UpdateLastPageReadTodoItemHandler;->annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

    invoke-interface {v1, p1}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->getBookAnnotationsManager(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    move-result-object v1

    .line 166
    sget-object v2, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->getServerReadingPosition(Lcom/amazon/kindle/krx/sync/LPRSyncType;)Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;

    move-result-object v2

    if-nez v2, :cond_0

    .line 168
    sget-object v2, Lcom/amazon/kindle/krx/sync/LPRSyncType;->FPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->getServerReadingPosition(Lcom/amazon/kindle/krx/sync/LPRSyncType;)Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    return-void

    .line 174
    :cond_1
    iget-wide v1, v2, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->lprSetTime:J

    .line 175
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {v0, p1, v1, v2}, Lcom/amazon/kindle/contentupdate/RecencySyncHelper;->updateBookRecencyAndNotify(Lcom/amazon/kindle/model/content/IBookID;J)V

    return-void
.end method
