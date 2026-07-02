.class public Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;
.super Ljava/lang/Object;
.source "SampleEpisodeController.kt"


# instance fields
.field private final fullBook:Lcom/amazon/falkor/FalkorBook;

.field private final isFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final messageQueue:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/amazon/kindle/krx/events/IMessageQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/falkor/FalkorBook;Lkotlin/Lazy;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/falkor/FalkorBook;",
            "Lkotlin/Lazy<",
            "+",
            "Lcom/amazon/kindle/krx/events/IMessageQueue;",
            ">;",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ")V"
        }
    .end annotation

    const-string v0, "fullBook"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "messageQueue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sdk"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->fullBook:Lcom/amazon/falkor/FalkorBook;

    iput-object p2, p0, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->messageQueue:Lkotlin/Lazy;

    iput-object p3, p0, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 421
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->isFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$getFullBook$p(Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;)Lcom/amazon/falkor/FalkorBook;
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->fullBook:Lcom/amazon/falkor/FalkorBook;

    return-object p0
.end method

.method public static final synthetic access$getMessageQueue$p(Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;)Lkotlin/Lazy;
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->messageQueue:Lkotlin/Lazy;

    return-object p0
.end method

.method public static final synthetic access$getSdk$p(Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method public static final synthetic access$isFailed$p(Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->isFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public final convertSampleToFull()Z
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string/jumbo v1, "sdk.applicationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->fullBook:Lcom/amazon/falkor/FalkorBook;

    invoke-virtual {v1}, Lcom/amazon/falkor/FalkorBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter$convertSampleToFull$1;

    invoke-direct {v2, p0}, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter$convertSampleToFull$1;-><init>(Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;)V

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->registerDownloadProgressListener(Ljava/lang/String;Lcom/amazon/kindle/krx/download/IDownloadStatusListener;)V

    .line 445
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->fullBook:Lcom/amazon/falkor/FalkorBook;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/store/IStoreManager;->initiateBookDownload(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    return v0
.end method

.method public final restartConversionIfFailed()Z
    .locals 3

    .line 452
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->isFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->fullBook:Lcom/amazon/falkor/FalkorBook;

    invoke-virtual {v2}, Lcom/amazon/falkor/FalkorBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->deleteItem(Ljava/lang/String;Z)V

    .line 454
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->convertSampleToFull()Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method
