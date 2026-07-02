.class final Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VoucherMetadataRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;-><init>(Lcom/audible/license/repository/db/VoucherMetadataDao;Lcom/audible/mobile/identity/IdentityManager;Lkotlinx/coroutines/CoroutineDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVoucherMetadataRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VoucherMetadataRepositoryImpl.kt\ncom/audible/license/repository/db/VoucherMetadataRepositoryImpl$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,139:1\n1648#2,2:140\n*E\n*S KotlinDebug\n*F\n+ 1 VoucherMetadataRepositoryImpl.kt\ncom/audible/license/repository/db/VoucherMetadataRepositoryImpl$1\n*L\n39#1,2:140\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.audible.license.repository.db.VoucherMetadataRepositoryImpl$1"
    f = "VoucherMetadataRepositoryImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;


# direct methods
.method constructor <init>(Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$1;->this$0:Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$1;

    iget-object v1, p0, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$1;->this$0:Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;

    invoke-direct {v0, v1, p2}, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$1;-><init>(Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 37
    iget v0, p0, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$1;->this$0:Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;

    invoke-static {p1}, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;->access$getVoucherMetadataDao$p(Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;)Lcom/audible/license/repository/db/VoucherMetadataDao;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/license/repository/db/VoucherMetadataDao;->getAllVoucherMetadata()Ljava/util/List;

    move-result-object p1

    .line 140
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/license/repository/db/VoucherMetadata;

    .line 40
    iget-object v1, p0, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$1;->this$0:Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;

    invoke-static {v1}, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;->access$getVoucherMetadataCache$p(Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/audible/license/repository/db/VoucherMetadata;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 42
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
