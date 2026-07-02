.class public final Lcom/amazon/klo/KLOApp;
.super Ljava/lang/Object;
.source "KLOApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/klo/KLOApp$SingletonHolder;
    }
.end annotation


# static fields
.field private static final MOP_EXT_AZW4:Ljava/lang/String; = "azw4"

.field private static final MOP_EXT_MOP:Ljava/lang/String; = "mop"


# instance fields
.field private lastOpened:Ljava/lang/Long;

.field private volatile lastWorkingBook:Lcom/amazon/kindle/krx/content/IBook;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/amazon/klo/KLOApp;->lastOpened:Ljava/lang/Long;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/klo/KLOApp$1;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazon/klo/KLOApp;-><init>()V

    return-void
.end method

.method public static currentBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 52
    invoke-static {}, Lcom/amazon/klo/KLOApp;->getInstance()Lcom/amazon/klo/KLOApp;

    move-result-object v0

    invoke-direct {v0}, Lcom/amazon/klo/KLOApp;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    return-object v0
.end method

.method private getBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 144
    invoke-direct {p0}, Lcom/amazon/klo/KLOApp;->resolveBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/amazon/klo/KLOApp;->lastWorkingBook:Lcom/amazon/kindle/krx/content/IBook;

    return-object v0

    .line 151
    :cond_0
    iput-object v0, p0, Lcom/amazon/klo/KLOApp;->lastWorkingBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 152
    iget-object v0, p0, Lcom/amazon/klo/KLOApp;->lastWorkingBook:Lcom/amazon/kindle/krx/content/IBook;

    return-object v0
.end method

.method public static getInstance()Lcom/amazon/klo/KLOApp;
    .locals 1

    .line 42
    sget-object v0, Lcom/amazon/klo/KLOApp$SingletonHolder;->INSTANCE:Lcom/amazon/klo/KLOApp;

    return-object v0
.end method

.method public static getTheme()Lcom/amazon/kindle/krx/theme/Theme;
    .locals 3

    .line 69
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 72
    const-class v1, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    invoke-static {v1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    .line 73
    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/ui/DarkModeHelper;->isDarkModePhaseEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/ThemeArea;->IN_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    goto :goto_0

    .line 85
    :cond_2
    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    :goto_0
    return-object v0
.end method

.method public static hasPageLabels()Z
    .locals 1

    .line 130
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookPageNumberManager()Lcom/amazon/kindle/krx/reader/IPageNumberManager;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPageNumberManager;->isPageNumberingSupported()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFixedFormatTextbook(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 98
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 103
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getFilename()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const/16 v3, 0x2e

    .line 107
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-lez v3, :cond_1

    add-int/2addr v3, v2

    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    const-string v3, "azw4"

    .line 113
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "mop"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    return v2

    .line 120
    :cond_3
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->TEXTBOOK:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    if-ne v1, v3, :cond_4

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->isFixedLayout()Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public static isNonLinearNavigationEnabled()Z
    .locals 2

    .line 62
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NONLINEAR_NAVIGATION:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v0

    return v0
.end method

.method private resolveBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 173
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
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


# virtual methods
.method public declared-synchronized reportXrayOpened()V
    .locals 2

    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/amazon/klo/KLOApp;->lastOpened:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 202
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/klo/KLOApp;->lastOpened:Ljava/lang/Long;

    .line 204
    invoke-static {}, Lcom/amazon/kedu/ftue/Plugin;->getFTUEManager()Lcom/amazon/kedu/ftue/IFTUEManager;

    move-result-object v0

    const-string v1, "klo_opened"

    invoke-interface {v0, v1}, Lcom/amazon/kedu/ftue/IFTUEManager;->publishEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
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

    .line 192
    :try_start_0
    iput-object v0, p0, Lcom/amazon/klo/KLOApp;->lastOpened:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
