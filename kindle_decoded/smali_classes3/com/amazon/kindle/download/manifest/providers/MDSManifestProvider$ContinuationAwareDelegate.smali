.class final Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$ContinuationAwareDelegate;
.super Ljava/lang/Object;
.source "MDSManifestProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContinuationAwareDelegate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RETURN_TYPE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;"
    }
.end annotation


# instance fields
.field private final continuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "TRETURN_TYPE;>;"
        }
    .end annotation
.end field

.field private final handler:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;",
            "Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;",
            "TRETURN_TYPE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuation;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-TRETURN_TYPE;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;",
            "-",
            "Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;",
            "+TRETURN_TYPE;>;)V"
        }
    .end annotation

    const-string v0, "continuation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$ContinuationAwareDelegate;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    iput-object p2, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$ContinuationAwareDelegate;->handler:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public downloadJobFinished(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result;)V
    .locals 9

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;->access$getTAG$cp()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received downloadJobFinished for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getParams()Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with continuation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$ContinuationAwareDelegate;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$ContinuationAwareDelegate;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v0}, Lkotlinx/coroutines/CancellableContinuation;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 116
    :cond_0
    instance-of v0, p2, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$ContinuationAwareDelegate;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$ContinuationAwareDelegate;->handler:Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 119
    :cond_1
    instance-of v0, p2, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;

    if-eqz v0, :cond_3

    .line 120
    new-instance v0, Lcom/amazon/kindle/download/ManifestProviderException$ManifestStreamingException;

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Manifest streaming failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getParams()Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    move-object p1, p2

    check-cast p1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;->getHttpResponse()Lcom/amazon/kindle/webservices/HttpResponseProperties;

    move-result-object v3

    .line 123
    move-object p1, p2

    check-cast p1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;->getPayload()Ljava/lang/String;

    move-result-object v4

    .line 124
    check-cast p2, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;

    invoke-virtual {p2}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-eq p1, p2, :cond_2

    const/4 p1, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, v0

    .line 120
    invoke-direct/range {v1 .. v8}, Lcom/amazon/kindle/download/ManifestProviderException$ManifestStreamingException;-><init>(Ljava/lang/String;Lcom/amazon/kindle/webservices/HttpResponseProperties;Ljava/lang/String;ZLjava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
    :try_end_0
    .catch Lcom/amazon/kindle/download/ManifestProviderException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 129
    iget-object p2, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$ContinuationAwareDelegate;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method
