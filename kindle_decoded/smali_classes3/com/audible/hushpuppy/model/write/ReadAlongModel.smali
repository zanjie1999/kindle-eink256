.class public final Lcom/audible/hushpuppy/model/write/ReadAlongModel;
.super Lcom/audible/hushpuppy/model/write/AbstractModel;
.source "ReadAlongModel.java"

# interfaces
.implements Lcom/audible/hushpuppy/model/read/IReadAlongModel;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private currentPage:Lcom/audible/hushpuppy/common/readalong/CurrentPage;

.field private endAnnotation:I

.field private final hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private lastEBookPosition:I

.field private final readAlongPolicy:Lcom/audible/hushpuppy/common/readalong/IReadAlongPolicy;

.field private final readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

.field private startAnnotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/model/write/ReadAlongModel;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/common/readalong/IReadAlongPolicy;Lcom/amazon/kindle/krx/reader/IReaderManager;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/model/write/AbstractModel;-><init>(Lde/greenrobot/event/EventBus;)V

    .line 76
    iput-object p2, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 77
    iput-object p3, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->readAlongPolicy:Lcom/audible/hushpuppy/common/readalong/IReadAlongPolicy;

    .line 78
    iput-object p4, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    return-void
.end method

.method private populateSelectionModel(I)V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->currentPage:Lcom/audible/hushpuppy/common/readalong/CurrentPage;

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->currentPage:Lcom/audible/hushpuppy/common/readalong/CurrentPage;

    invoke-virtual {v1, p1}, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->isPositionOnPage(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->readAlongPolicy:Lcom/audible/hushpuppy/common/readalong/IReadAlongPolicy;

    iget-object v1, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->currentPage:Lcom/audible/hushpuppy/common/readalong/CurrentPage;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/readalong/IReadAlongPolicy;->setCurrentPage(Lcom/audible/hushpuppy/common/readalong/CurrentPage;)V

    .line 206
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->readAlongPolicy:Lcom/audible/hushpuppy/common/readalong/IReadAlongPolicy;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/readalong/IReadAlongPolicy;->getStartAnnotation(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->setStartAnnotation(I)V

    .line 207
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->readAlongPolicy:Lcom/audible/hushpuppy/common/readalong/IReadAlongPolicy;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/readalong/IReadAlongPolicy;->getEndAnnotation(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->setEndAnnotation(I)V

    .line 208
    sget-object v0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "populateSelectionModel POST ReadAlongEvent.TextSelectionModelUpdateEvent eBookPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->currentPage:Lcom/audible/hushpuppy/common/readalong/CurrentPage;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/reader/IPosition;->isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 211
    sget-object p1, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "populateSelectionModel IGNORE selection until audio position catches up to the new page"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getEndAnnotation()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->endAnnotation:I

    return v0
.end method

.method public getStartAnnotation()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->startAnnotation:I

    return v0
.end method

.method public isPositionOnPage(I)Z
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->currentPage:Lcom/audible/hushpuppy/common/readalong/CurrentPage;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->isPositionOnPage(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    .line 117
    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->setStartAnnotation(I)V

    .line 118
    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->setEndAnnotation(I)V

    .line 119
    iput v0, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->lastEBookPosition:I

    return-void
.end method

.method public setCurrentPage(Lcom/audible/hushpuppy/common/readalong/CurrentPage;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->readAlongPolicy:Lcom/audible/hushpuppy/common/readalong/IReadAlongPolicy;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/readalong/IReadAlongPolicy;->setCurrentPage(Lcom/audible/hushpuppy/common/readalong/CurrentPage;)V

    .line 134
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->currentPage:Lcom/audible/hushpuppy/common/readalong/CurrentPage;

    return-void
.end method

.method public setEndAnnotation(I)V
    .locals 1

    .line 105
    iput p1, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->endAnnotation:I

    .line 106
    sget-object p1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->END_ANNOTATION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    iget v0, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->startAnnotation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    return-void
.end method

.method public setStartAnnotation(I)V
    .locals 1

    .line 91
    iput p1, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->startAnnotation:I

    .line 92
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->START_ANNOTATION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BookTextSelectionModel{startAnnotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->startAnnotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endAnnotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->endAnnotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateSelection(I)V
    .locals 5

    .line 143
    sget-object v0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSelection audiobookPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->currentPage:Lcom/audible/hushpuppy/common/readalong/CurrentPage;

    if-eqz v0, :cond_3

    .line 145
    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->toInt(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->currentPage:Lcom/audible/hushpuppy/common/readalong/CurrentPage;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/common/readalong/CurrentPage;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-static {v1}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->toInt(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result v1

    .line 147
    sget-object v2, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSelection startPositionInt - endPositionInt :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    if-eq v1, v2, :cond_2

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getSyncData()Lcom/audible/hushpuppy/sync/ISyncData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/audible/hushpuppy/sync/SyncDataUtils;->getRangeMembership(Lcom/audible/hushpuppy/sync/ISyncData;I)Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    move-result-object v0

    .line 155
    sget-object v1, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;->WITHIN:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    if-ne v0, v1, :cond_3

    .line 156
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCorrespondingEBookPosition(I)I

    move-result v0

    .line 157
    sget-object v1, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "populateIfInSyncedContent audioPosition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " eBookPosition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    if-ne v0, v2, :cond_1

    .line 162
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/readalong/PlayingUnsynchronizedContentEvent;

    invoke-direct {v1, p1}, Lcom/audible/hushpuppy/common/event/readalong/PlayingUnsynchronizedContentEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    .line 163
    :cond_1
    iget p1, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->lastEBookPosition:I

    if-eq p1, v0, :cond_3

    .line 164
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->populateSelectionModel(I)V

    .line 165
    iput v0, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->lastEBookPosition:I

    goto :goto_1

    .line 151
    :cond_2
    :goto_0
    sget-object p1, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSelection INVALID currentPage startPosition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " endPosition:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Probably page is not rendered yet"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
