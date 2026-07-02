.class public final Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;
.super Ljava/lang/Object;
.source "ManifestRequestParams.kt"


# instance fields
.field private final asin:Ljava/lang/String;

.field private final bookId:Lcom/amazon/kindle/model/content/IBookID;

.field private final bookType:Lcom/amazon/kcp/library/models/BookType;

.field private final correlationId:Ljava/lang/String;

.field private final defaultDownloadPath:Ljava/io/File;

.field private final downloadTracker:Lcom/amazon/kindle/services/download/IDownloadTracker;

.field private final hasMultimediaContent:Z

.field private final todoProperties:Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;

.field private final trigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;ZLjava/io/File;Lcom/amazon/kindle/services/download/IDownloadTracker;Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;)V
    .locals 1

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bookType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trigger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultDownloadPath"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadTracker"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->asin:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->bookType:Lcom/amazon/kcp/library/models/BookType;

    iput-object p3, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->trigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    iput-boolean p4, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->hasMultimediaContent:Z

    iput-object p5, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->defaultDownloadPath:Ljava/io/File;

    iput-object p6, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->downloadTracker:Lcom/amazon/kindle/services/download/IDownloadTracker;

    iput-object p7, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->todoProperties:Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;

    .line 81
    new-instance p1, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams$bookId$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams$bookId$1;-><init>(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)V

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/model/content/IBookID;

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 94
    iget-object p1, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->todoProperties:Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->getCorrelationId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-static {p1}, Lcom/amazon/kindle/services/download/CorrelationIdUtils;->getDeviceGeneratedCorrelationId(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->correlationId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->asin:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->asin:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->bookType:Lcom/amazon/kcp/library/models/BookType;

    iget-object v1, p1, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->bookType:Lcom/amazon/kcp/library/models/BookType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->trigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    iget-object v1, p1, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->trigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->hasMultimediaContent:Z

    iget-boolean v1, p1, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->hasMultimediaContent:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->defaultDownloadPath:Ljava/io/File;

    iget-object v1, p1, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->defaultDownloadPath:Ljava/io/File;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->downloadTracker:Lcom/amazon/kindle/services/download/IDownloadTracker;

    iget-object v1, p1, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->downloadTracker:Lcom/amazon/kindle/services/download/IDownloadTracker;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->todoProperties:Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;

    iget-object p1, p1, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->todoProperties:Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAsin()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public final getBookId()Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    return-object v0
.end method

.method public final getBookType()Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->bookType:Lcom/amazon/kcp/library/models/BookType;

    return-object v0
.end method

.method public final getCorrelationId()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->correlationId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultDownloadPath()Ljava/io/File;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->defaultDownloadPath:Ljava/io/File;

    return-object v0
.end method

.method public final getDownloadTracker()Lcom/amazon/kindle/services/download/IDownloadTracker;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->downloadTracker:Lcom/amazon/kindle/services/download/IDownloadTracker;

    return-object v0
.end method

.method public final getExcludedTransportMethod()Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->todoProperties:Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->getExcludedTransportMethod()Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getHasMultimediaContent()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->hasMultimediaContent:Z

    return v0
.end method

.method public final getTodoProperties()Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->todoProperties:Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;

    return-object v0
.end method

.method public final getTrigger()Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->trigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->asin:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->bookType:Lcom/amazon/kcp/library/models/BookType;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->trigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->hasMultimediaContent:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->defaultDownloadPath:Ljava/io/File;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->downloadTracker:Lcom/amazon/kindle/services/download/IDownloadTracker;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->todoProperties:Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public final isForced()Z
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->todoProperties:Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->getForced()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isSilentUpdate()Z
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->todoProperties:Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->getSilentUpdate()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isUserInitiated()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->todoProperties:Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ManifestDownloadRequestParams(asin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->asin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bookType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->bookType:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->trigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasMultimediaContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->hasMultimediaContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", defaultDownloadPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->defaultDownloadPath:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadTracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->downloadTracker:Lcom/amazon/kindle/services/download/IDownloadTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", todoProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->todoProperties:Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
