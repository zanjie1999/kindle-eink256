.class public final Lcom/audible/license/refresh/ComparableFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "ComparableFutureTask.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TT;>;",
        "Ljava/lang/Comparable<",
        "Lcom/audible/license/refresh/ComparableFutureTask<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final comparableTask:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Comparable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 14
    check-cast p1, Ljava/lang/Comparable;

    iput-object p1, p0, Lcom/audible/license/refresh/ComparableFutureTask;->comparableTask:Ljava/lang/Comparable;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 18
    check-cast p1, Ljava/lang/Comparable;

    iput-object p1, p0, Lcom/audible/license/refresh/ComparableFutureTask;->comparableTask:Ljava/lang/Comparable;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/audible/license/refresh/ComparableFutureTask;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/license/refresh/ComparableFutureTask<",
            "TT;>;)I"
        }
    .end annotation

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/audible/license/refresh/ComparableFutureTask;->comparableTask:Ljava/lang/Comparable;

    iget-object p1, p1, Lcom/audible/license/refresh/ComparableFutureTask;->comparableTask:Ljava/lang/Comparable;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Lcom/audible/license/refresh/ComparableFutureTask;

    invoke-virtual {p0, p1}, Lcom/audible/license/refresh/ComparableFutureTask;->compareTo(Lcom/audible/license/refresh/ComparableFutureTask;)I

    move-result p1

    return p1
.end method
