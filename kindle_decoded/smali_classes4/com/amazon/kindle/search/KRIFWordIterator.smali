.class public Lcom/amazon/kindle/search/KRIFWordIterator;
.super Lcom/amazon/kindle/krx/search/BaseKindleWordTokenIterator;
.source "KRIFWordIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/search/KRIFWordIterator$Direction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cachedDirection:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

.field private cachedWordToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

.field private krfBook:Lcom/amazon/krf/platform/KRFBook;

.field private krifWordIterator:Lcom/amazon/krf/platform/WordIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Lcom/amazon/kindle/search/KRIFWordIterator;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/search/KRIFWordIterator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/krf/platform/KRFBook;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Lcom/amazon/kindle/krx/search/BaseKindleWordTokenIterator;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    const-wide/16 v0, 0x0

    .line 91
    invoke-interface {p1, v0, v1}, Lcom/amazon/krf/platform/KRFBook;->createPosition(J)Lcom/amazon/krf/platform/Position;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/amazon/krf/platform/KRFBook;->createWordIterator(Lcom/amazon/krf/platform/Position;I)Lcom/amazon/krf/platform/WordIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krifWordIterator:Lcom/amazon/krf/platform/WordIterator;

    const/4 p1, 0x0

    .line 92
    iput-object p1, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedWordToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    .line 93
    sget-object p1, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;->NONE:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    iput-object p1, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedDirection:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/krf/platform/KRFBook;JLcom/amazon/krf/platform/ViewSettings$ReadingMode;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Lcom/amazon/kindle/krx/search/BaseKindleWordTokenIterator;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    .line 98
    invoke-interface {p1, p2, p3}, Lcom/amazon/krf/platform/KRFBook;->createPosition(J)Lcom/amazon/krf/platform/Position;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1, p4}, Lcom/amazon/krf/platform/KRFBook;->createWordIterator(Lcom/amazon/krf/platform/Position;ILcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/WordIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krifWordIterator:Lcom/amazon/krf/platform/WordIterator;

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Created WordIterator for Reading Mode ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "] and start position "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krifWordIterator:Lcom/amazon/krf/platform/WordIterator;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p1, 0x0

    .line 100
    iput-object p1, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedWordToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    .line 101
    sget-object p1, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;->NONE:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    iput-object p1, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedDirection:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    return-void
.end method

.method private convertWordToWordToken(Lcom/amazon/krf/platform/WordRange;)Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;
    .locals 6

    .line 255
    new-instance v0, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    invoke-interface {p1}, Lcom/amazon/krf/platform/WordRange;->getText()Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-interface {p1}, Lcom/amazon/krf/platform/WordRange;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v2

    long-to-int v3, v2

    .line 257
    invoke-interface {p1}, Lcom/amazon/krf/platform/WordRange;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v4

    long-to-int p1, v4

    invoke-direct {v0, v1, v3, p1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedWordToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    .line 263
    iget-object v1, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krifWordIterator:Lcom/amazon/krf/platform/WordIterator;

    invoke-interface {v1}, Lcom/amazon/krf/platform/Disposable;->dispose()V

    .line 264
    iput-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krifWordIterator:Lcom/amazon/krf/platform/WordIterator;

    return-void
.end method

.method public first()Z
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krifWordIterator:Lcom/amazon/krf/platform/WordIterator;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 110
    :cond_0
    invoke-interface {v0}, Lcom/amazon/krf/platform/WordIterator;->first()V

    .line 112
    iget-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krifWordIterator:Lcom/amazon/krf/platform/WordIterator;

    invoke-interface {v0}, Lcom/amazon/krf/platform/WordIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krifWordIterator:Lcom/amazon/krf/platform/WordIterator;

    invoke-interface {v0}, Lcom/amazon/krf/platform/WordIterator;->next()Lcom/amazon/krf/platform/WordRange;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/search/KRIFWordIterator;->convertWordToWordToken(Lcom/amazon/krf/platform/WordRange;)Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedWordToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    .line 121
    sget-object v0, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;->FORWARD:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    iput-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedDirection:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    const/4 v0, 0x1

    return v0
.end method

.method public getTextInRange(II)Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krifWordIterator:Lcom/amazon/krf/platform/WordIterator;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/amazon/krf/platform/KRFBook;->createPosition(J)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    .line 203
    iget-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Lcom/amazon/krf/platform/KRFBook;->createPosition(J)Lcom/amazon/krf/platform/Position;

    move-result-object p2

    .line 204
    new-instance v0, Lcom/amazon/krf/platform/PositionRange;

    invoke-direct {v0, p1, p2}, Lcom/amazon/krf/platform/PositionRange;-><init>(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V

    .line 206
    iget-object p1, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krifWordIterator:Lcom/amazon/krf/platform/WordIterator;

    const/16 p2, 0x20

    invoke-interface {p1, v0, p2}, Lcom/amazon/krf/platform/WordIterator;->textInRange(Lcom/amazon/krf/platform/PositionRange;C)Lcom/amazon/krf/platform/WordRange;

    move-result-object p1

    .line 207
    invoke-direct {p0, p1}, Lcom/amazon/kindle/search/KRIFWordIterator;->convertWordToWordToken(Lcom/amazon/krf/platform/WordRange;)Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object p1

    return-object p1
.end method

.method public getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedWordToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    return-object v0
.end method

.method public gotoPosition(I)V
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krifWordIterator:Lcom/amazon/krf/platform/WordIterator;

    if-nez v0, :cond_0

    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/amazon/krf/platform/KRFBook;->createPosition(J)Lcom/amazon/krf/platform/Position;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krifWordIterator:Lcom/amazon/krf/platform/WordIterator;

    invoke-interface {v1, v0}, Lcom/amazon/krf/platform/WordIterator;->goToPosition(Lcom/amazon/krf/platform/Position;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/search/KRIFWordIterator;->TAG:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "GotoPositionFailure"

    invoke-virtual {v0, v1, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 224
    sget-object v0, Lcom/amazon/kindle/search/KRIFWordIterator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In WordIterator, unable to move to expected position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krifWordIterator:Lcom/amazon/krf/platform/WordIterator;

    invoke-interface {v0}, Lcom/amazon/krf/platform/WordIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    iget-object p1, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krifWordIterator:Lcom/amazon/krf/platform/WordIterator;

    invoke-interface {p1}, Lcom/amazon/krf/platform/WordIterator;->next()Lcom/amazon/krf/platform/WordRange;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/search/KRIFWordIterator;->convertWordToWordToken(Lcom/amazon/krf/platform/WordRange;)Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedWordToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    .line 231
    sget-object p1, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;->FORWARD:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    iput-object p1, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedDirection:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedWordToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    .line 237
    sget-object v0, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;->NONE:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    iput-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedDirection:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    .line 238
    sget-object v0, Lcom/amazon/kindle/search/KRIFWordIterator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Something went really wonky when moving the word iterator. cachedWordToken has been invalidated. Navigation was going to position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public next()Z
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krifWordIterator:Lcom/amazon/krf/platform/WordIterator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/amazon/krf/platform/WordIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedDirection:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    sget-object v3, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;->BACKWARD:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    if-ne v0, v3, :cond_1

    .line 137
    iget-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krifWordIterator:Lcom/amazon/krf/platform/WordIterator;

    invoke-interface {v0}, Lcom/amazon/krf/platform/WordIterator;->next()Lcom/amazon/krf/platform/WordRange;

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krifWordIterator:Lcom/amazon/krf/platform/WordIterator;

    invoke-interface {v0}, Lcom/amazon/krf/platform/WordIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krifWordIterator:Lcom/amazon/krf/platform/WordIterator;

    invoke-interface {v0}, Lcom/amazon/krf/platform/WordIterator;->next()Lcom/amazon/krf/platform/WordRange;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/search/KRIFWordIterator;->convertWordToWordToken(Lcom/amazon/krf/platform/WordRange;)Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedWordToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    .line 142
    sget-object v0, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;->FORWARD:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    iput-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedDirection:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    const/4 v0, 0x1

    return v0

    .line 144
    :cond_2
    sget-object v0, Lcom/amazon/kindle/search/KRIFWordIterator;->TAG:Ljava/lang/String;

    const-string v3, "Tried to go next(), but it didn\'t work. Internal state may be messed up"

    invoke-static {v0, v3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-object v0, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;->NONE:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    iput-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedDirection:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    .line 146
    iput-object v2, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedWordToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    return v1

    .line 129
    :cond_3
    :goto_0
    sget-object v0, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;->NONE:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    iput-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedDirection:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    .line 130
    iput-object v2, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedWordToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    return v1
.end method

.method public nextNWords(IC)Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;
    .locals 2

    .line 155
    sget-object v0, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->emptyWordToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    .line 157
    iget-object v1, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krifWordIterator:Lcom/amazon/krf/platform/WordIterator;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/amazon/krf/platform/WordIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krifWordIterator:Lcom/amazon/krf/platform/WordIterator;

    invoke-interface {v0, p1, p2}, Lcom/amazon/krf/platform/WordIterator;->next(IC)Lcom/amazon/krf/platform/WordRange;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/search/KRIFWordIterator;->convertWordToWordToken(Lcom/amazon/krf/platform/WordRange;)Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object p1

    .line 164
    sget-object p2, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;->FORWARD:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    iput-object p2, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedDirection:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    return-object p1

    .line 158
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;->NONE:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    iput-object p1, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedDirection:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    const/4 p1, 0x0

    .line 159
    iput-object p1, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedWordToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    return-object v0
.end method

.method public previous()Z
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krifWordIterator:Lcom/amazon/krf/platform/WordIterator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/amazon/krf/platform/WordIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedDirection:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    sget-object v3, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;->FORWARD:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    if-ne v0, v3, :cond_1

    .line 180
    iget-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krifWordIterator:Lcom/amazon/krf/platform/WordIterator;

    invoke-interface {v0}, Lcom/amazon/krf/platform/WordIterator;->previous()Lcom/amazon/krf/platform/WordRange;

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krifWordIterator:Lcom/amazon/krf/platform/WordIterator;

    invoke-interface {v0}, Lcom/amazon/krf/platform/WordIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->krifWordIterator:Lcom/amazon/krf/platform/WordIterator;

    invoke-interface {v0}, Lcom/amazon/krf/platform/WordIterator;->previous()Lcom/amazon/krf/platform/WordRange;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/search/KRIFWordIterator;->convertWordToWordToken(Lcom/amazon/krf/platform/WordRange;)Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedWordToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    .line 185
    sget-object v0, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;->BACKWARD:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    iput-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedDirection:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    const/4 v0, 0x1

    return v0

    .line 187
    :cond_2
    sget-object v0, Lcom/amazon/kindle/search/KRIFWordIterator;->TAG:Ljava/lang/String;

    const-string v3, "Tried to go previous(), but it didn\'t work. Internal state may be messed up"

    invoke-static {v0, v3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object v0, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;->NONE:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    iput-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedDirection:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    .line 189
    iput-object v2, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedWordToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    return v1

    .line 172
    :cond_3
    :goto_0
    sget-object v0, Lcom/amazon/kindle/search/KRIFWordIterator$Direction;->NONE:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    iput-object v0, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedDirection:Lcom/amazon/kindle/search/KRIFWordIterator$Direction;

    .line 173
    iput-object v2, p0, Lcom/amazon/kindle/search/KRIFWordIterator;->cachedWordToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    return v1
.end method
