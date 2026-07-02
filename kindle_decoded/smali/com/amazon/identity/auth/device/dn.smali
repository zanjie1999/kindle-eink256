.class public Lcom/amazon/identity/auth/device/dn;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/dn$c;,
        Lcom/amazon/identity/auth/device/dn$a;,
        Lcom/amazon/identity/auth/device/dn$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final hX:[Ljava/lang/String;

.field public static final jE:Landroid/net/Uri;

.field public static final jF:Landroid/net/Uri;

.field private static jG:Lcom/amazon/identity/auth/device/dg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/identity/auth/device/dg<",
            "Lcom/amazon/identity/auth/device/callback/IGenericIPC;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dp:Lcom/amazon/identity/auth/device/ec;

.field private final hY:Lcom/amazon/identity/auth/device/ds;

.field private final jH:Ljava/lang/String;

.field private final jI:Ljava/lang/String;

.field private final jJ:Landroid/util/SparseIntArray;

.field private final jt:Lcom/amazon/identity/auth/device/dg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/identity/auth/device/dg<",
            "Lcom/amazon/identity/auth/device/callback/IGenericIPC;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.amazon.map.generic_ipc"

    .line 201
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/dn;->jE:Landroid/net/Uri;

    const-string v0, "content://com.amazon.map.generic_ipc.directboot"

    .line 202
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/dn;->jF:Landroid/net/Uri;

    const-string v0, "bundle_value"

    .line 228
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/dn;->hX:[Ljava/lang/String;

    .line 230
    const-class v0, Lcom/amazon/identity/auth/device/dn;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/dn;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 8

    .line 259
    new-instance v5, Lcom/amazon/identity/auth/device/ec;

    invoke-direct {v5, p1}, Lcom/amazon/identity/auth/device/ec;-><init>(Landroid/content/Context;)V

    .line 264
    invoke-static {p1}, Lcom/amazon/identity/auth/device/dn;->D(Landroid/content/Context;)Lcom/amazon/identity/auth/device/dg;

    move-result-object v6

    new-instance v7, Lcom/amazon/identity/auth/device/ds;

    invoke-direct {v7, p1}, Lcom/amazon/identity/auth/device/ds;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 259
    invoke-direct/range {v0 .. v7}, Lcom/amazon/identity/auth/device/dn;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/amazon/identity/auth/device/ec;Lcom/amazon/identity/auth/device/dg;Lcom/amazon/identity/auth/device/ds;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/amazon/identity/auth/device/ec;Lcom/amazon/identity/auth/device/dg;Lcom/amazon/identity/auth/device/ds;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/amazon/identity/auth/device/ec;",
            "Lcom/amazon/identity/auth/device/dg<",
            "Lcom/amazon/identity/auth/device/callback/IGenericIPC;",
            ">;",
            "Lcom/amazon/identity/auth/device/ds;",
            ")V"
        }
    .end annotation

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p5, p0, Lcom/amazon/identity/auth/device/dn;->dp:Lcom/amazon/identity/auth/device/ec;

    .line 277
    iput-object p6, p0, Lcom/amazon/identity/auth/device/dn;->jt:Lcom/amazon/identity/auth/device/dg;

    .line 278
    iput-object p2, p0, Lcom/amazon/identity/auth/device/dn;->jH:Ljava/lang/String;

    .line 279
    iput-object p3, p0, Lcom/amazon/identity/auth/device/dn;->jI:Ljava/lang/String;

    .line 281
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/amazon/identity/auth/device/dn;->jJ:Landroid/util/SparseIntArray;

    if-eqz p4, :cond_0

    const/16 p3, 0x1f4

    .line 284
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/util/SparseIntArray;->put(II)V

    .line 287
    :cond_0
    iput-object p7, p0, Lcom/amazon/identity/auth/device/dn;->hY:Lcom/amazon/identity/auth/device/ds;

    .line 288
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dn;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static declared-synchronized D(Landroid/content/Context;)Lcom/amazon/identity/auth/device/dg;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/amazon/identity/auth/device/dg<",
            "Lcom/amazon/identity/auth/device/callback/IGenericIPC;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/amazon/identity/auth/device/dn;

    monitor-enter v0

    .line 508
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/dn;->jG:Lcom/amazon/identity/auth/device/dg;

    if-eqz v1, :cond_0

    .line 510
    sget-object p0, Lcom/amazon/identity/auth/device/dn;->jG:Lcom/amazon/identity/auth/device/dg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 513
    :cond_0
    :try_start_1
    new-instance v1, Lcom/amazon/identity/auth/device/dn$2;

    const-string v2, "com.amazon.identity.framework.GenericIPCService"

    sget-object v3, Lcom/amazon/identity/auth/device/jf;->rp:Ljava/util/concurrent/Executor;

    invoke-direct {v1, p0, v2, v3}, Lcom/amazon/identity/auth/device/dn$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 525
    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result p0

    if-nez p0, :cond_1

    .line 527
    sput-object v1, Lcom/amazon/identity/auth/device/dn;->jG:Lcom/amazon/identity/auth/device/dg;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Landroid/os/Bundle;Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 2

    .line 393
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ir;->L(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dn;->dp:Lcom/amazon/identity/auth/device/ec;

    new-instance v1, Lcom/amazon/identity/auth/device/dn$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/amazon/identity/auth/device/dn$1;-><init>(Lcom/amazon/identity/auth/device/dn;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Lcom/amazon/identity/auth/device/ec;->a(Landroid/net/Uri;Lcom/amazon/identity/auth/device/dj;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 448
    sget-object p2, Lcom/amazon/identity/auth/device/dn;->TAG:Ljava/lang/String;

    const-string v0, "Got an error while calling Generic IPC central store. This can happen in certain edge cases around a crash."

    invoke-static {p2, v0, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "Got an error while calling Generic IPC central store."

    .line 449
    invoke-static {p1}, Lcom/amazon/identity/auth/device/dn;->bk(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/dn;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/dn;->y(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/identity/auth/device/dn;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bk(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 475
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ipc_error_code_key"

    const/16 v2, 0x1f4

    .line 477
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ipc_error_code_message"

    .line 478
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic cS()[Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/identity/auth/device/dn;->hX:[Ljava/lang/String;

    return-object v0
.end method

.method private y(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dn;->jH:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "ipc_error_code_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 495
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 496
    iget-object v2, p0, Lcom/amazon/identity/auth/device/dn;->jH:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/dn;->jJ:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 497
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "ipc_error_code_message"

    .line 499
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 500
    iget-object v2, p0, Lcom/amazon/identity/auth/device/dn;->jI:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/identity/auth/device/framework/IPCCommand;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    const-string v0, "ipcCommandClass"

    .line 309
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenericIPCSender"

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->aA(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    const/4 v1, 0x0

    .line 322
    :try_start_0
    new-instance v8, Lcom/amazon/identity/auth/device/dn$c;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/amazon/identity/auth/device/dn$c;-><init>(B)V

    .line 323
    iget-object v10, p0, Lcom/amazon/identity/auth/device/dn;->jt:Lcom/amazon/identity/auth/device/dg;

    new-instance v11, Lcom/amazon/identity/auth/device/dn$b;

    iget-object v6, p0, Lcom/amazon/identity/auth/device/dn;->jt:Lcom/amazon/identity/auth/device/dg;

    const/4 v7, 0x0

    move-object v2, v11

    move-object v3, v8

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/identity/auth/device/dn$b;-><init>(Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;Ljava/lang/Class;Lcom/amazon/identity/auth/device/dg;B)V

    invoke-virtual {v10, v11}, Lcom/amazon/identity/auth/device/dg;->b(Lcom/amazon/identity/auth/device/dg$a;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 330
    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v2}, Lcom/amazon/identity/auth/device/dn$c;->a(Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v1

    .line 331
    iget-object v2, p0, Lcom/amazon/identity/auth/device/dn;->hY:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/ds;->dz()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    sget-object v2, Lcom/amazon/identity/auth/device/dn;->TAG:Ljava/lang/String;

    const-string v5, "%s try get ipc service in direct mode for %s"

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/dn;->mContext:Landroid/content/Context;

    .line 334
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 335
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 333
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_0
    sget-object v2, Lcom/amazon/identity/auth/device/dn;->TAG:Ljava/lang/String;

    const-string v5, "%s try get ipc service out of direct mode for %s"

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/dn;->mContext:Landroid/content/Context;

    .line 340
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 341
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 339
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 354
    :try_start_2
    sget-object v5, Lcom/amazon/identity/auth/device/dn;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "TimeoutException while waiting for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; will retry over content provider"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 348
    sget-object v5, Lcom/amazon/identity/auth/device/dn;->TAG:Ljava/lang/String;

    const-string v6, "MAP api call: %s get InterruptedException, probably due to caller is canceling the call."

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 350
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 1456
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "command"

    .line 1457
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "parameters"

    .line 1458
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 362
    iget-object p2, p0, Lcom/amazon/identity/auth/device/dn;->hY:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ds;->dz()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 364
    sget-object p2, Lcom/amazon/identity/auth/device/dn;->TAG:Ljava/lang/String;

    const-string v2, "%s try get ipc provider in direct mode for %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/dn;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v9

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    sget-object p2, Lcom/amazon/identity/auth/device/dn;->jF:Landroid/net/Uri;

    invoke-direct {p0, v1, p2}, Lcom/amazon/identity/auth/device/dn;->a(Landroid/os/Bundle;Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    .line 369
    :cond_2
    sget-object p2, Lcom/amazon/identity/auth/device/dn;->TAG:Ljava/lang/String;

    const-string v2, "%s try get ipc provider out of direct mode for %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/dn;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v9

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 370
    sget-object p2, Lcom/amazon/identity/auth/device/dn;->jE:Landroid/net/Uri;

    invoke-direct {p0, v1, p2}, Lcom/amazon/identity/auth/device/dn;->a(Landroid/os/Bundle;Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v1

    .line 374
    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/dn;->y(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 376
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dn;->jI:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 378
    sget-object v1, Lcom/amazon/identity/auth/device/dn;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " returned error "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/identity/auth/device/dn;->jH:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {p2, p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/identity/auth/device/dn;->jI:Ljava/lang/String;

    .line 379
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 378
    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 386
    :cond_4
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    return-object p2

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 387
    throw p1
.end method

.method public a(Ljava/lang/Class;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/identity/auth/device/framework/IPCCommand;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")V"
        }
    .end annotation

    const-string v0, "ipcCommandClass"

    .line 295
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    .line 296
    invoke-static {p3, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenericIPCSender"

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->aA(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 300
    new-instance v1, Lcom/amazon/identity/auth/device/dn$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p3, v2}, Lcom/amazon/identity/auth/device/dn$a;-><init>(Lcom/amazon/identity/auth/device/dn;Lcom/amazon/identity/auth/device/api/Callback;B)V

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v4

    .line 301
    iget-object p3, p0, Lcom/amazon/identity/auth/device/dn;->jt:Lcom/amazon/identity/auth/device/dg;

    new-instance v0, Lcom/amazon/identity/auth/device/dn$b;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v5, p2

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/amazon/identity/auth/device/dn$b;-><init>(Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;Ljava/lang/Class;Lcom/amazon/identity/auth/device/dg;B)V

    invoke-virtual {p3, v0}, Lcom/amazon/identity/auth/device/dg;->a(Lcom/amazon/identity/auth/device/dg$a;)V

    return-void
.end method
