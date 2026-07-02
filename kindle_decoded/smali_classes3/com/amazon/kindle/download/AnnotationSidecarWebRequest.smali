.class public Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "AnnotationSidecarWebRequest.java"


# static fields
.field private static final INVALID_URL:Ljava/lang/String; = "invalid-url"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected asin:Ljava/lang/String;

.field protected book:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field private fileConnectionFactory:Lcom/amazon/kindle/io/IFileConnectionFactory;

.field protected filenameAndPath:Ljava/lang/String;

.field private type:Lcom/amazon/kcp/library/models/BookType;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p3}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object p3, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->url:Ljava/lang/String;

    .line 52
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->asin:Ljava/lang/String;

    .line 53
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->type:Lcom/amazon/kcp/library/models/BookType;

    .line 54
    iput-object p2, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->fileConnectionFactory:Lcom/amazon/kindle/io/IFileConnectionFactory;

    .line 55
    iget-object p1, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->url:Ljava/lang/String;

    .line 56
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setUrl(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    const/4 p3, 0x1

    .line 57
    invoke-interface {p1, p3}, Lcom/amazon/kindle/webservices/IWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    .line 58
    invoke-interface {p1, p3}, Lcom/amazon/kindle/webservices/IWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    .line 60
    invoke-virtual {p0}, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->getSidecarFileNameAndPath()Ljava/lang/String;

    move-result-object p3

    .line 59
    invoke-direct {p0, p2, p3}, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->createResponseHandler(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/webservices/IWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/io/IFileConnectionFactory;)V
    .locals 2

    const-string v0, "invalid-url"

    .line 66
    invoke-direct {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>(Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 68
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->asin:Ljava/lang/String;

    .line 69
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->type:Lcom/amazon/kcp/library/models/BookType;

    .line 70
    iput-object p2, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->fileConnectionFactory:Lcom/amazon/kindle/io/IFileConnectionFactory;

    .line 71
    iget-object v1, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->asin:Ljava/lang/String;

    .line 72
    invoke-static {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getTodoTypeFromBookType(Lcom/amazon/kcp/library/models/BookType;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getAmzGuid()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {v1, v0, p1}, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->createSidecarRequestPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->url:Ljava/lang/String;

    .line 74
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setUrl(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    const/4 v0, 0x1

    .line 75
    invoke-interface {p1, v0}, Lcom/amazon/kindle/webservices/IWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    .line 76
    invoke-interface {p1, v0}, Lcom/amazon/kindle/webservices/IWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    .line 78
    invoke-virtual {p0}, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->getSidecarFileNameAndPath()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-direct {p0, p2, v0}, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->createResponseHandler(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/webservices/IWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method

.method private static computePathToDownload(Lcom/amazon/kcp/application/models/internal/TodoItem$Type;Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;Lcom/amazon/kindle/model/content/ILocalBookItem;)Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-static {p0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getBookTypeForTodoType(Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    if-nez p3, :cond_1

    .line 94
    invoke-static {p0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->isDocument(Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 95
    invoke-interface {p1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/amazon/kindle/io/IPathDescriptor;->getDocumentPath(Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 97
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/amazon/kindle/io/IPathDescriptor;->getBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 103
    :cond_1
    invoke-interface {p3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getSidecarPath()Ljava/lang/String;

    move-result-object p0

    .line 107
    :goto_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_2

    .line 109
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_2

    .line 110
    sget-object p1, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->TAG:Ljava/lang/String;

    const-string p2, "Unable to create location for book storage"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p0
.end method

.method private createResponseHandler(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IResponseHandler;
    .locals 0

    .line 83
    new-instance p1, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;

    invoke-direct {p1}, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;-><init>()V

    .line 84
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->setDownloadFile(Ljava/lang/String;)V

    return-object p1
.end method

.method private static createSidecarRequestPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 135
    invoke-static {}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getSidecarURL()Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    invoke-static {}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getSidecarURL()Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/webservices/WebserviceURL;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/WebserviceURL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?type="

    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&key="

    .line 141
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p0, "&guid="

    .line 148
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    const-string p0, "UTF-8"

    .line 150
    invoke-static {p2, p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleError(Lcom/amazon/kindle/webservices/IWebRequest;Ljava/lang/String;)V
    .locals 3

    .line 173
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_WRITE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const-string v1, "DownloadSidecarCommand"

    if-ne p1, v0, :cond_0

    .line 174
    sget-object p1, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create output stream from file  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "SidecarStreamCreationError"

    invoke-virtual {p1, v1, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 180
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "SidecarDownloadFailed"

    invoke-virtual {p1, v1, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 183
    iget-object p1, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->fileConnectionFactory:Lcom/amazon/kindle/io/IFileConnectionFactory;

    invoke-static {p1, p2}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public getSidecarFileNameAndPath()Ljava/lang/String;
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->type:Lcom/amazon/kcp/library/models/BookType;

    invoke-static {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getTodoTypeFromBookType(Lcom/amazon/kcp/library/models/BookType;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->fileConnectionFactory:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object v2, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->asin:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->computePathToDownload(Lcom/amazon/kcp/application/models/internal/TodoItem$Type;Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;Lcom/amazon/kindle/model/content/ILocalBookItem;)Ljava/lang/String;

    move-result-object v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->asin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->type:Lcom/amazon/kcp/library/models/BookType;

    .line 120
    invoke-static {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getTodoTypeFromBookType(Lcom/amazon/kcp/library/models/BookType;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".embp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {v1}, Lcom/amazon/kindle/io/FileSystemHelper;->addTemporaryExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->filenameAndPath:Ljava/lang/String;

    return-object v0
.end method

.method public onRequestComplete()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->filenameAndPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->getSidecarFileNameAndPath()Ljava/lang/String;

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->filenameAndPath:Ljava/lang/String;

    invoke-direct {p0, p0, v0}, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->handleError(Lcom/amazon/kindle/webservices/IWebRequest;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
