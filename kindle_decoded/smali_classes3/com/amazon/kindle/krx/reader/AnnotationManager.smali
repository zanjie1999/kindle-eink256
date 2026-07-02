.class public Lcom/amazon/kindle/krx/reader/AnnotationManager;
.super Lcom/amazon/kindle/krx/reader/BaseAnnotationManager;
.source "AnnotationManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

.field private book:Lcom/amazon/kindle/krx/content/IBook;

.field private user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/kindle/krx/reader/AnnotationManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/reader/AnnotationManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BaseAnnotationManager;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/AnnotationManager;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    .line 35
    iput-object p2, p0, Lcom/amazon/kindle/krx/reader/AnnotationManager;->book:Lcom/amazon/kindle/krx/content/IBook;

    .line 36
    iput-object p3, p0, Lcom/amazon/kindle/krx/reader/AnnotationManager;->user:Ljava/lang/String;

    return-void
.end method

.method private getAnnotations(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/KRXIAnnotation;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAnnotationsManager()Lcom/amazon/kindle/annotation/IAnnotationsManager;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->getBookAnnotationsManager(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->readAll()Ljava/util/List;

    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/reader/AnnotationManager;->convertToKRXAnnotations(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addAnnotations(Ljava/util/Collection;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/content/KRXIAnnotation;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/AnnotationManager;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    if-nez v0, :cond_1

    .line 99
    sget-object p1, Lcom/amazon/kindle/krx/reader/AnnotationManager;->TAG:Ljava/lang/String;

    const-string v0, "addAnnotations can only be performed on open books"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 103
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/content/KRXIAnnotation;

    .line 104
    sget-object v1, Lcom/amazon/kindle/krx/reader/AnnotationManager$1;->$SwitchMap$com$amazon$kindle$krx$content$KRXIAnnotation$AnnotationType:[I

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getAnnotationType()Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 113
    sget-object v1, Lcom/amazon/kindle/krx/reader/AnnotationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected invalid annotation type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getAnnotationType()Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_2
    iget-object v2, p0, Lcom/amazon/kindle/krx/reader/AnnotationManager;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getMetadata()Ljava/util/Map;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->addHighlight(IIIILjava/util/Map;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    goto :goto_0

    .line 106
    :cond_3
    iget-object v8, p0, Lcom/amazon/kindle/krx/reader/AnnotationManager;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v9

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v10

    .line 107
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v11

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getUserText()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getMetadata()Ljava/util/Map;

    move-result-object v13

    .line 106
    invoke-interface/range {v8 .. v13}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->addNote(IIILjava/lang/String;Ljava/util/Map;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected convertToKRXAnnotations(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/KRXIAnnotation;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-eqz p1, :cond_0

    .line 83
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 85
    new-instance v2, Lcom/amazon/kindle/krx/content/Annotation;

    invoke-direct {v2, v1}, Lcom/amazon/kindle/krx/content/Annotation;-><init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public deleteAnnotations(Ljava/util/Collection;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/content/KRXIAnnotation;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/AnnotationManager;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    if-nez v0, :cond_1

    .line 125
    sget-object p1, Lcom/amazon/kindle/krx/reader/AnnotationManager;->TAG:Ljava/lang/String;

    const-string v0, "deleteAnnotations can only be performed on open books"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 129
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/content/KRXIAnnotation;

    .line 130
    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/AnnotationManager;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    new-instance v11, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getBookText()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getAnnotationType()Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/krx/util/AnnotationsUtil;->getKRLAnnotationType(Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 132
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    .line 133
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    .line 134
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v7

    .line 135
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getUserText()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    new-array v9, v2, [B

    .line 137
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getMetadata()Ljava/util/Map;

    move-result-object v10

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/lang/String;[BLjava/util/Map;)V

    .line 130
    invoke-interface {v1, v11}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/KRXIAnnotation;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/AnnotationManager;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getAnnotationsList()[Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/krx/reader/AnnotationManager;->convertToKRXAnnotations(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/AnnotationManager;->book:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/AnnotationManager;->user:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 60
    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/krx/reader/AnnotationManager;->getAnnotations(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 62
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public getAnnotations(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/application/IUserAccount;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Lcom/amazon/kindle/krx/application/IUserAccount;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/KRXIAnnotation;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {p2}, Lcom/amazon/kindle/krx/application/IUserAccount;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/krx/reader/AnnotationManager;->getAnnotations(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 42
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotationsBetweenPositions(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/KRXIAnnotation;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 67
    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/reader/IPosition;->isBefore(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/AnnotationManager;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    if-eqz v0, :cond_1

    .line 71
    invoke-static {p3}, Lcom/amazon/kindle/krx/util/AnnotationsUtil;->getKRLAnnotationType(Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {v0, p3, p1, p2}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getAnnotationsOverlappingRange(ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/util/List;

    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/reader/AnnotationManager;->convertToKRXAnnotations(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/AnnotationManager;->book:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/AnnotationManager;->user:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 75
    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/krx/reader/AnnotationManager;->getAnnotations(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {p3, v0, p1, p2}, Lcom/amazon/kindle/krx/util/AnnotationsUtil;->filterAnnotationsByTypeAndRange(Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;Ljava/util/List;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 77
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 68
    :cond_3
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
