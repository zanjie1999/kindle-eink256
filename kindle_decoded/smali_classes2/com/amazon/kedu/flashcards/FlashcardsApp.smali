.class public final Lcom/amazon/kedu/flashcards/FlashcardsApp;
.super Ljava/lang/Object;
.source "FlashcardsApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/FlashcardsApp$SingletonHolder;
    }
.end annotation


# static fields
.field private static final MOP_EXT_AZW4:Ljava/lang/String; = "azw4"

.field private static final MOP_EXT_MOP:Ljava/lang/String; = "mop"

.field private static xRayAvailable:Z


# instance fields
.field private volatile clickstream:Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamEventHandler;

.field private volatile eventBus:Lcom/amazon/kedu/flashcards/events/EventBus;

.field private lastOpened:Ljava/lang/Long;

.field private volatile lastWorkingBook:Lcom/amazon/kindle/krx/content/IBook;

.field private volatile lastWorkingColor:Lcom/amazon/kindle/krx/ui/ColorMode;

.field private volatile lastWorkingNlnState:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsApp;->lastWorkingBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 44
    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    iput-object v1, p0, Lcom/amazon/kedu/flashcards/FlashcardsApp;->lastWorkingColor:Lcom/amazon/kindle/krx/ui/ColorMode;

    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lcom/amazon/kedu/flashcards/FlashcardsApp;->lastWorkingNlnState:Z

    .line 46
    iput-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsApp;->lastOpened:Ljava/lang/Long;

    .line 52
    new-instance v0, Lcom/amazon/kedu/flashcards/events/MainThreadEventBus;

    invoke-direct {v0}, Lcom/amazon/kedu/flashcards/events/MainThreadEventBus;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsApp;->eventBus:Lcom/amazon/kedu/flashcards/events/EventBus;

    .line 53
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsApp;->eventBus:Lcom/amazon/kedu/flashcards/events/EventBus;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/events/EventBus;->start()V

    .line 55
    new-instance v0, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamEventHandler;

    invoke-direct {v0, p0}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamEventHandler;-><init>(Lcom/amazon/kedu/flashcards/FlashcardsApp;)V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsApp;->clickstream:Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamEventHandler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kedu/flashcards/FlashcardsApp$1;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;-><init>()V

    return-void
.end method

.method public static currentBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 75
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-direct {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    return-object v0
.end method

.method private getBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 107
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->resolveBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsApp;->lastWorkingBook:Lcom/amazon/kindle/krx/content/IBook;

    return-object v0

    .line 114
    :cond_0
    iput-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsApp;->lastWorkingBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 115
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsApp;->lastWorkingBook:Lcom/amazon/kindle/krx/content/IBook;

    return-object v0
.end method

.method public static getBookIdentifier(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 0

    .line 65
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;
    .locals 1

    .line 60
    sget-object v0, Lcom/amazon/kedu/flashcards/FlashcardsApp$SingletonHolder;->INSTANCE:Lcom/amazon/kedu/flashcards/FlashcardsApp;

    return-object v0
.end method

.method public static isActivityValid(Lcom/amazon/kedu/flashcards/DeckListActivity;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFixedFormatTextbook(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 3

    if-eqz p0, :cond_3

    .line 227
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 232
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getFilename()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v2, 0x2e

    .line 236
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-lez v2, :cond_0

    add-int/2addr v2, v1

    .line 239
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v2, "azw4"

    .line 242
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mop"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 249
    :cond_2
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->TEXTBOOK:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    if-ne v0, v2, :cond_3

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->isFixedLayout()Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private resolveBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 136
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private resolveColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;
    .locals 3

    .line 161
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 164
    const-class v1, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    invoke-static {v1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 166
    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/ui/DarkModeHelper;->isDarkModePhaseEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/ThemeArea;->IN_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    goto :goto_0

    .line 173
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private resolveNonLinearNavigationEnabled()Ljava/lang/Boolean;
    .locals 2

    .line 213
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NONLINEAR_NAVIGATION:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    .line 217
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v0

    .line 216
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static xRayAvailable()Z
    .locals 4

    .line 85
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->currentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->currentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    .line 88
    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 93
    :cond_0
    invoke-interface {v2, v1, v3}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getContentSidecarDirectory(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KLO.entities"

    if-eqz v0, :cond_1

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".asc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;
    .locals 1

    .line 147
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->resolveColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsApp;->lastWorkingColor:Lcom/amazon/kindle/krx/ui/ColorMode;

    return-object v0

    .line 153
    :cond_0
    iput-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsApp;->lastWorkingColor:Lcom/amazon/kindle/krx/ui/ColorMode;

    return-object v0
.end method

.method public getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsApp;->eventBus:Lcom/amazon/kedu/flashcards/events/EventBus;

    return-object v0
.end method

.method public isNonLinearNavigationEnabled()Z
    .locals 2

    .line 199
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->resolveNonLinearNavigationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 202
    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsApp;->lastWorkingNlnState:Z

    return v0

    .line 205
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazon/kedu/flashcards/FlashcardsApp;->lastWorkingNlnState:Z

    .line 206
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized reportFlashcardsOpened()V
    .locals 2

    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsApp;->lastOpened:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 191
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsApp;->lastOpened:Ljava/lang/Long;

    .line 193
    invoke-static {}, Lcom/amazon/kedu/ftue/Plugin;->getFTUEManager()Lcom/amazon/kedu/ftue/IFTUEManager;

    move-result-object v0

    const-string v1, "flashcards_opened"

    invoke-interface {v0, v1}, Lcom/amazon/kedu/ftue/IFTUEManager;->publishEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetLastOpened()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 182
    :try_start_0
    iput-object v0, p0, Lcom/amazon/kedu/flashcards/FlashcardsApp;->lastOpened:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
