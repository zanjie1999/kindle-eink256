.class Lcom/amazon/identity/auth/device/x$h;
.super Lcom/amazon/identity/auth/device/bk;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# instance fields
.field private ca:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final cc:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

.field private final ce:[Ljava/lang/Object;

.field private final cf:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;Landroid/accounts/Account;)V
    .locals 2

    .line 799
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/bk;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 793
    iput-object v1, p0, Lcom/amazon/identity/auth/device/x$h;->ce:[Ljava/lang/Object;

    .line 794
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/amazon/identity/auth/device/x$h;->ca:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 800
    iput-object p1, p0, Lcom/amazon/identity/auth/device/x$h;->cc:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    .line 801
    iput-object p2, p0, Lcom/amazon/identity/auth/device/x$h;->cf:Landroid/accounts/Account;

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/x$h;)Landroid/accounts/Account;
    .locals 0

    .line 790
    iget-object p0, p0, Lcom/amazon/identity/auth/device/x$h;->cf:Landroid/accounts/Account;

    return-object p0
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/x$h;)Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;
    .locals 0

    .line 790
    iget-object p0, p0, Lcom/amazon/identity/auth/device/x$h;->cc:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    return-object p0
.end method

.method private b(Z)V
    .locals 1

    .line 806
    iget-object v0, p0, Lcom/amazon/identity/auth/device/x$h;->ca:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public G()Z
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/amazon/identity/auth/device/x$h;->ca:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public L()V
    .locals 7

    .line 817
    iget-object v0, p0, Lcom/amazon/identity/auth/device/x$h;->ce:[Ljava/lang/Object;

    monitor-enter v0

    .line 819
    :try_start_0
    invoke-static {}, Lcom/amazon/identity/auth/device/x;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SubAuth Deregister Success: Package=%s,"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/amazon/identity/auth/device/x$h;->cc:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    invoke-virtual {v6}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 820
    invoke-direct {p0, v3}, Lcom/amazon/identity/auth/device/x$h;->b(Z)V

    .line 821
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/bk;->asyncOperationComplete()V

    .line 822
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(ILjava/lang/String;)V
    .locals 6

    .line 828
    iget-object v0, p0, Lcom/amazon/identity/auth/device/x$h;->ce:[Ljava/lang/Object;

    monitor-enter v0

    .line 830
    :try_start_0
    invoke-static {}, Lcom/amazon/identity/auth/device/x;->access$000()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "SubAuth Deregister Error: errorCode=%d, msg=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 833
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object p2, v4, p1

    .line 831
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 830
    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-direct {p0, v5}, Lcom/amazon/identity/auth/device/x$h;->b(Z)V

    .line 837
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/bk;->asyncOperationComplete()V

    .line 838
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onTimeout()V
    .locals 5

    .line 857
    iget-object v0, p0, Lcom/amazon/identity/auth/device/x$h;->ce:[Ljava/lang/Object;

    monitor-enter v0

    .line 859
    :try_start_0
    invoke-static {}, Lcom/amazon/identity/auth/device/x;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SubAuth Deregister Timeout"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    invoke-direct {p0, v3}, Lcom/amazon/identity/auth/device/x$h;->b(Z)V

    .line 861
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/bk;->asyncOperationComplete()V

    .line 862
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startAsyncOperation()V
    .locals 2

    .line 844
    invoke-static {}, Lcom/amazon/identity/auth/device/x;->B()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amazon/identity/auth/device/x$h$1;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/x$h$1;-><init>(Lcom/amazon/identity/auth/device/x$h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
