.class public Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;
.super Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;
.source "PageNumbersTodoItemHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appController:Lcom/amazon/kcp/application/IKindleApplicationController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;)Lcom/amazon/kcp/application/IKindleApplicationController;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kcp/application/IKindleApplicationController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;->onCompleteCallback(Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kcp/application/IKindleApplicationController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createResponseHandler(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IResponseHandler;
    .locals 0

    .line 92
    new-instance p1, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;

    invoke-direct {p1}, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;-><init>()V

    .line 93
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->setDownloadFile(Ljava/lang/String;)V

    return-object p1
.end method

.method private makePathIfNecessary(Ljava/lang/String;)Z
    .locals 1

    .line 81
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    .line 84
    sget-object p1, Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;->TAG:Ljava/lang/String;

    const-string v0, "Unable to create location for book storage"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private onCompleteCallback(Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kcp/application/IKindleApplicationController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 99
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object p2

    .line 101
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    const-string v1, "DownloadPageNumbersSidecarCommand"

    if-nez v0, :cond_3

    .line 110
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPageNumberProviderFactory()Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/IPageNumberProviderFactory;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/IPageNumberProviderFactory;->getContentType(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 113
    new-instance v0, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-direct {v0, p4, p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 114
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p1

    .line 115
    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-interface {p1, v0}, Lcom/amazon/kcp/library/ILibraryController;->getBookFromBookId(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 117
    invoke-interface {p1, p3}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setPageLabelFile(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error adding page numbers sidecar: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    sget-object p1, Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;->TAG:Ljava/lang/String;

    const-string p4, "Error adding page numbers sidecar"

    invoke-static {p1, p4}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p4, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v0, "SidecarAddToLibraryFailed"

    invoke-virtual {p1, v1, v0, p4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 124
    invoke-static {p2, p3}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string p2, "SidecarDownloadSucceeded"

    invoke-virtual {p1, v1, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t find ASIN "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " in the library, can\'t add sidecar."

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    invoke-static {p2, p3}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    goto :goto_0

    .line 139
    :cond_2
    sget-object p1, Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;->TAG:Ljava/lang/String;

    const-string p4, "Couldn\'t read book type, the book was corrupt or the sidecar didn\'t have page number mappings"

    invoke-static {p1, p4}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {p2, p3}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    goto :goto_0

    .line 145
    :cond_3
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p1

    sget-object p4, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_WRITE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne p1, p4, :cond_4

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot create output stream from file "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    sget-object p1, Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;->TAG:Ljava/lang/String;

    const-string p4, "Cannot create output stream from file"

    invoke-static {p1, p4}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p4, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v0, "SidecarStreamCreationError"

    invoke-virtual {p1, v1, v0, p4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 153
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p4, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v0, "SidecarDownloadFailed"

    invoke-virtual {p1, v1, v0, p4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 156
    invoke-static {p2, p3}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public handle(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 9

    .line 49
    sget-object v0, Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling todoItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 52
    new-instance v0, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v0, v7, v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 53
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/io/IPathDescriptor;->getBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v1

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".apnx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/io/FileSystemHelper;->addTemporaryExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-direct {p0, v1}, Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;->makePathIfNecessary(Ljava/lang/String;)Z

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    new-instance v8, Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler$1;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getURL()Ljava/lang/String;

    move-result-object v4

    move-object v2, v8

    move-object v3, p0

    move-object v5, p1

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler$1;-><init>(Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 66
    invoke-interface {v8, v2}, Lcom/amazon/kindle/webservices/IWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object v3

    .line 67
    invoke-interface {v3, v2}, Lcom/amazon/kindle/webservices/IWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object v3

    .line 68
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/amazon/kindle/todo/PageNumbersTodoItemHandler;->createResponseHandler(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/amazon/kindle/webservices/IWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 72
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSidecarDownloadService()Lcom/amazon/kindle/services/download/ISidecarDownloadService;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v8, v3}, Lcom/amazon/kindle/services/download/ISidecarDownloadService;->download(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/webservices/IWebRequest;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    sget-object v0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->COMPLETED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    invoke-virtual {p0, p1, v0, v3, v3}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;->onTodoItemHandled(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    :cond_0
    return v2
.end method

.method public supports(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 2

    .line 43
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->DOWNLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->APNX:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
