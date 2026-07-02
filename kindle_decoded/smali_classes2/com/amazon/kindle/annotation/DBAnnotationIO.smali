.class public Lcom/amazon/kindle/annotation/DBAnnotationIO;
.super Ljava/lang/Object;
.source "DBAnnotationIO.java"

# interfaces
.implements Lcom/amazon/kindle/services/sync/AnnotationIO;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/annotation/DBAnnotationIO$ChainedAnnotationParserCallback;,
        Lcom/amazon/kindle/annotation/DBAnnotationIO$BatchedDBWriterCallback;
    }
.end annotation


# static fields
.field private static final DB_INSERT_BATCH_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private annotationFileName:Ljava/lang/String;

.field private annotationIO:Lcom/amazon/kindle/services/sync/AnnotationIO;

.field private bookId:Ljava/lang/String;

.field private dao:Lcom/amazon/kindle/annotation/IAnnotationDAO;

.field private lastAnnotationModificationTime:J

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/kindle/annotation/DBAnnotationIO;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/sync/AnnotationIO;Lcom/amazon/kindle/annotation/IAnnotationDAO;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->userId:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->bookId:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->dao:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    .line 67
    iput-object p5, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->annotationFileName:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->annotationIO:Lcom/amazon/kindle/services/sync/AnnotationIO;

    const-wide/16 p1, 0x0

    .line 69
    iput-wide p1, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->lastAnnotationModificationTime:J

    return-void
.end method


# virtual methods
.method public getAnnotationFileName()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->annotationIO:Lcom/amazon/kindle/services/sync/AnnotationIO;

    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0}, Lcom/amazon/kindle/services/sync/AnnotationIO;->getAnnotationFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->annotationFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAnnotationModificationTime()J
    .locals 2

    .line 140
    iget-wide v0, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->lastAnnotationModificationTime:J

    return-wide v0
.end method

.method public readAnnotations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->annotationIO:Lcom/amazon/kindle/services/sync/AnnotationIO;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 107
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/annotation/DBAnnotationIO;->readAnnotations(Lcom/amazon/kindle/services/sync/AnnotationIO$AnnotationParserCallback;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 111
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 114
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->dao:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    iget-object v1, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->bookId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/annotation/IAnnotationDAO;->readAll(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readAnnotations(Lcom/amazon/kindle/services/sync/AnnotationIO$AnnotationParserCallback;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 79
    const-class v0, Lcom/amazon/kindle/annotation/DBAnnotationIO;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->annotationIO:Lcom/amazon/kindle/services/sync/AnnotationIO;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->annotationFileName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->dao:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    iget-object v3, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->userId:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->bookId:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/amazon/kindle/annotation/IAnnotationDAO;->deleteAnnotations(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v1, Lcom/amazon/kindle/annotation/DBAnnotationIO$BatchedDBWriterCallback;

    iget-object v3, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->dao:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    const/16 v4, 0x32

    iget-object v5, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->userId:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->bookId:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/amazon/kindle/annotation/DBAnnotationIO$BatchedDBWriterCallback;-><init>(Lcom/amazon/kindle/annotation/IAnnotationDAO;ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v3, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->annotationIO:Lcom/amazon/kindle/services/sync/AnnotationIO;

    new-instance v4, Lcom/amazon/kindle/annotation/DBAnnotationIO$ChainedAnnotationParserCallback;

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/amazon/kindle/services/sync/AnnotationIO$AnnotationParserCallback;

    aput-object v1, v5, v2

    const/4 v2, 0x1

    aput-object p1, v5, v2

    invoke-direct {v4, v5}, Lcom/amazon/kindle/annotation/DBAnnotationIO$ChainedAnnotationParserCallback;-><init>([Lcom/amazon/kindle/services/sync/AnnotationIO$AnnotationParserCallback;)V

    invoke-interface {v3, v4}, Lcom/amazon/kindle/services/sync/AnnotationIO;->readAnnotations(Lcom/amazon/kindle/services/sync/AnnotationIO$AnnotationParserCallback;)Z

    .line 85
    invoke-virtual {v1}, Lcom/amazon/kindle/annotation/DBAnnotationIO$BatchedDBWriterCallback;->flush()V

    .line 92
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->annotationFileName:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 95
    iget-object p1, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->dao:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    iget-object v1, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->bookId:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/amazon/kindle/annotation/IAnnotationDAO;->deleteSidecarRequest(Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->annotationIO:Lcom/amazon/kindle/services/sync/AnnotationIO;

    invoke-interface {p1}, Lcom/amazon/kindle/services/sync/AnnotationIO;->getLastAnnotationModificationTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->lastAnnotationModificationTime:J

    .line 97
    monitor-exit v0

    return v2

    .line 99
    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public readLastPageRead()Lcom/amazon/kindle/model/content/LastPageRead;
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->annotationIO:Lcom/amazon/kindle/services/sync/AnnotationIO;

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0}, Lcom/amazon/kindle/services/sync/AnnotationIO;->readLastPageRead()Lcom/amazon/kindle/model/content/LastPageRead;

    move-result-object v0

    return-object v0

    .line 127
    :cond_0
    new-instance v0, Lcom/amazon/kindle/model/content/LastPageRead;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/amazon/kindle/model/content/LastPageRead;-><init>(II[B)V

    return-object v0
.end method

.method public readMrpr()I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->annotationIO:Lcom/amazon/kindle/services/sync/AnnotationIO;

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0}, Lcom/amazon/kindle/services/sync/AnnotationIO;->readMrpr()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public writeAnnotations(Lcom/amazon/kindle/model/content/LastPageRead;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/LastPageRead;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;)V"
        }
    .end annotation

    .line 155
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    if-eqz p2, :cond_0

    .line 157
    iget-object v0, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->dao:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    iget-object v1, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO;->bookId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p2}, Lcom/amazon/kindle/annotation/IAnnotationDAO;->insertAnnotation(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)J

    goto :goto_0

    :cond_1
    return-void
.end method
