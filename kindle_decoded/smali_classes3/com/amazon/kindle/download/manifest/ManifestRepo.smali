.class public final Lcom/amazon/kindle/download/manifest/ManifestRepo;
.super Ljava/lang/Object;
.source "ManifestRepo.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RETURN_TYPE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nManifestRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManifestRepo.kt\ncom/amazon/kindle/download/manifest/ManifestRepo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n1819#2,2:55\n1013#2:57\n*E\n*S KotlinDebug\n*F\n+ 1 ManifestRepo.kt\ncom/amazon/kindle/download/manifest/ManifestRepo\n*L\n32#1,2:55\n17#1:57\n*E\n"
.end annotation


# instance fields
.field private final sortedProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/download/manifest/providers/ManifestProvider<",
            "TRETURN_TYPE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/download/manifest/providers/ManifestProvider<",
            "TRETURN_TYPE;>;>;)V"
        }
    .end annotation

    const-string v0, "providers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/amazon/kindle/download/manifest/ManifestRepo$$special$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/amazon/kindle/download/manifest/ManifestRepo$$special$$inlined$sortedBy$1;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/ManifestRepo;->sortedProviders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final get(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;",
            "Lkotlin/jvm/functions/Function1<",
            "-TRETURN_TYPE;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/download/ManifestProviderException;
        }
    .end annotation

    instance-of v0, p3, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$1;

    iget v1, v0, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$1;

    invoke-direct {v0, p0, p3}, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$1;-><init>(Lcom/amazon/kindle/download/manifest/ManifestRepo;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 30
    iget v2, v0, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lcom/amazon/kindle/download/manifest/providers/ManifestProvider;

    iget-object p2, v0, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$1;->L$3:Ljava/lang/Object;

    check-cast p2, Ljava/util/Iterator;

    iget-object v2, v0, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v4, v0, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    iget-object v5, v0, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/amazon/kindle/download/ManifestProviderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p3

    goto :goto_3

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    new-instance p3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 32
    iget-object v2, p0, Lcom/amazon/kindle/download/manifest/ManifestRepo;->sortedProviders:Ljava/util/List;

    .line 55
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v6, p3

    move-object p3, p2

    move-object p2, v2

    move-object v2, v6

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/download/manifest/providers/ManifestProvider;

    .line 34
    :try_start_1
    new-instance v5, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$$inlined$forEach$lambda$1;

    invoke-direct {v5, v0, p1, v2, p3}, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$$inlined$forEach$lambda$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, v0, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$1;->L$2:Ljava/lang/Object;

    iput-object p2, v0, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$1;->L$3:Ljava/lang/Object;

    iput-object v4, v0, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$1;->L$4:Ljava/lang/Object;

    iput v3, v0, Lcom/amazon/kindle/download/manifest/ManifestRepo$get$1;->label:I

    invoke-interface {v4, p1, v5, v0}, Lcom/amazon/kindle/download/manifest/providers/ManifestProvider;->fetch(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Lcom/amazon/kindle/download/ManifestProviderException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v5, v1, :cond_3

    return-object v1

    :cond_3
    move-object v5, p1

    move-object p1, v4

    move-object v4, p3

    .line 39
    :goto_2
    :try_start_2
    iget-boolean p3, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p3, :cond_4

    .line 40
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catch Lcom/amazon/kindle/download/ManifestProviderException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_1
    move-exception v5

    move-object v6, v5

    move-object v5, p1

    move-object p1, v4

    move-object v4, p3

    move-object p3, v6

    .line 43
    :goto_3
    instance-of p1, p1, Lcom/amazon/kindle/download/manifest/providers/PropagateExceptionsOnFailure;

    if-nez p1, :cond_5

    :cond_4
    move-object p3, v4

    move-object p1, v5

    goto :goto_1

    .line 44
    :cond_5
    throw p3

    .line 49
    :cond_6
    iget-boolean p2, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p2, :cond_7

    .line 53
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 50
    :cond_7
    new-instance p2, Lcom/amazon/kindle/download/ManifestProviderException$InternalException;

    .line 51
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No ManifestProvider could successfully return a manifest for content "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    const/4 v0, 0x0

    .line 50
    invoke-direct {p2, p1, v0, p3, v0}, Lcom/amazon/kindle/download/ManifestProviderException$InternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p2
.end method
