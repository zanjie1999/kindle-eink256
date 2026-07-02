.class public Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;
.super Ljava/lang/Object;
.source "SimpleWordProvider.java"

# interfaces
.implements Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;


# static fields
.field private static final WORD_COUNT_MAX_SCAN:I = 0x1388


# instance fields
.field private final positionFactory:Lcom/amazon/kindle/krx/reader/IPositionFactory;

.field private wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/search/IKindleWordTokenIterator;Lcom/amazon/kindle/krx/reader/IPositionFactory;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    .line 26
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->positionFactory:Lcom/amazon/kindle/krx/reader/IPositionFactory;

    return-void
.end method

.method private createWordFromToken(Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->positionFactory:Lcom/amazon/kindle/krx/reader/IPositionFactory;

    iget v1, p1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->positionFactory:Lcom/amazon/kindle/krx/reader/IPositionFactory;

    iget v2, p1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    .line 226
    new-instance v2, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    iget-object p1, p1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    invoke-direct {v2, p1, v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-object v2
.end method

.method private handleEllipsisNext(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;
    .locals 5

    .line 32
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getText()Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->next()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    .line 40
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v2}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v2

    iget-object v2, v2, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v3, "."

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->next()Z

    move-result v1

    add-int/lit8 v4, v4, 0x1

    if-eqz v1, :cond_1

    .line 57
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v2}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v2

    iget-object v2, v2, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    goto :goto_0

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->previous()Z

    .line 69
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->createWordFromToken(Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v1

    .line 71
    new-instance v2, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-direct {v2, v0, p1, v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 72
    invoke-virtual {v2, v4}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->setNumberOfTokens(I)V

    return-object v2

    :cond_3
    return-object p1
.end method

.method private handleEllipsisPrevious(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;
    .locals 6

    .line 88
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "."

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v4, v3

    const/4 v3, 0x1

    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v4, :cond_1

    move-object v4, v0

    goto :goto_1

    .line 103
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 106
    :goto_1
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v2}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->previous()Z

    move-result v2

    add-int/lit8 v3, v3, 0x1

    if-eqz v2, :cond_0

    .line 111
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    goto :goto_0

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->createWordFromToken(Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v1

    .line 118
    new-instance v2, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-direct {v2, v0, v1, p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 119
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->setNumberOfTokens(I)V

    return-object v2

    :cond_3
    return-object p1
.end method


# virtual methods
.method public declared-synchronized getApproximateWordCount(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)I
    .locals 3

    monitor-enter p0

    const/4 v0, -0x1

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    .line 203
    invoke-interface {v1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v1

    iget v1, v1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    if-gt v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 206
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v1

    iget v1, v1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    .line 207
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v2}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->next()Z

    const/16 v2, 0x1388

    if-le v0, v2, :cond_0

    .line 211
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    sub-int/2addr p2, v2

    mul-int v0, v0, p2

    .line 212
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    sub-int/2addr v1, p1

    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getNextWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 130
    monitor-exit p0

    return-object v0

    .line 132
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getNumberOfTokens()I

    move-result v1

    .line 134
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-interface {v2, p1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 136
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {p1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->next()Z

    move-result p1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v2, :cond_1

    if-eqz p1, :cond_1

    .line 144
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {p1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->next()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 148
    monitor-exit p0

    return-object v0

    .line 150
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {p1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->createWordFromToken(Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object p1

    .line 152
    invoke-direct {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->handleEllipsisNext(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getPreviousWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 160
    monitor-exit p0

    return-object v0

    .line 162
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getNumberOfTokens()I

    .line 164
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-interface {v1, p1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 166
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {p1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->previous()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 170
    monitor-exit p0

    return-object v0

    .line 173
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {p1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->createWordFromToken(Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object p1

    .line 175
    invoke-direct {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->handleEllipsisPrevious(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getWordAtPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;
    .locals 1

    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 185
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {p1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 187
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {p1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/SimpleWordProvider;->createWordFromToken(Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
