.class public Lcom/amazon/identity/auth/device/x;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/x$f;,
        Lcom/amazon/identity/auth/device/x$h;,
        Lcom/amazon/identity/auth/device/x$g;,
        Lcom/amazon/identity/auth/device/x$c;,
        Lcom/amazon/identity/auth/device/x$e;,
        Lcom/amazon/identity/auth/device/x$b;,
        Lcom/amazon/identity/auth/device/x$a;,
        Lcom/amazon/identity/auth/device/x$d;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.x"

.field private static final bG:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final bH:Lcom/amazon/identity/auth/device/ac;

.field private final bI:Lcom/amazon/identity/auth/device/x$a;

.field private final be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

.field private final mContext:Landroid/content/Context;

.field private final t:Lcom/amazon/identity/auth/device/j;

.field private final x:Lcom/amazon/identity/auth/device/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MAP-DeregisterThreadPool"

    .line 56
    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->dE(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ip;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/x;->bG:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Lcom/amazon/identity/auth/device/x$1;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/x$1;-><init>(Lcom/amazon/identity/auth/device/x;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/x;->bI:Lcom/amazon/identity/auth/device/x$a;

    .line 128
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/x;->mContext:Landroid/content/Context;

    .line 130
    new-instance v0, Lcom/amazon/identity/auth/device/j;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/x;->t:Lcom/amazon/identity/auth/device/j;

    .line 132
    iget-object p1, p0, Lcom/amazon/identity/auth/device/x;->mContext:Landroid/content/Context;

    const-string v0, "dcp_amazon_account_man"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/x;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    .line 134
    iget-object p1, p0, Lcom/amazon/identity/auth/device/x;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/ab;->g(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ab;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/x;->x:Lcom/amazon/identity/auth/device/ab;

    .line 136
    new-instance p1, Lcom/amazon/identity/auth/device/ac;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/x;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/ac;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/x;->bH:Lcom/amazon/identity/auth/device/ac;

    return-void
.end method

.method static synthetic B()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 48
    sget-object v0, Lcom/amazon/identity/auth/device/x;->bG:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static a(Lcom/amazon/identity/auth/accounts/AmazonAccountManager;Ljava/lang/String;)V
    .locals 2

    const-string v0, "has.notified.server.of.deregister"

    const-string/jumbo v1, "true"

    .line 955
    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/amazon/identity/auth/device/x;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Lcom/amazon/identity/auth/accounts/AmazonAccountManager;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "has.notified.server.of.deregister"

    .line 962
    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected A()Lcom/amazon/identity/auth/device/i;
    .locals 2

    .line 209
    new-instance v0, Lcom/amazon/identity/auth/device/i;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/x;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/i;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected a(Lcom/amazon/identity/auth/device/aj;)Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;
    .locals 2

    .line 214
    new-instance v0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/x;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;-><init>(Lcom/amazon/identity/auth/device/aj;Landroid/content/Context;)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/util/List;Lcom/amazon/identity/auth/device/x$d;Lcom/amazon/identity/auth/device/br;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/x$c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/aj;",
            ">;",
            "Lcom/amazon/identity/auth/device/x$d;",
            "Lcom/amazon/identity/auth/device/br;",
            "Lcom/amazon/identity/auth/device/ej;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/amazon/identity/auth/device/x$c;"
        }
    .end annotation

    .line 191
    new-instance v8, Lcom/amazon/identity/auth/device/x$c;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/x;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/x;->t:Lcom/amazon/identity/auth/device/j;

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/amazon/identity/auth/device/x$c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/br;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)V

    .line 193
    new-instance p1, Lcom/amazon/identity/auth/device/x$2;

    invoke-direct {p1, p0, p3}, Lcom/amazon/identity/auth/device/x$2;-><init>(Lcom/amazon/identity/auth/device/x;Lcom/amazon/identity/auth/device/x$d;)V

    invoke-virtual {v8, p1}, Lcom/amazon/identity/auth/device/x$c;->a(Lcom/amazon/identity/auth/device/x$e;)V

    .line 203
    iget-object p1, p0, Lcom/amazon/identity/auth/device/x;->bI:Lcom/amazon/identity/auth/device/x$a;

    invoke-virtual {v8, p1}, Lcom/amazon/identity/auth/device/x$c;->a(Lcom/amazon/identity/auth/device/x$a;)V

    return-object v8
.end method

.method public a(Ljava/util/List;Lcom/amazon/identity/auth/device/x$d;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/aj;",
            ">;",
            "Lcom/amazon/identity/auth/device/x$d;",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/ej;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 162
    sget-object v0, Lcom/amazon/identity/auth/device/x;->TAG:Ljava/lang/String;

    const-string v1, "Starting deregister request"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {p5}, Lcom/amazon/identity/auth/device/ht;->H(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 165
    iget-object p5, p0, Lcom/amazon/identity/auth/device/x;->bH:Lcom/amazon/identity/auth/device/ac;

    invoke-virtual {p5, p3}, Lcom/amazon/identity/auth/device/ac;->X(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    const/4 p5, 0x1

    const-string v0, "DeregisteringDefaultPrimary"

    .line 167
    invoke-virtual {v8, v0, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    :cond_0
    iget-object p5, p0, Lcom/amazon/identity/auth/device/x;->bI:Lcom/amazon/identity/auth/device/x$a;

    invoke-interface {p5}, Lcom/amazon/identity/auth/device/x$a;->A()Lcom/amazon/identity/auth/device/i;

    move-result-object p5

    const/4 v0, 0x0

    invoke-virtual {p5, p3, v0, v0}, Lcom/amazon/identity/auth/device/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/i$a;)Lcom/amazon/identity/auth/device/br;

    move-result-object v6

    .line 176
    iget-object p5, p0, Lcom/amazon/identity/auth/device/x;->bH:Lcom/amazon/identity/auth/device/ac;

    invoke-virtual {p5, p3, v8}, Lcom/amazon/identity/auth/device/ac;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 178
    iget-object p5, p0, Lcom/amazon/identity/auth/device/x;->x:Lcom/amazon/identity/auth/device/ab;

    invoke-virtual {p5, p3}, Lcom/amazon/identity/auth/device/ab;->R(Ljava/lang/String;)V

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v7, p4

    .line 180
    invoke-virtual/range {v2 .. v8}, Lcom/amazon/identity/auth/device/x;->a(Ljava/lang/String;Ljava/util/List;Lcom/amazon/identity/auth/device/x$d;Lcom/amazon/identity/auth/device/br;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/x$c;

    move-result-object p1

    .line 181
    sget-object p2, Lcom/amazon/identity/auth/device/x;->bG:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
