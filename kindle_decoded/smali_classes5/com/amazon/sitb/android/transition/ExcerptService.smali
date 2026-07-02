.class public Lcom/amazon/sitb/android/transition/ExcerptService;
.super Ljava/lang/Object;
.source "ExcerptService.java"


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private final readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/transition/ExcerptService;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/transition/ExcerptService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IReaderManager;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/sitb/android/transition/ExcerptService;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    return-void
.end method

.method private join([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, p1, v4

    if-eqz v5, :cond_1

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    const/16 v6, 0x20

    .line 59
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getExcerpt(Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/lang/String;
    .locals 2

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/amazon/sitb/android/transition/ExcerptService;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookContent()Lcom/amazon/kindle/krx/content/IBookContent;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, p1, p1, v1, v1}, Lcom/amazon/kindle/krx/content/IBookContent;->getWordsAroundPosition(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)[Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/sitb/android/transition/ExcerptService;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 39
    :catch_0
    sget-object p1, Lcom/amazon/sitb/android/transition/ExcerptService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v0, "Could not retrieve excerpt from position"

    invoke-interface {p1, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
