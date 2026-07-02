.class public final Lcom/amazon/android/docviewer/CommonKindleAnnotatedTextExtractor;
.super Ljava/lang/Object;
.source "CommonKindleAnnotatedTextExtractor.java"

# interfaces
.implements Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;


# instance fields
.field private doc:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private hasWordIterator:Z

.field private wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/amazon/android/docviewer/CommonKindleAnnotatedTextExtractor;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/CommonKindleAnnotatedTextExtractor;->hasWordIterator:Z

    .line 25
    iput-object p1, p0, Lcom/amazon/android/docviewer/CommonKindleAnnotatedTextExtractor;->doc:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/CommonKindleAnnotatedTextExtractor;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/amazon/android/docviewer/CommonKindleAnnotatedTextExtractor;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->close()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/amazon/android/docviewer/CommonKindleAnnotatedTextExtractor;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAnnotatedText(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;
    .locals 8

    monitor-enter p0

    .line 30
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/CommonKindleAnnotatedTextExtractor;->hasWordIterator:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/amazon/android/docviewer/CommonKindleAnnotatedTextExtractor;->doc:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/amazon/android/docviewer/CommonKindleAnnotatedTextExtractor;->doc:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/CommonKindleAnnotatedTextExtractor;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/amazon/android/docviewer/CommonKindleAnnotatedTextExtractor;->doc:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->createWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/CommonKindleAnnotatedTextExtractor;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    if-nez v0, :cond_1

    .line 37
    iput-boolean v2, p0, Lcom/amazon/android/docviewer/CommonKindleAnnotatedTextExtractor;->hasWordIterator:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-object v1

    .line 42
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    iget-object v3, p0, Lcom/amazon/android/docviewer/CommonKindleAnnotatedTextExtractor;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 44
    iget-object v3, p0, Lcom/amazon/android/docviewer/CommonKindleAnnotatedTextExtractor;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v3}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    .line 46
    monitor-exit p0

    return-object v1

    .line 49
    :cond_2
    :try_start_2
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    const v5, 0x7fffffff

    if-eqz v4, :cond_4

    const p1, 0x7fffffff

    goto :goto_1

    .line 52
    :cond_4
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    :goto_1
    if-eqz v4, :cond_5

    const/16 v5, 0x14

    :cond_5
    const/4 v4, 0x0

    .line 57
    :cond_6
    iget-object v3, v3, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    .line 58
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9

    .line 59
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    if-lez v4, :cond_8

    .line 60
    invoke-static {v6}, Lcom/amazon/android/util/CharacterAnalyzer;->isGeneralQuotationMark(Ljava/lang/Character;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v6}, Lcom/amazon/android/util/CharacterAnalyzer;->isNoSpaceScript(Ljava/lang/Character;)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    const/16 v6, 0x20

    .line 61
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    :cond_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 68
    iget-object v3, p0, Lcom/amazon/android/docviewer/CommonKindleAnnotatedTextExtractor;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v3}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->next()Z

    .line 69
    iget-object v3, p0, Lcom/amazon/android/docviewer/CommonKindleAnnotatedTextExtractor;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v3}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 70
    iget v6, v3, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    if-gt v6, p1, :cond_a

    if-lt v4, v5, :cond_6

    .line 72
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_b

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 76
    :cond_b
    monitor-exit p0

    return-object v1

    .line 31
    :cond_c
    :goto_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
