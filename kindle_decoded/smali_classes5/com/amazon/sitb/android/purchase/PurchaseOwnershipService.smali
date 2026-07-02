.class public Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;
.super Ljava/lang/Object;
.source "PurchaseOwnershipService.java"


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private final clockService:Lcom/amazon/sitb/android/services/ClockService;

.field private final delayBetweenChecks:J

.field private final libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

.field private final numChecksPerSync:I

.field private final numSyncAttempts:I

.field private final reader:Lcom/amazon/sitb/android/ReaderActions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/sitb/android/ReaderActions;Lcom/amazon/kindle/krx/library/ILibraryManager;Lcom/amazon/sitb/android/services/ClockService;IIJ)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;->reader:Lcom/amazon/sitb/android/ReaderActions;

    .line 36
    iput-object p2, p0, Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    .line 37
    iput-object p3, p0, Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;->clockService:Lcom/amazon/sitb/android/services/ClockService;

    .line 38
    iput p4, p0, Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;->numSyncAttempts:I

    .line 39
    iput p5, p0, Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;->numChecksPerSync:I

    .line 40
    iput-wide p6, p0, Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;->delayBetweenChecks:J

    return-void
.end method


# virtual methods
.method public isOwned(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 46
    :goto_0
    iget v3, p0, Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;->numSyncAttempts:I

    if-ge v2, v3, :cond_2

    if-nez v1, :cond_2

    const-string v3, ")"

    const-string v4, " of "

    const/4 v5, 0x1

    if-lez v2, :cond_0

    .line 55
    sget-object v6, Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Requesting sync ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;->numSyncAttempts:I

    sub-int/2addr v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 56
    iget-object v6, p0, Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;->reader:Lcom/amazon/sitb/android/ReaderActions;

    invoke-virtual {v6}, Lcom/amazon/sitb/android/ReaderActions;->syncMetadataAndTodo()V

    .line 60
    :cond_0
    :goto_1
    iget v6, p0, Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;->numChecksPerSync:I

    if-gt v5, v6, :cond_1

    if-nez v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;->clockService:Lcom/amazon/sitb/android/services/ClockService;

    iget-wide v6, p0, Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;->delayBetweenChecks:J

    invoke-virtual {v1, v6, v7}, Lcom/amazon/sitb/android/services/ClockService;->sleep(J)V

    .line 63
    sget-object v1, Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking ownership ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;->numChecksPerSync:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    invoke-interface {v1, p1, v0}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method
