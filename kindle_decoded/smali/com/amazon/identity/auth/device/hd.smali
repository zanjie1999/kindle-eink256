.class public Lcom/amazon/identity/auth/device/hd;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/hd$b;,
        Lcom/amazon/identity/auth/device/hd$a;,
        Lcom/amazon/identity/auth/device/hd$c;,
        Lcom/amazon/identity/auth/device/hd$d;
    }
.end annotation


# static fields
.field protected static final pN:J

.field private static pO:Lcom/amazon/identity/auth/device/hd;


# instance fields
.field private final jn:Ljava/util/concurrent/Executor;

.field private final pP:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/amazon/identity/auth/device/hd$c;",
            ">;"
        }
    .end annotation
.end field

.field private pQ:Lcom/amazon/identity/auth/device/hd$c;

.field private pR:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/jg;->d(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/identity/auth/device/hd;->pN:J

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/hd;->pR:Ljava/util/concurrent/atomic/AtomicLong;

    .line 223
    new-instance v0, Lcom/amazon/identity/auth/device/io;

    const-string v1, "MAPTokenOperationThreadPool"

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/io;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/hd;->jn:Ljava/util/concurrent/Executor;

    .line 224
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/hd;->pP:Ljava/util/Queue;

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/hd;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/amazon/identity/auth/device/hd;->jn:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/hd;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/amazon/identity/auth/device/hd;->pR:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic c(Lcom/amazon/identity/auth/device/hd;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/hd;->gh()V

    return-void
.end method

.method public static declared-synchronized gf()Lcom/amazon/identity/auth/device/hd;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/hd;

    monitor-enter v0

    .line 237
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/hd;->pO:Lcom/amazon/identity/auth/device/hd;

    if-nez v1, :cond_0

    .line 239
    new-instance v1, Lcom/amazon/identity/auth/device/hd;

    invoke-direct {v1}, Lcom/amazon/identity/auth/device/hd;-><init>()V

    sput-object v1, Lcom/amazon/identity/auth/device/hd;->pO:Lcom/amazon/identity/auth/device/hd;

    .line 241
    :cond_0
    sget-object v1, Lcom/amazon/identity/auth/device/hd;->pO:Lcom/amazon/identity/auth/device/hd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized gh()V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "TokenJobQueue"

    .line 296
    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hd;->pP:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/hd$c;

    iput-object v0, p0, Lcom/amazon/identity/auth/device/hd;->pQ:Lcom/amazon/identity/auth/device/hd$c;

    if-eqz v0, :cond_0

    const-string v1, "TokenJobQueue"

    const-string v2, "Popping task %s off TokenJobQueue and process it."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 300
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/hd$c;->gk()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hd;->pQ:Lcom/amazon/identity/auth/device/hd$c;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/hd$c;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/amazon/identity/auth/device/hd$d;Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "TokenJobQueue"

    const-string v1, "Pushing task %s into TokenJobQueue."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 249
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/hd$d;->gk()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hd;->pP:Ljava/util/Queue;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/hd;->b(Lcom/amazon/identity/auth/device/hd$d;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/hd$c;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    const-string p1, "TokenJobQueue"

    .line 251
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Job queue size: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/identity/auth/device/hd;->pP:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :try_start_1
    iget-object p1, p0, Lcom/amazon/identity/auth/device/hd;->pQ:Lcom/amazon/identity/auth/device/hd$c;

    if-nez p1, :cond_0

    const-string p1, "TokenJobQueue"

    const-string p2, "No active job, scheduling next"

    .line 257
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/hd;->gh()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    .line 261
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 255
    :try_start_2
    iget-object p2, p0, Lcom/amazon/identity/auth/device/hd;->pQ:Lcom/amazon/identity/auth/device/hd$c;

    if-nez p2, :cond_1

    const-string p2, "TokenJobQueue"

    const-string v0, "No active job, scheduling next"

    .line 257
    invoke-static {p2, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/hd;->gh()V

    .line 260
    :cond_1
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method b(Lcom/amazon/identity/auth/device/hd$d;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/hd$c;
    .locals 1

    .line 271
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/hd$d;->gl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Lcom/amazon/identity/auth/device/hd$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/identity/auth/device/hd$a;-><init>(Lcom/amazon/identity/auth/device/hd;Lcom/amazon/identity/auth/device/hd$d;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object v0

    .line 277
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/hd$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/identity/auth/device/hd$b;-><init>(Lcom/amazon/identity/auth/device/hd;Lcom/amazon/identity/auth/device/hd$d;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object v0
.end method

.method public declared-synchronized gg()J
    .locals 2

    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hd;->pR:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
