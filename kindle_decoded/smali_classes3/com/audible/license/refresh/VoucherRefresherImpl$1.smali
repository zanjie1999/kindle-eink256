.class final Lcom/audible/license/refresh/VoucherRefresherImpl$1;
.super Ljava/lang/Object;
.source "VoucherRefresherImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/license/refresh/VoucherRefresherImpl;-><init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/license/repository/VoucherRepository;Lcom/audible/license/repository/db/VoucherMetadataRepository;Lcom/audible/mobile/util/ConnectivityAwareness;Lcom/audible/license/metrics/VoucherMetricRecorder;Ljava/util/concurrent/PriorityBlockingQueue;Lcom/audible/license/refresh/ComparableThreadPoolExecutor;Ljava/util/concurrent/ExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVoucherRefresherImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VoucherRefresherImpl.kt\ncom/audible/license/refresh/VoucherRefresherImpl$1\n*L\n1#1,167:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/license/refresh/VoucherRefresherImpl;


# direct methods
.method constructor <init>(Lcom/audible/license/refresh/VoucherRefresherImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/audible/license/refresh/VoucherRefresherImpl$1;->this$0:Lcom/audible/license/refresh/VoucherRefresherImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 48
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/audible/license/refresh/VoucherRefresherImpl$1;->this$0:Lcom/audible/license/refresh/VoucherRefresherImpl;

    invoke-static {v0}, Lcom/audible/license/refresh/VoucherRefresherImpl;->access$getRefreshQueue$p(Lcom/audible/license/refresh/VoucherRefresherImpl;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/audible/license/refresh/VoucherRefresherImpl$1;->this$0:Lcom/audible/license/refresh/VoucherRefresherImpl;

    invoke-static {v0}, Lcom/audible/license/refresh/VoucherRefresherImpl;->access$getRefreshQueue$p(Lcom/audible/license/refresh/VoucherRefresherImpl;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/audible/license/refresh/RefreshTask;

    invoke-virtual {v0}, Lcom/audible/license/refresh/RefreshTask;->getFuture$audible_android_cdn_release()Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.audible.license.refresh.RefreshTask"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method
