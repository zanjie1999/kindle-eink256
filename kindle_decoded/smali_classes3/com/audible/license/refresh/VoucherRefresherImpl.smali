.class public final Lcom/audible/license/refresh/VoucherRefresherImpl;
.super Ljava/lang/Object;
.source "VoucherRefresherImpl.kt"

# interfaces
.implements Lcom/audible/license/refresh/VoucherRefresher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/license/refresh/VoucherRefresherImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVoucherRefresherImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VoucherRefresherImpl.kt\ncom/audible/license/refresh/VoucherRefresherImpl\n*L\n1#1,167:1\n*E\n"
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x0

.field private static final KEEP_ALIVE_TIME:J = 0x3e8L

.field private static final KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

.field private static final MAX_THREAD_POOL_SIZE:I = 0x1

.field private static final REFRESH_QUEUE_CAPACITY:I = 0xc8


# instance fields
.field private final batchSchedulingExecutor:Ljava/util/concurrent/ExecutorService;

.field private final connectivityAwareness:Lcom/audible/mobile/util/ConnectivityAwareness;

.field private final logger$delegate:Lkotlin/Lazy;

.field private final refreshExecutor:Lcom/audible/license/refresh/ComparableThreadPoolExecutor;

.field private final refreshQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final voucherMetadataRepository:Lcom/audible/license/repository/db/VoucherMetadataRepository;

.field private final voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

.field private final voucherRepository:Lcom/audible/license/repository/VoucherRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/audible/license/refresh/VoucherRefresherImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/license/refresh/VoucherRefresherImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 165
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/audible/license/refresh/VoucherRefresherImpl;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/license/repository/VoucherRepository;Lcom/audible/license/repository/db/VoucherMetadataRepository;Lcom/audible/mobile/util/ConnectivityAwareness;Lcom/audible/license/metrics/VoucherMetricRecorder;Ljava/util/concurrent/PriorityBlockingQueue;Lcom/audible/license/refresh/ComparableThreadPoolExecutor;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/identity/IdentityManager;",
            "Lcom/audible/license/repository/VoucherRepository;",
            "Lcom/audible/license/repository/db/VoucherMetadataRepository;",
            "Lcom/audible/mobile/util/ConnectivityAwareness;",
            "Lcom/audible/license/metrics/VoucherMetricRecorder;",
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Lcom/audible/license/refresh/ComparableThreadPoolExecutor;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    const-string v0, "identityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voucherRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voucherMetadataRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivityAwareness"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voucherMetricRecorder"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshQueue"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshExecutor"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "batchSchedulingExecutor"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/audible/license/refresh/VoucherRefresherImpl;->voucherRepository:Lcom/audible/license/repository/VoucherRepository;

    iput-object p3, p0, Lcom/audible/license/refresh/VoucherRefresherImpl;->voucherMetadataRepository:Lcom/audible/license/repository/db/VoucherMetadataRepository;

    iput-object p4, p0, Lcom/audible/license/refresh/VoucherRefresherImpl;->connectivityAwareness:Lcom/audible/mobile/util/ConnectivityAwareness;

    iput-object p5, p0, Lcom/audible/license/refresh/VoucherRefresherImpl;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    iput-object p6, p0, Lcom/audible/license/refresh/VoucherRefresherImpl;->refreshQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iput-object p7, p0, Lcom/audible/license/refresh/VoucherRefresherImpl;->refreshExecutor:Lcom/audible/license/refresh/ComparableThreadPoolExecutor;

    iput-object p8, p0, Lcom/audible/license/refresh/VoucherRefresherImpl;->batchSchedulingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 44
    invoke-static {p0}, Lcom/audible/mobile/logging/PIIAwareLoggerKt;->piiAwareLogger(Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/audible/license/refresh/VoucherRefresherImpl;->logger$delegate:Lkotlin/Lazy;

    .line 47
    new-instance p2, Lcom/audible/license/refresh/VoucherRefresherImpl$1;

    invoke-direct {p2, p0}, Lcom/audible/license/refresh/VoucherRefresherImpl$1;-><init>(Lcom/audible/license/refresh/VoucherRefresherImpl;)V

    invoke-interface {p1, p2}, Lcom/audible/mobile/identity/IdentityManager;->registerPreLogoutAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/license/repository/VoucherRepository;Lcom/audible/license/repository/db/VoucherMetadataRepository;Lcom/audible/mobile/util/ConnectivityAwareness;Lcom/audible/license/metrics/VoucherMetricRecorder;Ljava/util/concurrent/PriorityBlockingQueue;Lcom/audible/license/refresh/ComparableThreadPoolExecutor;Ljava/util/concurrent/ExecutorService;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    .line 24
    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p6

    :goto_0
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_1

    .line 31
    new-instance v2, Lcom/audible/license/refresh/ComparableThreadPoolExecutor;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x3e8

    .line 35
    sget-object v8, Lcom/audible/license/refresh/VoucherRefresherImpl;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    move-object v3, v2

    move-object v9, v1

    .line 31
    invoke-direct/range {v3 .. v9}, Lcom/audible/license/refresh/ComparableThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/PriorityBlockingQueue;)V

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object/from16 v10, p7

    :goto_1
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    .line 41
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v2, "Executors.newSingleThreadExecutor()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v0

    goto :goto_2

    :cond_2
    move-object/from16 v11, p8

    :goto_2
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object v9, v1

    invoke-direct/range {v3 .. v11}, Lcom/audible/license/refresh/VoucherRefresherImpl;-><init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/license/repository/VoucherRepository;Lcom/audible/license/repository/db/VoucherMetadataRepository;Lcom/audible/mobile/util/ConnectivityAwareness;Lcom/audible/license/metrics/VoucherMetricRecorder;Ljava/util/concurrent/PriorityBlockingQueue;Lcom/audible/license/refresh/ComparableThreadPoolExecutor;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static final synthetic access$getRefreshQueue$p(Lcom/audible/license/refresh/VoucherRefresherImpl;)Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/audible/license/refresh/VoucherRefresherImpl;->refreshQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    return-object p0
