.class public Lcom/amazon/identity/auth/device/hb;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/hb$b;,
        Lcom/amazon/identity/auth/device/hb$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.hb"

.field private static pB:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final cf:Landroid/accounts/Account;

.field private final mPackageName:Ljava/lang/String;

.field private o:Lcom/amazon/identity/auth/device/ed;

.field private pC:Lcom/amazon/identity/auth/device/hn;

.field private pD:Lcom/amazon/identity/auth/device/cv;

.field private final pE:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/hb$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MAP-TokenCacheThread"

    .line 41
    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->dE(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ip;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/hb;->pB:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 119
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/hb;->o:Lcom/amazon/identity/auth/device/ed;

    .line 121
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/hb;->mPackageName:Ljava/lang/String;

    .line 122
    sget-object p1, Lcom/amazon/identity/auth/device/hb;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/identity/auth/device/hb;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " created a new Token Cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/amazon/identity/auth/device/hb;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "dcp_account_manager"

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/hn;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/hb;->pC:Lcom/amazon/identity/auth/device/hn;

    .line 126
    iput-object p2, p0, Lcom/amazon/identity/auth/device/hb;->cf:Landroid/accounts/Account;

    .line 127
    new-instance p1, Lcom/amazon/identity/auth/device/cv;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/hb;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p1, v0, p2}, Lcom/amazon/identity/auth/device/cv;-><init>(Lcom/amazon/identity/auth/device/ed;Landroid/accounts/Account;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/hb;->pD:Lcom/amazon/identity/auth/device/cv;

    .line 128
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/hb;->pE:Ljava/util/concurrent/ConcurrentHashMap;

    return-void

    .line 116
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "One or more arguments are null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic B()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 37
    sget-object v0, Lcom/amazon/identity/auth/device/hb;->pB:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/hb;)Landroid/accounts/Account;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/identity/auth/device/hb;->cf:Landroid/accounts/Account;

    return-object p0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/hb;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/hb$b;
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/hb;->af(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/hb$b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/hb;Ljava/util/Stack;Landroid/accounts/AccountManagerCallback;)Z
    .locals 1

    .line 1388
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1390
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1395
    :cond_0
    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/hb;->a(Ljava/lang/String;Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;

    const/4 p0, 0x1

    return p0
.end method

.method private ad(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/hb$b;
    .locals 2

    if-nez p2, :cond_0

    .line 309
    iget-object p2, p0, Lcom/amazon/identity/auth/device/hb;->pE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hb;->pE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/hb;->af(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/hb$b;

    move-result-object p1

    return-object p1

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hb;->pE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/hb$b;

    .line 323
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/hb$b;->gd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 327
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/hb;->af(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/hb$b;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method private af(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/hb$b;
    .locals 1

    .line 379
    new-instance v0, Lcom/amazon/identity/auth/device/hb$b;

    invoke-direct {v0, p0, p2}, Lcom/amazon/identity/auth/device/hb$b;-><init>(Lcom/amazon/identity/auth/device/hb;Ljava/lang/String;)V

    .line 380
    iget-object p2, p0, Lcom/amazon/identity/auth/device/hb;->pE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/hb;)Lcom/amazon/identity/auth/device/ed;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/identity/auth/device/hb;->o:Lcom/amazon/identity/auth/device/ed;

    return-object p0
.end method

.method private cP(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.amazon.dcp.sso.property.account.extratokens"

    .line 426
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hb;->cf:Landroid/accounts/Account;

    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/hb;->a(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hb;->cf:Landroid/accounts/Account;

    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/hb;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected a(Ljava/lang/String;Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 471
    new-instance v0, Lcom/amazon/identity/auth/device/hb$2;

    invoke-direct {v0, p0, p2}, Lcom/amazon/identity/auth/device/hb$2;-><init>(Lcom/amazon/identity/auth/device/hb;Landroid/accounts/AccountManagerCallback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 488
    :goto_0
    iget-object p2, p0, Lcom/amazon/identity/auth/device/hb;->pC:Lcom/amazon/identity/auth/device/hn;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/hb;->cf:Landroid/accounts/Account;

    invoke-virtual {p2, v1, p1, v0}, Lcom/amazon/identity/auth/device/hn;->a(Landroid/accounts/Account;Ljava/lang/String;Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hb;->pC:Lcom/amazon/identity/auth/device/hn;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/hn;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hb;->pC:Lcom/amazon/identity/auth/device/hn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/hn;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a([Ljava/lang/String;Lcom/amazon/identity/auth/device/hb$a;)V
    .locals 3

    .line 155
    sget-object v0, Lcom/amazon/identity/auth/device/hb;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/identity/auth/device/hb;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": fetchTokens: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 164
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 166
    new-instance p1, Lcom/amazon/identity/auth/device/hb$1;

    invoke-direct {p1, p0, v0, p2}, Lcom/amazon/identity/auth/device/hb$1;-><init>(Lcom/amazon/identity/auth/device/hb;Ljava/util/Stack;Lcom/amazon/identity/auth/device/hb$a;)V

    .line 261
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/amazon/identity/auth/device/hb;->a(Ljava/lang/String;Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method public ae(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 367
    sget-object v0, Lcom/amazon/identity/auth/device/hb;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/identity/auth/device/hb;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": setAuthToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0, p2}, Lcom/amazon/identity/auth/device/hb;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    new-instance v1, Lcom/amazon/identity/auth/device/hb$b;

    invoke-direct {v1, p0, v0, p2}, Lcom/amazon/identity/auth/device/hb$b;-><init>(Lcom/amazon/identity/auth/device/hb;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object p2, p0, Lcom/amazon/identity/auth/device/hb;->pE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object p2, p0, Lcom/amazon/identity/auth/device/hb;->cf:Landroid/accounts/Account;

    invoke-virtual {p0, p2, p1, v0}, Lcom/amazon/identity/auth/device/hb;->a(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hb;->pC:Lcom/amazon/identity/auth/device/hn;

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/hn;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected bV(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hb;->pD:Lcom/amazon/identity/auth/device/cv;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/fs;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bW(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hb;->pD:Lcom/amazon/identity/auth/device/cv;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/fs;->bW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 414
    :catch_0
    sget-object p1, Lcom/amazon/identity/auth/device/hb;->TAG:Ljava/lang/String;

    const-string v0, "The decrypt throw BadPaddingException. This should not happen in AccountTokenEncryptor!"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bY(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 297
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/hb;->cP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/hb;->ad(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/hb$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 300
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/hb$b;->ge()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public cN(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Landroid/accounts/AuthenticatorException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    sget-object v0, Lcom/amazon/identity/auth/device/hb;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/identity/auth/device/hb;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": blockingFetchToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/device/hb;->a(Ljava/lang/String;Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    .line 277
    invoke-interface {v1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "authtoken"

    .line 283
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-direct {p0, p1, v1}, Lcom/amazon/identity/auth/device/hb;->ad(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/hb$b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 286
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/hb$b;->ge()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public cO(Ljava/lang/String;)V
    .locals 3

    .line 357
    sget-object v0, Lcom/amazon/identity/auth/device/hb;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/identity/auth/device/hb;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": invalidateAuthTokenByType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/hb;->cP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 360
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hb;->cf:Landroid/accounts/Account;

    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/hb;->b(Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method public invalidateAuthToken(Ljava/lang/String;)V
    .locals 3

    .line 341
    sget-object v0, Lcom/amazon/identity/auth/device/hb;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/identity/auth/device/hb;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": invalidateAuthToken"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/hb;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 348
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hb;->cf:Landroid/accounts/Account;

    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/hb;->b(Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method protected peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hb;->pC:Lcom/amazon/identity/auth/device/hn;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/hn;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
