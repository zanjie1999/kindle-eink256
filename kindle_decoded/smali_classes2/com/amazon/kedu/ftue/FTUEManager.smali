.class public Lcom/amazon/kedu/ftue/FTUEManager;
.super Ljava/lang/Object;
.source "FTUEManager.java"

# interfaces
.implements Lcom/amazon/kedu/ftue/IFTUEManager;
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kedu/ftue/IFTUEManager;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Ljava/util/Collection<",
        "Lcom/amazon/kindle/krx/tutorial/Tutorial;",
        ">;",
        "Lcom/amazon/kindle/krx/tutorial/events/EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final NON_TEXTBOOK_PRIORITY:I = 0x3e8

.field private static final QUEUE_INITIAL_CAPACITY:I = 0x32

.field private static final SEQUENCES_INITIAL_CAPACITY:I = 0x19

.field private static final TAG:Ljava/lang/String; = "com.amazon.kedu.ftue.FTUEManager"

.field private static final TEXTBOOK_PRIORITY:I = 0x1


# instance fields
.field private bookContext:Lcom/amazon/kindle/krx/content/IBook;

.field private brochureBuilder:Lcom/amazon/kedu/ftue/brochures/TutorialBrochureBuilder;

.field private dataManager:Lcom/amazon/kedu/ftue/data/SQLiteDataManager;

.field private jitTutorialBuilder:Lcom/amazon/kedu/ftue/jit/JITTutorialBuilder;

.field private jits:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/amazon/kedu/ftue/events/JIT;",
            ">;"
        }
    .end annotation
.end field

