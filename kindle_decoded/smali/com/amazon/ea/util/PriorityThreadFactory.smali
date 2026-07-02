.class public Lcom/amazon/ea/util/PriorityThreadFactory;
.super Ljava/lang/Object;
.source "PriorityThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final name:Ljava/lang/String;

.field private final number:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/amazon/ea/util/PriorityThreadFactory;->number:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    iput-object p1, p0, Lcom/amazon/ea/util/PriorityThreadFactory;->name:Ljava/lang/String;

    .line 32
    iput p2, p0, Lcom/amazon/ea/util/PriorityThreadFactory;->priority:I

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ea/util/PriorityThreadFactory;)I
    .locals 0

    .line 12
    iget p0, p0, Lcom/amazon/ea/util/PriorityThreadFactory;->priority:I

    return p0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 37
    new-instance v0, Lcom/amazon/ea/util/PriorityThreadFactory$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/ea/util/PriorityThreadFactory;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/util/PriorityThreadFactory;->number:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/amazon/ea/util/PriorityThreadFactory$1;-><init>(Lcom/amazon/ea/util/PriorityThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
