.class public final Lcom/audible/license/backfill/VoucherBackfillDelegateImpl;
.super Ljava/lang/Object;
.source "VoucherBackfillDelegateImpl.kt"

# interfaces
.implements Lcom/audible/license/backfill/VoucherBackfillDelegate;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final voucherRepository:Lcom/audible/license/repository/VoucherRepository;


# direct methods
.method public constructor <init>(Lcom/audible/license/repository/VoucherRepository;Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "voucherRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/license/backfill/VoucherBackfillDelegateImpl;->voucherRepository:Lcom/audible/license/repository/VoucherRepository;

    iput-object p2, p0, Lcom/audible/license/backfill/VoucherBackfillDelegateImpl;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/audible/license/repository/VoucherRepository;Ljava/util/concurrent/Executor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 13
    const-class p2, Lcom/audible/license/backfill/VoucherBackfillDelegateImpl;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/audible/mobile/util/Executors;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    const-string p3, "Executors.newSingleThrea\u2026l::class.java.simpleName)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/audible/license/backfill/VoucherBackfillDelegateImpl;-><init>(Lcom/audible/license/repository/VoucherRepository;Ljava/util/concurrent/Executor;)V

    return-void
.end method
