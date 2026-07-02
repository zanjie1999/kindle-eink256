.class public Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;
.super Ljava/lang/Object;
.source "PurchaseDownloadService.java"


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private final clockService:Lcom/amazon/sitb/android/services/ClockService;

.field private final delayBetweenChecks:J

.field private final libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

.field private final numChecks:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/library/ILibraryManager;Lcom/amazon/sitb/android/services/ClockService;IJ)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    .line 30
    iput-object p2, p0, Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;->clockService:Lcom/amazon/sitb/android/services/ClockService;

    .line 31
    iput p3, p0, Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;->numChecks:I

    .line 32
    iput-wide p4, p0, Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;->delayBetweenChecks:J

    return-void
.end method


# virtual methods
.method public hasDownloadStarted(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 43
    :goto_0
    iget v3, p0, Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;->numChecks:I

    if-gt v2, v3, :cond_5

    if-eqz p1, :cond_5

    .line 45
    iget-object v3, p0, Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;->clockService:Lcom/amazon/sitb/android/services/ClockService;

    iget-wide v4, p0, Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;->delayBetweenChecks:J

    invoke-virtual {v3, v4, v5}, Lcom/amazon/sitb/android/services/ClockService;->sleep(J)V

    .line 46
    sget-object v3, Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking download status ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;->numChecks:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 48
    iget-object v3, p0, Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1, v0}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 49
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v3

    .line 51
    :goto_1
    sget-object v4, Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current state of book: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_2

    const-string v6, "UNOWNED"

    goto :goto_2

    :cond_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 52
    sget-object v4, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->QUEUED:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    if-eq v3, v4, :cond_4

    sget-object v4, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->DOWNLOADING:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    if-eq v3, v4, :cond_4

    sget-object v4, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->LOCAL:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    if-eq v3, v4, :cond_4

    sget-object v4, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->FAILED:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    if-ne v3, v4, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return v1

    :cond_5
    return v0
.end method
