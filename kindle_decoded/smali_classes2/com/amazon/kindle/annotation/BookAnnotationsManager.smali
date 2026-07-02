.class public Lcom/amazon/kindle/annotation/BookAnnotationsManager;
.super Ljava/lang/Object;
.source "BookAnnotationsManager.java"

# interfaces
.implements Lcom/amazon/kindle/annotation/IBookAnnotationsManager;


# instance fields
.field protected m_bookId:Ljava/lang/String;

.field protected final m_dao:Lcom/amazon/kindle/annotation/IAnnotationDAO;

.field protected final m_userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/annotation/IAnnotationDAO;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_userId:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_bookId:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_dao:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    return-void
.end method

.method private isValidPosition(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
    .locals 3

    .line 110
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 111
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    .line 112
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    if-ltz v0, :cond_0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public clearServerReadingPosition(Lcom/amazon/kindle/krx/sync/LPRSyncType;)V
    .locals 0

    .line 87
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public create(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
    .locals 4

    .line 49
    invoke-direct {p0, p1}, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->isValidPosition(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_dao:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    iget-object v1, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_bookId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/kindle/annotation/IAnnotationDAO;->insertAnnotation(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public delete(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_dao:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    iget-object v1, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_bookId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/kindle/annotation/IAnnotationDAO;->deleteAnnotation(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deleteAll()V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_dao:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    iget-object v1, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_bookId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/annotation/IAnnotationDAO;->deleteAnnotations(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getJournalRevision()J
    .locals 1

    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getServerReadingPosition(Lcom/amazon/kindle/krx/sync/LPRSyncType;)Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;
    .locals 0

    .line 79
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public persistJournal()V
    .locals 1

    .line 99
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public readAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_dao:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    iget-object v1, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_bookId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/annotation/IAnnotationDAO;->readAll(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
    .locals 4

    .line 54
    invoke-direct {p0, p1}, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->isValidPosition(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_dao:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    iget-object v1, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_bookId:Ljava/lang/String;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getUserText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/amazon/kindle/annotation/IAnnotationDAO;->updateAnnotation(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public updateBookId(Ljava/lang/String;)V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_dao:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    iget-object v1, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_bookId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/kindle/annotation/IAnnotationDAO;->updateBookId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_bookId:Ljava/lang/String;

    return-void
.end method

.method public updateLpr(I[B)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