.end method

.method private final createRefreshTask(Lcom/audible/mobile/domain/Asin;Lcom/audible/license/refresh/Priority;Z)Lcom/audible/license/refresh/RefreshTask;
    .locals 2

    .line 134
    new-instance v0, Lcom/audible/license/refresh/RefreshTask;

    .line 138
    iget-object v1, p0, Lcom/audible/license/refresh/VoucherRefresherImpl;->voucherRepository:Lcom/audible/license/repository/VoucherRepository;

    .line 134
    invoke-direct {v0, p1, p2, p3, v1}, Lcom/audible/license/refresh/RefreshTask;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/license/refresh/Priority;ZLcom/audible/license/repository/VoucherRepository;)V

    return-object v0
.end method

.method private final getLogger()Lorg/slf4j/Logger;
    .locals 1

    iget-object v0, p0, Lcom/audible/license/refresh/VoucherRefresherImpl;->logger$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slf4j/Logger;

    return-object v0
.end method


# virtual methods
.method public refreshVoucher(Lcom/audible/mobile/domain/Asin;Lcom/audible/license/refresh/Priority;Z)Z
    .locals 2

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "priority"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/license/refresh/VoucherRefresherImpl;->createRefreshTask(Lcom/audible/mobile/domain/Asin;Lcom/audible/license/refresh/Priority;Z)Lcom/audible/license/refresh/RefreshTask;

    move-result-object p3

    .line 69
    iget-object v0, p0, Lcom/audible/license/refresh/VoucherRefresherImpl;->refreshQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/PriorityBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/audible/license/refresh/VoucherRefresherImpl;->refreshExecutor:Lcom/audible/license/refresh/ComparableThreadPoolExecutor;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/audible/license/refresh/VoucherRefresherImpl;->getLogger()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Refreshing voucher for asin = {}. priority = {}"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    iget-object p1, p0, Lcom/audible/license/refresh/VoucherRefresherImpl;->refreshExecutor:Lcom/audible/license/refresh/ComparableThreadPoolExecutor;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 76
    invoke-virtual {p3, p1}, Lcom/audible/license/refresh/RefreshTask;->setFuture$audible_android_cdn_release(Ljava/util/concurrent/Future;)V

    .line 77
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "it.get()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