.field private tutorialSequences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/PriorityQueue<",
            "Lcom/amazon/kedu/ftue/events/Tutorial;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kedu/ftue/data/SQLiteDataManager;)V
    .locals 2

    .line 55
    new-instance v0, Lcom/amazon/kedu/ftue/brochures/TutorialBrochureBuilder;

    invoke-direct {v0}, Lcom/amazon/kedu/ftue/brochures/TutorialBrochureBuilder;-><init>()V

    new-instance v1, Lcom/amazon/kedu/ftue/jit/JITTutorialBuilder;

    invoke-direct {v1}, Lcom/amazon/kedu/ftue/jit/JITTutorialBuilder;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kedu/ftue/FTUEManager;-><init>(Lcom/amazon/kedu/ftue/data/SQLiteDataManager;Lcom/amazon/kedu/ftue/brochures/TutorialBrochureBuilder;Lcom/amazon/kedu/ftue/jit/JITTutorialBuilder;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/kedu/ftue/data/SQLiteDataManager;Lcom/amazon/kedu/ftue/brochures/TutorialBrochureBuilder;Lcom/amazon/kedu/ftue/jit/JITTutorialBuilder;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/amazon/kedu/ftue/FTUEManager;->dataManager:Lcom/amazon/kedu/ftue/data/SQLiteDataManager;

    .line 68
    iput-object p2, p0, Lcom/amazon/kedu/ftue/FTUEManager;->brochureBuilder:Lcom/amazon/kedu/ftue/brochures/TutorialBrochureBuilder;

    .line 69
    iput-object p3, p0, Lcom/amazon/kedu/ftue/FTUEManager;->jitTutorialBuilder:Lcom/amazon/kedu/ftue/jit/JITTutorialBuilder;

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcom/amazon/kedu/ftue/FTUEManager;->bookContext:Lcom/amazon/kindle/krx/content/IBook;

    .line 71
    new-instance p1, Ljava/util/HashMap;

    const/16 p2, 0x19

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/kedu/ftue/FTUEManager;->tutorialSequences:Ljava/util/HashMap;

    .line 72
    new-instance p1, Ljava/util/PriorityQueue;

    invoke-static {}, Lcom/amazon/kedu/ftue/events/FTUEEvent;->getPriorityComparator()Ljava/util/Comparator;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p1, p0, Lcom/amazon/kedu/ftue/FTUEManager;->jits:Ljava/util/PriorityQueue;

    return-void
.end method

.method private areAssetsAvailable(Ljava/util/List;Lcom/amazon/kedu/ftue/events/EventContext;)Z
    .locals 6

    .line 247
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 249
    check-cast v0, Lcom/amazon/kedu/ftue/events/Tutorial;

    .line 250
    invoke-virtual {v0}, Lcom/amazon/kedu/ftue/events/Tutorial;->getTutorialPageProvider()Lcom/amazon/kedu/ftue/events/TutorialPageProvider;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazon/kedu/ftue/events/TutorialPageProvider;->get(Lcom/amazon/kedu/ftue/events/EventContext;)Ljava/util/List;

    move-result-object v0

    .line 252
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kedu/ftue/events/TutorialPage;

    .line 254
    invoke-virtual {v1}, Lcom/amazon/kedu/ftue/events/TutorialPage;->getRemoteImageResourceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "validating page resource id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/kedu/ftue/events/TutorialPage;->getRemoteImageResourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/FTUEManager;->getAssetManager()Lcom/amazon/kedu/ftue/assets/IAssetManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kedu/ftue/assets/IAssetManager;->getContext()Lcom/amazon/kedu/ftue/assets/IAssetContext;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 260
    invoke-virtual {v1}, Lcom/amazon/kedu/ftue/events/TutorialPage;->getRemoteImageResourceId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/amazon/kedu/ftue/assets/IAssetContext;->getDrawableFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "validating page "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/kedu/ftue/events/TutorialPage;->getRemoteImageResourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_2
    return v3

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private processEvents(Lcom/amazon/kedu/ftue/events/EventContext;Ljava/util/PriorityQueue;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kedu/ftue/events/EventContext;",
            "Ljava/util/PriorityQueue<",
            "Lcom/amazon/kedu/ftue/events/FTUEEvent;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/amazon/kedu/ftue/events/FTUEEvent;",
            ">;"
        }
    .end annotation

    .line 299
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 302
    invoke-virtual {p2}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    new-array v1, v1, [Lcom/amazon/kedu/ftue/events/FTUEEvent;

    invoke-virtual {p2, v1}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/amazon/kedu/ftue/events/FTUEEvent;

    .line 303
    invoke-virtual {p2}, Ljava/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    move-result-object p2

    invoke-static {v1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 304
    array-length p2, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    aget-object v3, v1, v2

    .line 306
    invoke-virtual {v3, p1}, Lcom/amazon/kedu/ftue/events/FTUEEvent;->evaluate(Lcom/amazon/kedu/ftue/events/EventContext;)Z

    move-result v4

    .line 307
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/amazon/kedu/ftue/events/FTUEEvent;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " evaluated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 311
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private recordEventForKey(Ljava/lang/String;)V
    .locals 3

    .line 346
    sget-object v0, Lcom/amazon/kedu/ftue/FTUEManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FTUE triggered event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/amazon/kedu/ftue/FTUEManager;->dataManager:Lcom/amazon/kedu/ftue/data/SQLiteDataManager;

    invoke-virtual {v0, p1}, Lcom/amazon/kedu/ftue/data/SQLiteDataManager;->recordEventForKey(Ljava/lang/String;)V

    return-void
.end method

.method private recordEvents(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kedu/ftue/events/FTUEEvent;",
            ">;)V"
        }
    .end annotation

    .line 338
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/ftue/events/FTUEEvent;

    .line 340
    invoke-virtual {v0}, Lcom/amazon/kedu/ftue/events/FTUEEvent;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kedu/ftue/FTUEManager;->recordEventForKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private validateIncomingKey(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 353
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 355
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Key for event must be set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method convertEventType(Lcom/amazon/kindle/krx/tutorial/events/EventType;)Lcom/amazon/kedu/ftue/events/EventContext$Trigger;
    .locals 1

    .line 435
    sget-object v0, Lcom/amazon/kedu/ftue/FTUEManager$1;->$SwitchMap$com$amazon$kindle$krx$tutorial$events$EventType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 442
    sget-object p1, Lcom/amazon/kedu/ftue/events/EventContext$Trigger;->EVENT:Lcom/amazon/kedu/ftue/events/EventContext$Trigger;

    return-object p1

    .line 440
    :cond_0
    sget-object p1, Lcom/amazon/kedu/ftue/events/EventContext$Trigger;->CHROME_OPEN:Lcom/amazon/kedu/ftue/events/EventContext$Trigger;

    return-object p1

    .line 438
    :cond_1
    sget-object p1, Lcom/amazon/kedu/ftue/events/EventContext$Trigger;->BOOK_OPEN:Lcom/amazon/kedu/ftue/events/EventContext$Trigger;

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, Lcom/amazon/kindle/krx/tutorial/events/EventType;

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/ftue/FTUEManager;->get(Lcom/amazon/kindle/krx/tutorial/events/EventType;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/amazon/kindle/krx/tutorial/events/EventType;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/tutorial/events/EventType;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/tutorial/Tutorial;",
            ">;"
        }
    .end annotation

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    sget-object v1, Lcom/amazon/kedu/ftue/FTUEManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request to get tutorials for event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/FTUEManager;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    .line 411
    invoke-virtual {p0, v1}, Lcom/amazon/kedu/ftue/FTUEManager;->isFTUEEnabled(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 414
    sget-object v2, Lcom/amazon/kindle/krx/tutorial/events/EventType;->BOOK_OPEN:Lcom/amazon/kindle/krx/tutorial/events/EventType;

    if-ne p1, v2, :cond_0

    .line 417
    invoke-virtual {p0, v1}, Lcom/amazon/kedu/ftue/FTUEManager;->onBookOpenEvent(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 419
    :cond_0
    sget-object v2, Lcom/amazon/kindle/krx/tutorial/events/EventType;->CHROME_OPEN:Lcom/amazon/kindle/krx/tutorial/events/EventType;

    if-ne p1, v2, :cond_1

    .line 421
    invoke-virtual {p0, v1}, Lcom/amazon/kedu/ftue/FTUEManager;->onChromeOpenEvent(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method getAssetManager()Lcom/amazon/kedu/ftue/assets/IAssetManager;
    .locals 1

    .line 469
    invoke-static {}, Lcom/amazon/kedu/ftue/Plugin;->getAssetManager()Lcom/amazon/kedu/ftue/assets/IAssetManager;

    move-result-object v0

    return-object v0
.end method

.method getBookContext()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/amazon/kedu/ftue/FTUEManager;->bookContext:Lcom/amazon/kindle/krx/content/IBook;

    return-object v0
.end method

.method getKeyForEventType(Lcom/amazon/kedu/ftue/events/EventContext$Trigger;)Ljava/lang/String;
    .locals 2

    .line 325
    sget-object v0, Lcom/amazon/kedu/ftue/FTUEManager$1;->$SwitchMap$com$amazon$kedu$ftue$events$EventContext$Trigger:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 332
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "OnChromeOpened"

    return-object p1

    :cond_1
    const-string p1, "OnBookOpened"

    return-object p1
.end method

.method getMetricManager()Lcom/amazon/kedu/ftue/metrics/MetricManager;
    .locals 1

    .line 452
    invoke-static {}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->getInstance()Lcom/amazon/kedu/ftue/metrics/MetricManager;

    move-result-object v0

    return-object v0
.end method

.method public getPriority(Lcom/amazon/kindle/krx/tutorial/events/EventType;)I
    .locals 0

    .line 365
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/FTUEManager;->getBookContext()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    .line 366
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/ftue/FTUEManager;->isTextbook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/16 p1, 0x3e8

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 31
    check-cast p1, Lcom/amazon/kindle/krx/tutorial/events/EventType;

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/ftue/FTUEManager;->getPriority(Lcom/amazon/kindle/krx/tutorial/events/EventType;)I

    move-result p1

    return p1
.end method

.method getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 460
    invoke-static {}, Lcom/amazon/kedu/ftue/Plugin;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    return-object v0
.end method

.method isEnabledInSettings(Lcom/amazon/kedu/ftue/util/Format;)Z
    .locals 0

    .line 139
    invoke-static {p1}, Lcom/amazon/kedu/ftue/config/Settings;->isEnabled(Lcom/amazon/kedu/ftue/util/Format;)Z

    move-result p1

    return p1
.end method

.method public isFTUEEnabled(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/ftue/FTUEManager;->isFixedFormatTextbook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    sget-object p1, Lcom/amazon/kedu/ftue/FTUEManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFTUEEnabled on fixedFormat is enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kedu/ftue/util/Format;->FIXED_FORMAT:Lcom/amazon/kedu/ftue/util/Format;

    invoke-virtual {p0, v1}, Lcom/amazon/kedu/ftue/FTUEManager;->isEnabledInSettings(Lcom/amazon/kedu/ftue/util/Format;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object p1, Lcom/amazon/kedu/ftue/util/Format;->FIXED_FORMAT:Lcom/amazon/kedu/ftue/util/Format;

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/ftue/FTUEManager;->isEnabledInSettings(Lcom/amazon/kedu/ftue/util/Format;)Z

    move-result p1

    return p1

    .line 106
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/ftue/FTUEManager;->isTextbook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 108
    sget-object p1, Lcom/amazon/kedu/ftue/FTUEManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFTUEEnabled on reflowable is enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kedu/ftue/util/Format;->FIXED_FORMAT:Lcom/amazon/kedu/ftue/util/Format;

    invoke-virtual {p0, v1}, Lcom/amazon/kedu/ftue/FTUEManager;->isEnabledInSettings(Lcom/amazon/kedu/ftue/util/Format;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object p1, Lcom/amazon/kedu/ftue/util/Format;->REFLOWABLE:Lcom/amazon/kedu/ftue/util/Format;

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/ftue/FTUEManager;->isEnabledInSettings(Lcom/amazon/kedu/ftue/util/Format;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method isFixedFormatTextbook(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 0

    .line 121
    invoke-static {p1}, Lcom/amazon/kedu/ftue/util/Utils;->isFixedFormatTextbook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method

.method isTextbook(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 0

    .line 130
    invoke-static {p1}, Lcom/amazon/kedu/ftue/util/Utils;->isTextbook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method

.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 86
    sget-object p1, Lcom/amazon/kedu/ftue/FTUEManager;->TAG:Ljava/lang/String;

    const-string v0, "Account deregistered, clearing FTUE events"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object p1, p0, Lcom/amazon/kedu/ftue/FTUEManager;->dataManager:Lcom/amazon/kedu/ftue/data/SQLiteDataManager;

    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/data/SQLiteDataManager;->clearAllEntries()V

    :cond_0
    return-void
.end method

.method onBookOpenEvent(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/tutorial/Tutorial;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kedu/ftue/FTUEManager;->getMetricManager()Lcom/amazon/kedu/ftue/metrics/MetricManager;

    move-result-object v2

    .line 198
    sget-object v3, Lcom/amazon/kedu/ftue/metrics/Metric;->TUTORIAL_EVALUATION:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v2, v3}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->startMetricTimer(Lcom/amazon/kedu/ftue/metrics/Metric;)V

    .line 200
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 201
    sget-object v4, Lcom/amazon/kedu/ftue/FTUEManager;->TAG:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "OnBookOpened"

    aput-object v8, v6, v7

    const-string v9, "On \'%s\' event..."

    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v4, v0, Lcom/amazon/kedu/ftue/FTUEManager;->dataManager:Lcom/amazon/kedu/ftue/data/SQLiteDataManager;

    invoke-virtual {v4, v8}, Lcom/amazon/kedu/ftue/data/SQLiteDataManager;->recordEventForKey(Ljava/lang/String;)V

    .line 204
    iget-object v4, v0, Lcom/amazon/kedu/ftue/FTUEManager;->dataManager:Lcom/amazon/kedu/ftue/data/SQLiteDataManager;

    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/kedu/ftue/util/Keys;->getBookOpenedForContentClass(Lcom/amazon/kindle/krx/content/IBook$BookContentClass;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amazon/kedu/ftue/data/SQLiteDataManager;->recordEventForKey(Ljava/lang/String;)V

    .line 205
    iput-object v1, v0, Lcom/amazon/kedu/ftue/FTUEManager;->bookContext:Lcom/amazon/kindle/krx/content/IBook;

    .line 206
    new-instance v12, Lcom/amazon/kedu/ftue/events/EventContext;

    iget-object v4, v0, Lcom/amazon/kedu/ftue/FTUEManager;->dataManager:Lcom/amazon/kedu/ftue/data/SQLiteDataManager;

    sget-object v6, Lcom/amazon/kedu/ftue/events/EventContext$Trigger;->BOOK_OPEN:Lcom/amazon/kedu/ftue/events/EventContext$Trigger;

    invoke-direct {v12, v4, v1, v6, v8}, Lcom/amazon/kedu/ftue/events/EventContext;-><init>(Lcom/amazon/kedu/ftue/data/IDataManager;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kedu/ftue/events/EventContext$Trigger;Ljava/lang/String;)V

    .line 208
    sget-object v1, Lcom/amazon/kedu/ftue/FTUEManager;->TAG:Ljava/lang/String;

    const-string v4, "Checking if any tutorial sequences should be shown..."

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v1, v0, Lcom/amazon/kedu/ftue/FTUEManager;->tutorialSequences:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 211
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 212
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/PriorityQueue;

    .line 214
    invoke-direct {v0, v12, v4, v5}, Lcom/amazon/kedu/ftue/FTUEManager;->processEvents(Lcom/amazon/kedu/ftue/events/EventContext;Ljava/util/PriorityQueue;Z)Ljava/util/List;

    move-result-object v8

    .line 215
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->size()I

    move-result v4

    if-ne v9, v4, :cond_0

    .line 217
    sget-object v4, Lcom/amazon/kedu/ftue/FTUEManager;->TAG:Ljava/lang/String;

    const-string v9, "checking if assets are available"

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-direct {v0, v8, v12}, Lcom/amazon/kedu/ftue/FTUEManager;->areAssetsAvailable(Ljava/util/List;Lcom/amazon/kedu/ftue/events/EventContext;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 222
    sget-object v1, Lcom/amazon/kedu/ftue/FTUEManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "There are "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " screen(s) to be displayed"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v9, v0, Lcom/amazon/kedu/ftue/FTUEManager;->brochureBuilder:Lcom/amazon/kedu/ftue/brochures/TutorialBrochureBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kedu/ftue/FTUEManager;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kedu/ftue/FTUEManager;->getAssetManager()Lcom/amazon/kedu/ftue/assets/IAssetManager;

    move-result-object v1

    move-object v10, v6

    move-object v11, v8

    move-object v4, v14

    move-object v14, v1

    invoke-virtual/range {v9 .. v14}, Lcom/amazon/kedu/ftue/brochures/TutorialBrochureBuilder;->build(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kedu/ftue/events/EventContext;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kedu/ftue/assets/IAssetManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 225
    sget-object v1, Lcom/amazon/kedu/ftue/FTUEManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {v0, v8}, Lcom/amazon/kedu/ftue/FTUEManager;->recordEvents(Ljava/util/Collection;)V

    .line 227
    invoke-direct {v0, v6}, Lcom/amazon/kedu/ftue/FTUEManager;->recordEventForKey(Ljava/lang/String;)V

    .line 228
    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->TUTORIAL_SHOWN:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v2, v1, v6, v5}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportMetricCounter(Lcom/amazon/kedu/ftue/metrics/Metric;Ljava/lang/String;I)V

    goto :goto_1

    .line 234
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 236
    sget-object v6, Lcom/amazon/kedu/ftue/metrics/Metric;->TUTORIAL_ASSETS_AVAILABLE:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v2, v6, v4}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportMetricCounter(Lcom/amazon/kedu/ftue/metrics/Metric;I)V

    goto/16 :goto_0

    .line 239
    :cond_2
    :goto_1
    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->TUTORIAL_EVALUATION:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v2, v1}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->stopMetricTimer(Lcom/amazon/kedu/ftue/metrics/Metric;)V

    .line 240
    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->TUTORIAL_SHOWN:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v2, v1, v5}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportMetricCounter(Lcom/amazon/kedu/ftue/metrics/Metric;I)V

    return-object v3
.end method

.method onChromeOpenEvent(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/tutorial/Tutorial;",
            ">;"
        }
    .end annotation

    .line 375
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/FTUEManager;->getMetricManager()Lcom/amazon/kedu/ftue/metrics/MetricManager;

    move-result-object p1

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 378
    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->JIT_EVALUATION:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {p1, v1}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->startMetricTimer(Lcom/amazon/kedu/ftue/metrics/Metric;)V

    .line 379
    sget-object v1, Lcom/amazon/kindle/krx/tutorial/events/EventType;->CHROME_OPEN:Lcom/amazon/kindle/krx/tutorial/events/EventType;

    invoke-virtual {p0, v1}, Lcom/amazon/kedu/ftue/FTUEManager;->convertEventType(Lcom/amazon/kindle/krx/tutorial/events/EventType;)Lcom/amazon/kedu/ftue/events/EventContext$Trigger;

    move-result-object v1

    .line 380
    invoke-virtual {p0, v1}, Lcom/amazon/kedu/ftue/FTUEManager;->getKeyForEventType(Lcom/amazon/kedu/ftue/events/EventContext$Trigger;)Ljava/lang/String;

    move-result-object v2

    .line 382
    iget-object v3, p0, Lcom/amazon/kedu/ftue/FTUEManager;->dataManager:Lcom/amazon/kedu/ftue/data/SQLiteDataManager;

    invoke-virtual {v3, v2}, Lcom/amazon/kedu/ftue/data/SQLiteDataManager;->recordEventForKey(Ljava/lang/String;)V

    .line 384
    new-instance v3, Lcom/amazon/kedu/ftue/events/EventContext;

    iget-object v4, p0, Lcom/amazon/kedu/ftue/FTUEManager;->dataManager:Lcom/amazon/kedu/ftue/data/SQLiteDataManager;

    iget-object v5, p0, Lcom/amazon/kedu/ftue/FTUEManager;->bookContext:Lcom/amazon/kindle/krx/content/IBook;

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/amazon/kedu/ftue/events/EventContext;-><init>(Lcom/amazon/kedu/ftue/data/IDataManager;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kedu/ftue/events/EventContext$Trigger;Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/amazon/kedu/ftue/FTUEManager;->jits:Ljava/util/PriorityQueue;

    const/4 v2, 0x0

    invoke-direct {p0, v3, v1, v2}, Lcom/amazon/kedu/ftue/FTUEManager;->processEvents(Lcom/amazon/kedu/ftue/events/EventContext;Ljava/util/PriorityQueue;Z)Ljava/util/List;

    move-result-object v1

    .line 387
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/FTUEManager;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    .line 388
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kedu/ftue/events/FTUEEvent;

    .line 390
    iget-object v6, p0, Lcom/amazon/kedu/ftue/FTUEManager;->jitTutorialBuilder:Lcom/amazon/kedu/ftue/jit/JITTutorialBuilder;

    move-object v7, v4

    check-cast v7, Lcom/amazon/kedu/ftue/events/JIT;

    invoke-virtual {v6, v7, v3}, Lcom/amazon/kedu/ftue/jit/JITTutorialBuilder;->build(Lcom/amazon/kedu/ftue/events/JIT;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/tutorial/JITTutorial;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-virtual {v4}, Lcom/amazon/kedu/ftue/events/FTUEEvent;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/amazon/kedu/ftue/FTUEManager;->recordEventForKey(Ljava/lang/String;)V

    .line 392
    sget-object v6, Lcom/amazon/kedu/ftue/metrics/Metric;->JIT_SHOWN:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v4}, Lcom/amazon/kedu/ftue/events/FTUEEvent;->getMetricKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v6, v4, v5}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportMetricCounter(Lcom/amazon/kedu/ftue/metrics/Metric;Ljava/lang/String;I)V

    goto :goto_0

    .line 395
    :cond_0
    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->JIT_EVALUATION:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {p1, v1}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->stopMetricTimer(Lcom/amazon/kedu/ftue/metrics/Metric;)V

    .line 396
    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->JIT_SHOWN:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p1, v1, v2}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportMetricCounter(Lcom/amazon/kedu/ftue/metrics/Metric;I)V

    return-object v0
.end method

.method public publishEvent(Ljava/lang/String;)V
    .locals 3

    .line 292
    sget-object v0, Lcom/amazon/kedu/ftue/FTUEManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Publishing event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/amazon/kedu/ftue/FTUEManager;->dataManager:Lcom/amazon/kedu/ftue/data/SQLiteDataManager;

    invoke-virtual {v0, p1}, Lcom/amazon/kedu/ftue/data/SQLiteDataManager;->recordEventForKey(Ljava/lang/String;)V

    return-void
.end method

.method public registerJit(Lcom/amazon/kedu/ftue/events/JIT;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/amazon/kedu/ftue/FTUEManager;->jits:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    return-void

    .line 150
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FTUE event cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerTutorialForSequence(Ljava/lang/String;Lcom/amazon/kedu/ftue/events/Tutorial;)V
    .locals 4

    .line 161
    invoke-direct {p0, p1}, Lcom/amazon/kedu/ftue/FTUEManager;->validateIncomingKey(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 167
    sget-object v0, Lcom/amazon/kedu/ftue/FTUEManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/amazon/kedu/ftue/events/FTUEEvent;->getKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, "Registering tutorial \'%s\' for tutorial sequence \'%s\'"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/amazon/kedu/ftue/FTUEManager;->tutorialSequences:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/PriorityQueue;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0x32

    invoke-static {}, Lcom/amazon/kedu/ftue/events/FTUEEvent;->getPriorityComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 173
    iget-object v1, p0, Lcom/amazon/kedu/ftue/FTUEManager;->tutorialSequences:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    return-void

    .line 164
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FTUE event cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
