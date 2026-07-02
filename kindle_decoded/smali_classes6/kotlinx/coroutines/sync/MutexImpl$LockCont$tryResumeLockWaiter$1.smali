.class final Lkotlinx/coroutines/sync/MutexImpl$LockCont$tryResumeLockWaiter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Mutex.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/sync/MutexImpl$LockCont;->tryResumeLockWaiter()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lkotlinx/coroutines/sync/MutexImpl$LockCont;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/sync/MutexImpl$LockCont;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$LockCont$tryResumeLockWaiter$1;->this$0:Lkotlinx/coroutines/sync/MutexImpl$LockCont;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 360
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/MutexImpl$LockCont$tryResumeLockWaiter$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1

    .line 366
    iget-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$LockCont$tryResumeLockWaiter$1;->this$0:Lkotlinx/coroutines/sync/MutexImpl$LockCont;

    iget-object v0, p1, Lkotlinx/coroutines/sync/MutexImpl$LockCont;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    iget-object p1, p1, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->owner:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/sync/MutexImpl;->unlock(Ljava/lang/Object;)V

    return-void
.end method
