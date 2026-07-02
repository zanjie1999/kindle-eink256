.class public Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;
.super Lcom/amazon/kindle/krx/application/BaseMAPWebViewClientCallback;
.source "BottomSheetWebviewCallback.kt"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final bottomSheetId:Ljava/lang/String;

.field private final hasError:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-string v0, "bottomSheetId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sdk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lcom/amazon/kindle/krx/application/BaseMAPWebViewClientCallback;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->bottomSheetId:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 18
    const-class p1, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->TAG:Ljava/lang/String;

    .line 24
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->isFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->hasError:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void

    .line 18
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string/jumbo p2, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getHasError()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->hasError:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final hasError()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->hasError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final isReady()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->isFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->hasError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->isFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 68
    sget-object p1, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceUtils;

    iget-object p2, p0, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->bottomSheetId:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->emitBottomSheetWebViewLoadEnd(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    const-string/jumbo p3, "view"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->isFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 63
    sget-object p1, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceUtils;

    iget-object p2, p0, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object p3, p0, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->bottomSheetId:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->emitBottomSheetWebViewLoadStart(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "description"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "failingUrl"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceivedError URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " Code: "

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " Description: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->hasError:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "errorResponse"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceivedHttpError URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Code: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->hasError:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final reset()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->isFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 37
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/BottomSheetWebviewCallback;->hasError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
