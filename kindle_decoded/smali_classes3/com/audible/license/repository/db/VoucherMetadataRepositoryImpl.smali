.class public final Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;
.super Ljava/lang/Object;
.source "VoucherMetadataRepositoryImpl.kt"

# interfaces
.implements Lcom/audible/license/repository/db/VoucherMetadataRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVoucherMetadataRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VoucherMetadataRepositoryImpl.kt\ncom/audible/license/repository/db/VoucherMetadataRepositoryImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,139:1\n1648#2,2:140\n*E\n*S KotlinDebug\n*F\n+ 1 VoucherMetadataRepositoryImpl.kt\ncom/audible/license/repository/db/VoucherMetadataRepositoryImpl\n*L\n78#1,2:140\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$Companion;

.field private static volatile INSTANCE:Lcom/audible/license/repository/db/VoucherMetadataRepository;


# instance fields
.field private final identityManager:Lcom/audible/mobile/identity/IdentityManager;

.field private final voucherMetadataCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/license/repository/db/VoucherMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final voucherMetadataDao:Lcom/audible/license/repository/db/VoucherMetadataDao;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;->Companion:Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/audible/license/repository/db/VoucherMetadataDao;Lcom/audible/mobile/identity/IdentityManager;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 6

    const-string v0, "voucherMetadataDao"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identityManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioDispatcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;->voucherMetadataDao:Lcom/audible/license/repository/db/VoucherMetadataDao;

    iput-object p2, p0, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    .line 31
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;->voucherMetadataCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v3, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl$1;-><init>(Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/audible/license/repository/db/VoucherMetadataDao;Lcom/audible/mobile/identity/IdentityManager;Lkotlinx/coroutines/CoroutineDispatcher;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 25
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;-><init>(Lcom/audible/license/repository/db/VoucherMetadataDao;Lcom/audible/mobile/identity/IdentityManager;Lkotlinx/coroutines/CoroutineDispatcher;)V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/audible/license/repository/db/VoucherMetadataRepository;
    .locals 1

    .line 21
    sget-object v0, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;->INSTANCE:Lcom/audible/license/repository/db/VoucherMetadataRepository;

    return-object v0
.end method

.method public static final synthetic access$getVoucherMetadataCache$p(Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;->voucherMetadataCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$getVoucherMetadataDao$p(Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;)Lcom/audible/license/repository/db/VoucherMetadataDao;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;->voucherMetadataDao:Lcom/audible/license/repository/db/VoucherMetadataDao;

    return-object p0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/audible/license/repository/db/VoucherMetadataRepository;)V
    .locals 0

    .line 21
    sput-object p0, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;->INSTANCE:Lcom/audible/license/repository/db/VoucherMetadataRepository;

    return-void
.end method


# virtual methods
.method public delete(Lcom/audible/mobile/domain/Asin;)V
    .locals 2

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    invoke-interface {v0}, Lcom/audible/mobile/identity/IdentityManager;->getActiveAccountCustomerId()Lcom/audible/mobile/domain/CustomerId;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "identityManager.activeAccountCustomerId ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;->voucherMetadataDao:Lcom/audible/license/repository/db/VoucherMetadataDao;

    invoke-interface {v1, v0, p1}, Lcom/audible/license/repository/db/VoucherMetadataDao;->delete(Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/domain/Asin;)V

    .line 86
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;->voucherMetadataCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getVoucherMetadata(Lcom/audible/mobile/domain/Asin;)Lcom/audible/license/repository/db/VoucherMetadata;
    .locals 1

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;->voucherMetadataCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/license/repository/db/VoucherMetadata;

    return-object p1
.end method

.method public insert(Lcom/audible/license/repository/db/VoucherMetadata;)V
    .locals 2

    const-string v0, "voucherMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;->voucherMetadataCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/audible/license/repository/db/VoucherMetadata;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadataRepositoryImpl;->voucherMetadataDao:Lcom/audible/license/repository/db/VoucherMetadataDao;

    invoke-interface {v0, p1}, Lcom/audible/license/repository/db/VoucherMetadataDao;->insert(Lcom/audible/license/repository/db/VoucherMetadata;)V

    return-void
.end method
