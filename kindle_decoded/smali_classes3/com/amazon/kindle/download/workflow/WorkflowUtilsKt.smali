.class public final Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt;
.super Ljava/lang/Object;
.source "WorkflowUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWorkflowUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkflowUtils.kt\ncom/amazon/kindle/download/workflow/WorkflowUtilsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,316:1\n1517#2:317\n1588#2,3:318\n1#3:321\n308#4,11:322\n*E\n*S KotlinDebug\n*F\n+ 1 WorkflowUtils.kt\ncom/amazon/kindle/download/workflow/WorkflowUtilsKt\n*L\n76#1:317\n76#1,3:318\n249#1,11:322\n*E\n"
.end annotation


# direct methods
.method public static final buildErrorDescriberForForbiddenPayload(Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;
    .locals 3

    const-string v0, "payload"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseErrorDescriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "krlDownloadFacade"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logTag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-static {p0, p1}, Lcom/amazon/kindle/download/manifest/ManifestUtilsKt;->parseMDSForbiddenError(Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)Lcom/amazon/kindle/download/manifest/ParsingResult;

    move-result-object v0

    .line 189
    instance-of v1, v0, Lcom/amazon/kindle/download/manifest/ParsingResult$Success;

    if-eqz v1, :cond_0

    .line 190
    check-cast v0, Lcom/amazon/kindle/download/manifest/ParsingResult$Success;

    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/ParsingResult$Success;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    invoke-interface {p1, p0}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setAll(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V

    goto :goto_0

    .line 192
    :cond_0
    instance-of v1, v0, Lcom/amazon/kindle/download/manifest/ParsingResult$Failure;

    if-eqz v1, :cond_1

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while parsing json for a 403 error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast v0, Lcom/amazon/kindle/download/manifest/ParsingResult$Failure;

    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/ParsingResult$Failure;->getException()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {p3, p0, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    :cond_1
    :goto_0
    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->isYJSupportedOnDevice()Z

    move-result p0

    if-nez p0, :cond_2

    .line 203
    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getDownloadContentIncompatibleErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setErrorMessage(Ljava/lang/String;)V

    .line 212
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->shouldDisplayCDEError()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 213
    sget-object p0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FORBIDDEN:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    goto :goto_1

    .line 215
    :cond_3
    sget-object p0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CDE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 217
    :goto_1
    invoke-interface {p1, p0}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setError(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    .line 219
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DeliveryManifestHandler: parse403Error() - Received error: errorCode is : "

    .line 220
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " .ErrorTitle is : "

    .line 222
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getErrorTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " .ErrorMessage is : "

    .line 224
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " .ErrorLink is : "

    .line 226
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getErrorLink()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static final fetchManifest(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lcom/amazon/kindle/download/manifest/ManifestRepo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TYPE:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;",
            "Lcom/amazon/kindle/download/manifest/ManifestRepo<",
            "TTYPE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TTYPE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/download/ManifestProviderException;
        }
    .end annotation

    instance-of v0, p2, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$fetchManifest$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$fetchManifest$1;

    iget v1, v0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$fetchManifest$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$fetchManifest$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$fetchManifest$1;

    invoke-direct {v0, p2}, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$fetchManifest$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$fetchManifest$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 165
    iget v2, v0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$fetchManifest$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$fetchManifest$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 172
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 165
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 166
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 167
    new-instance v2, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$fetchManifest$2;

    invoke-direct {v2, p2}, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$fetchManifest$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    iput-object p2, v0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$fetchManifest$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$fetchManifest$1;->label:I

    invoke-virtual {p1, p0, v2, v0}, Lcom/amazon/kindle/download/manifest/ManifestRepo;->get(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, p2

    .line 170
    :goto_1
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p0, :cond_4

    return-object p0

    .line 171
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Received null result from the ManifestRepo with no associated exception"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final logString(Lcom/amazon/kindle/download/manifest/MDSManifest;)Ljava/lang/String;
    .locals 6

    const-string v0, "$this$logString"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/MDSManifest;->getResources()Ljava/util/List;

    move-result-object v0

    .line 317
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 318
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x29

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 319
    check-cast v2, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->getSize()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(filtered)(content="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/MDSManifest;->getContent()Lcom/amazon/kindle/download/manifest/MDSManifest$Content;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", resource="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", responseContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/MDSManifest;->getResponseContext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final performDownloadForGroup(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;Lcom/amazon/kindle/services/download/IDownloadTracker;Lcom/amazon/kindle/services/download/IReaderDownloadManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/services/download/IDownloadRequestGroup;",
            "Lcom/amazon/kindle/services/download/IDownloadTracker;",
            "Lcom/amazon/kindle/services/download/IReaderDownloadManager;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 323
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p4}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 329
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 250
    new-instance v1, Lcom/amazon/kindle/download/workflow/ContinuationAwareDownloadTracker;

    invoke-direct {v1, p1, v0, p3}, Lcom/amazon/kindle/download/workflow/ContinuationAwareDownloadTracker;-><init>(Lcom/amazon/kindle/services/download/IDownloadTracker;Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->setIDownloadTracker(Lcom/amazon/kindle/services/download/IDownloadTracker;)V

    .line 252
    new-instance v1, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$performDownloadForGroup$$inlined$suspendCancellableCoroutine$lambda$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$performDownloadForGroup$$inlined$suspendCancellableCoroutine$lambda$1;-><init>(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;Lcom/amazon/kindle/services/download/IDownloadTracker;Ljava/lang/String;Lcom/amazon/kindle/services/download/IReaderDownloadManager;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 258
    invoke-interface {p2, p0}, Lcom/amazon/kindle/services/download/IReaderDownloadManager;->addGroupForDownload(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Z

    .line 331
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 322
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p0
.end method

.method public static final serializeManifest(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/download/manifest/MDSManifest;Lcom/amazon/kindle/download/manifest/ManifestSerializer;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)Z
    .locals 1

    const-string v0, "bookId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manifest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manifestSerializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "krlDownloadFacade"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-interface {p2, p1}, Lcom/amazon/kindle/download/manifest/ManifestSerializer;->deserialize(Lcom/amazon/kindle/download/manifest/MDSManifest;)Ljava/lang/String;

    move-result-object p1

    .line 70
    new-instance p2, Lcom/amazon/kindle/download/BookMetadataSerializationManager;

    invoke-direct {p2, p3}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;-><init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)V

    .line 71
    invoke-virtual {p2, p0}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->loadMetadata(Lcom/amazon/kindle/model/content/IBookID;)V

    .line 72
    invoke-virtual {p2, p1}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->serializeManifest(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final setTrialsOrRentalsToRemote(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)V
    .locals 3

    const-string v0, "bookId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "krlDownloadFacade"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p0

    const-string v0, "bookId.serializedForm"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 43
    invoke-interface {p1, p0, v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContentMetadata(Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    const-string v1, "libraryMetadata.localBook"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object v0

    .line 48
    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Rental:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->FreeTrial:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    if-ne v0, v1, :cond_2

    .line 49
    :cond_1
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 50
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-interface {p1, p0, v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->updateContentMetadata(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method public static final verifyFileSystem(Ljava/io/File;ZJLcom/amazon/kindle/services/download/IKRLForDownloadFacade;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/download/DownloadRequestGroupProcessingException;
        }
    .end annotation

    const-string v0, "downloadDirectory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "krlDownloadFacade"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logTag"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p4

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;ZJ)V

    invoke-static {v0, v8}, Lcom/amazon/kindle/io/FileSystemHelper;->executeSequentialFileOperation(Ljava/lang/String;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method
