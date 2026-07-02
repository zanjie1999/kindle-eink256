.class public abstract Lcom/amazon/falkor/download/DownloadResponseHandler;
.super Lcom/amazon/kindle/krx/download/AbstractHttpResponseHandler;
.source "DownloadResponseHandler.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/kindle/krx/download/AbstractHttpResponseHandler;"
    }
.end annotation


# instance fields
.field private downloadStatus:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

.field private final onFailure:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onSuccessful:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private response:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onSuccessful"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onFailure"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/amazon/kindle/krx/download/AbstractHttpResponseHandler;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/download/DownloadResponseHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/falkor/download/DownloadResponseHandler;->onSuccessful:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/amazon/falkor/download/DownloadResponseHandler;->onFailure:Lkotlin/jvm/functions/Function2;

    .line 26
    sget-object p1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->DOWNLOADING:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    iput-object p1, p0, Lcom/amazon/falkor/download/DownloadResponseHandler;->downloadStatus:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    return-void
.end method


# virtual methods
.method public final getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/falkor/download/DownloadResponseHandler;->downloadStatus:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    return-object v0
.end method

.method public final getResponse()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/amazon/falkor/download/DownloadResponseHandler;->response:Ljava/lang/Object;

    return-object v0
.end method

.method protected final getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/falkor/download/DownloadResponseHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method

.method public onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 2

    const-string/jumbo v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p2, p0, Lcom/amazon/falkor/download/DownloadResponseHandler;->downloadStatus:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    .line 30
    sget-object v0, Lcom/amazon/falkor/download/DownloadResponseHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/amazon/falkor/download/DownloadResponseHandler;->onFailure:Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/amazon/falkor/download/DownloadResponseHandler;->onSuccessful:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final setDownloadStatus(Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/amazon/falkor/download/DownloadResponseHandler;->downloadStatus:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    return-void
.end method

.method public final setResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/amazon/falkor/download/DownloadResponseHandler;->response:Ljava/lang/Object;

    return-void
.end method
