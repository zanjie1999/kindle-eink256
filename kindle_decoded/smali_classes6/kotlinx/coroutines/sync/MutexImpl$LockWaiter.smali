.class abstract Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.source "Mutex.kt"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/sync/MutexImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LockWaiter"
.end annotation


# instance fields
.field public final owner:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 354
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->owner:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract completeResumeLockWaiter(Ljava/lang/Object;)V
.end method

.method public final dispose()V
    .locals 0

    .line 355
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->remove()Z

    return-void
.end method

.method public abstract tryResumeLockWaiter()Ljava/lang/Object;
.end method
