.class public final Lcom/amazon/kindle/inapp/notifications/service/PriorityThreadFactory;
.super Ljava/lang/Object;
.source "PriorityThreadFactory.kt"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final name:Ljava/lang/String;

.field private final number:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/service/PriorityThreadFactory;->name:Ljava/lang/String;

    iput p2, p0, Lcom/amazon/kindle/inapp/notifications/service/PriorityThreadFactory;->priority:I

    .line 15
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/service/PriorityThreadFactory;->number:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/service/PriorityThreadFactory;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/service/PriorityThreadFactory;->number:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/service/PriorityThreadFactory$newThread$1;

    invoke-direct {v1, p1, v0, p1, v0}, Lcom/amazon/kindle/inapp/notifications/service/PriorityThreadFactory$newThread$1;-><init>(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v1
.end method
