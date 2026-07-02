.class public final Lcom/google/android/play/core/tasks/TaskExecutors;
.super Ljava/lang/Object;


# static fields
.field public static final MAIN_THREAD:Ljava/util/concurrent/Executor;

.field static final a:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/tasks/l;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/l;-><init>()V

    sput-object v0, Lcom/google/android/play/core/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/play/core/tasks/k;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/k;-><init>()V

    sput-object v0, Lcom/google/android/play/core/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    return-void
.end method
