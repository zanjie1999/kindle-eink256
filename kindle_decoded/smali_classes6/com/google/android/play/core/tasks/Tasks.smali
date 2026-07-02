.class public final Lcom/google/android/play/core/tasks/Tasks;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/Exception;)Lcom/google/android/play/core/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/google/android/play/core/tasks/Task<",
            "TResultT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/play/core/tasks/m;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/m;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/play/core/tasks/m;->a(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/android/play/core/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(TResultT;)",
            "Lcom/google/android/play/core/tasks/Task<",
            "TResultT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/play/core/tasks/m;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/m;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/play/core/tasks/m;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static a(Lcom/google/android/play/core/tasks/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/play/core/tasks/Task<",
            "TResultT;>;)TResultT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Lcom/google/android/play/core/tasks/Task;Lcom/google/android/play/core/tasks/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/Task<",
            "*>;",
            "Lcom/google/android/play/core/tasks/n;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/play/core/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;

    sget-object v0, Lcom/google/android/play/core/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnFailureListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method public static await(Lcom/google/android/play/core/tasks/Task;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/play/core/tasks/Task<",
            "TResultT;>;)TResultT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "Task must not be null"

    invoke-static {p0, v0}, Lcom/google/android/play/core/internal/av;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/Task;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/play/core/tasks/Tasks;->a(Lcom/google/android/play/core/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/play/core/tasks/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/play/core/tasks/n;-><init>([B)V

    invoke-static {p0, v0}, Lcom/google/android/play/core/tasks/Tasks;->a(Lcom/google/android/play/core/tasks/Task;Lcom/google/android/play/core/tasks/n;)V

    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/n;->a()V

    invoke-static {p0}, Lcom/google/android/play/core/tasks/Tasks;->a(Lcom/google/android/play/core/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
