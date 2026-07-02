.class final Lkotlinx/coroutines/CommonPool$shutdown$2;
.super Ljava/lang/Object;
.source "CommonPool.kt"

# interfaces
.implements Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/CommonPool$shutdown$2;

    invoke-direct {v0}, Lkotlinx/coroutines/CommonPool$shutdown$2;-><init>()V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 129
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    const-string v0, "CommonPool was shutdown"

    invoke-direct {p1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
