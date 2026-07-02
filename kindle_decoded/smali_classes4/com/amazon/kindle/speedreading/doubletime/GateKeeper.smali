.class public Lcom/amazon/kindle/speedreading/doubletime/GateKeeper;
.super Ljava/lang/Object;
.source "GateKeeper.java"


# static fields
.field public static final SUPPORTED_BOOK_FORMATS:[Lcom/amazon/kindle/krx/content/BookFormat;

.field public static final SUPPORTED_LANGUAGES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "com.amazon.kindle.speedreading.doubletime.GateKeeper"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "en"

    .line 26
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/speedreading/doubletime/GateKeeper;->SUPPORTED_LANGUAGES:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kindle/krx/content/BookFormat;

    .line 28
    sget-object v1, Lcom/amazon/kindle/krx/content/BookFormat;->MOBI7:Lcom/amazon/kindle/krx/content/BookFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/krx/content/BookFormat;->MOBI8:Lcom/amazon/kindle/krx/content/BookFormat;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/krx/content/BookFormat;->TOPAZ:Lcom/amazon/kindle/krx/content/BookFormat;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/krx/content/BookFormat;->YJBINARY:Lcom/amazon/kindle/krx/content/BookFormat;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/speedreading/doubletime/GateKeeper;->SUPPORTED_BOOK_FORMATS:[Lcom/amazon/kindle/krx/content/BookFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized allowDoubleTime(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/view/accessibility/AccessibilityManager;)Z
    .locals 10

    const-class v0, Lcom/amazon/kindle/speedreading/doubletime/GateKeeper;

    monitor-enter v0

    .line 40
    :try_start_0
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    .line 43
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v2

    const/4 v3, 0x7

    .line 44
    invoke-interface {v2, v3}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->isOrientationChangeSupported(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 46
    sget-object p0, Lcom/amazon/kindle/speedreading/doubletime/GateKeeper;->TAG:Ljava/lang/String;

    const-string p1, "Disable Double Time because change to PORTRAIT orientation is not supported"

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit v0

    return v3

    .line 50
    :cond_0
    :try_start_1
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    .line 51
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    if-nez v2, :cond_1

    .line 54
    sget-object p0, Lcom/amazon/kindle/speedreading/doubletime/GateKeeper;->TAG:Ljava/lang/String;

    const-string p1, "Disable Double Time because current book is null"

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    monitor-exit v0

    return v3

    .line 59
    :cond_1
    :try_start_2
    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 61
    sget-object p0, Lcom/amazon/kindle/speedreading/doubletime/GateKeeper;->TAG:Ljava/lang/String;

    const-string p1, "Word Runner should be disabled for Falkor content"

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    monitor-exit v0

    return v3

    .line 65
    :cond_2
    :try_start_3
    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getContentLanguage()Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object v6

    .line 68
    sget-object v7, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->DEFAULT:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    if-eq v6, v7, :cond_3

    .line 70
    sget-object p0, Lcom/amazon/kindle/speedreading/doubletime/GateKeeper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disable Double Time because content class is not default. It is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    monitor-exit v0

    return v3

    .line 76
    :cond_3
    :try_start_4
    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->isIllustrated()Z

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_4

    .line 78
    monitor-exit v0

    return v3

    .line 81
    :cond_4
    :try_start_5
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object p0

    invoke-interface {p0, v4}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object p0

    .line 84
    sget-object v4, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-eq p0, v4, :cond_5

    sget-object v4, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->DOUBLETIME:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-eq p0, v4, :cond_5

    sget-object v4, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AMPLIFY:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-eq p0, v4, :cond_5

    .line 88
    sget-object p1, Lcom/amazon/kindle/speedreading/doubletime/GateKeeper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disable Double Time because we are not in the correct mode. Mode is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p1, p0}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 89
    monitor-exit v0

    return v3

    .line 94
    :cond_5
    :try_start_6
    sget-object p0, Lcom/amazon/kindle/speedreading/doubletime/GateKeeper;->SUPPORTED_LANGUAGES:[Ljava/lang/String;

    array-length v4, p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x1

    if-ge v6, v4, :cond_7

    aget-object v9, p0, v6

    if-eqz v5, :cond_6

    .line 96
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v7, 0x1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    if-nez v7, :cond_8

    .line 104
    sget-object p0, Lcom/amazon/kindle/speedreading/doubletime/GateKeeper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disable Double Time because we do not support book language. Lang is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 105
    monitor-exit v0

    return v3

    .line 108
    :cond_8
    :try_start_7
    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p0

    sget-object v4, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne p0, v4, :cond_d

    .line 110
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 112
    sget-object p0, Lcom/amazon/kindle/speedreading/doubletime/GateKeeper;->TAG:Ljava/lang/String;

    const-string p1, "Disable Double Time because we are in voice view mode"

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 113
    monitor-exit v0

    return v3

    .line 116
    :cond_9
    :try_start_8
    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->isFixedLayout()Z

    move-result p0

    if-nez p0, :cond_c

    .line 118
    sget-object p0, Lcom/amazon/kindle/speedreading/doubletime/GateKeeper;->SUPPORTED_BOOK_FORMATS:[Lcom/amazon/kindle/krx/content/BookFormat;

    array-length p1, p0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p1, :cond_b

    aget-object v5, p0, v4

    .line 120
    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v6

    if-ne v5, v6, :cond_a

    .line 122
    sget-object p0, Lcom/amazon/kindle/speedreading/doubletime/GateKeeper;->TAG:Ljava/lang/String;

    const-string p1, "Double Time enabled"

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 123
    monitor-exit v0

    return v8

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 127
    :cond_b
    :try_start_9
    sget-object p0, Lcom/amazon/kindle/speedreading/doubletime/GateKeeper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disable Double Time because book format is not supported. Book Format = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 129
    monitor-exit v0

    return v3

    .line 133
    :cond_c
    :try_start_a
    sget-object p0, Lcom/amazon/kindle/speedreading/doubletime/GateKeeper;->TAG:Ljava/lang/String;

    const-string p1, "Disable Double Time because Fixed Layout books are not supported"

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 134
    monitor-exit v0

    return v3

    .line 138
    :cond_d
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
