.class public final Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;
.super Ljava/lang/Object;
.source "HighlightTextDecoratorProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final PROPERTIES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dialogManager:Lcom/audible/hushpuppy/common/dialog/DialogManager;

.field private final handlerDebouncer:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

.field private final highlightColorModeProvider:Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;

.field private final hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final playerViewManager:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

.field private final readAlongModel:Lcom/audible/hushpuppy/model/read/IReadAlongModel;

.field private final readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

.field private final readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 44
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->START_ANNOTATION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->END_ANNOTATION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->PROPERTIES:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/amazon/kindle/krx/ui/IReaderUIManager;Lcom/audible/hushpuppy/model/read/IReadAlongModel;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;Lcom/audible/hushpuppy/common/dialog/DialogManager;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    invoke-direct {v0}, Lcom/audible/hushpuppy/common/system/HandlerDebouncer;-><init>()V

    iput-object v0, p0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->handlerDebouncer:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    .line 85
    iput-object p1, p0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    .line 86
    iput-object p2, p0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    .line 87
    iput-object p3, p0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->readAlongModel:Lcom/audible/hushpuppy/model/read/IReadAlongModel;

    .line 88
    iput-object p4, p0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 89
    iput-object p5, p0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->highlightColorModeProvider:Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;

    .line 90
    iput-object p6, p0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->dialogManager:Lcom/audible/hushpuppy/common/dialog/DialogManager;

    .line 91
    iput-object p7, p0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 92
    iput-object p8, p0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->playerViewManager:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;)Lcom/amazon/kindle/krx/ui/IReaderUIManager;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    return-object p0
.end method

.method private convertToIPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private isContentDecorationEnabled()Z
    .locals 5

    .line 131
    iget-object v0, p0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->readAlongModel:Lcom/audible/hushpuppy/model/read/IReadAlongModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IReadAlongModel;->getStartAnnotation()I

    move-result v0

    iget-object v1, p0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->readAlongModel:Lcom/audible/hushpuppy/model/read/IReadAlongModel;

    invoke-interface {v1}, Lcom/audible/hushpuppy/model/read/IReadAlongModel;->getEndAnnotation()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 132
    sget-object v0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "isContentDecorationEnabled = false (getStartAnnotation == getEndAnnotation)"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return v2

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->getReaderMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    .line 138
    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AUDIBLE_PLAYER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-eq v0, v1, :cond_1

    .line 139
    sget-object v1, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isContentDecorationEnabled = false (readerMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private refresh()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->handlerDebouncer:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    new-instance v1, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider$1;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider$1;-><init>(Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;)V

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/system/AbstractDebouncer;->post(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, Lcom/amazon/kindle/krx/reader/IPage;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->get(Lcom/amazon/kindle/krx/reader/IPage;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/amazon/kindle/krx/reader/IPage;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPage;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;",
            ">;"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->isContentDecorationEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 98
    sget-object p1, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "get = null (isContentDecorationEnabled = false)"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/content/BookFormat;->YJBINARY:Lcom/amazon/kindle/krx/content/BookFormat;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->highlightColorModeProvider:Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;

    iget-object v3, p0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    .line 104
    invoke-interface {v3}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;->getHighlightColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;Z)Lcom/audible/hushpuppy/common/readalong/IHighlightColorMode;

    move-result-object p1

    .line 106
    iget-object v0, p0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->readAlongModel:Lcom/audible/hushpuppy/model/read/IReadAlongModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IReadAlongModel;->getStartAnnotation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->convertToIPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 107
    iget-object v3, p0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->readAlongModel:Lcom/audible/hushpuppy/model/read/IReadAlongModel;

    invoke-interface {v3}, Lcom/audible/hushpuppy/model/read/IReadAlongModel;->getEndAnnotation()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->convertToIPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    .line 109
    new-instance v4, Lcom/amazon/kindle/krx/contentdecoration/HighlightDecoration;

    .line 110
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/readalong/IHighlightColorMode;->getSelectionColor()I

    move-result p1

    invoke-direct {v4, v0, v3, p1, v2}, Lcom/amazon/kindle/krx/contentdecoration/HighlightDecoration;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IZ)V

    new-array p1, v2, [Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;

    aput-object v4, p1, v1

    .line 112
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDecorationStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;
    .locals 1

    .line 122
    sget-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->TransientHighlight:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    return-object v0
.end method

.method public getPriority(Lcom/amazon/kindle/krx/reader/IPage;)I
    .locals 0

    .line 117
    sget-object p1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->MAX_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->intValue()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 38
    check-cast p1, Lcom/amazon/kindle/krx/reader/IPage;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->getPriority(Lcom/amazon/kindle/krx/reader/IPage;)I

    move-result p1

    return p1
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/ebook/EBookChangedEvent;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->refresh()V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;)V
    .locals 1

    .line 153
    sget-object v0, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->PROPERTIES:Ljava/util/EnumSet;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->isPropertyOneOf(Ljava/util/EnumSet;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->refresh()V

    :cond_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/reader/ReaderColorChangeEvent;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/readalong/HighlightTextDecoratorProvider;->refresh()V

    return-void
.end method
