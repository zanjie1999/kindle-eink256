.class public Lcom/amazon/identity/auth/device/hn;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/hn$a;,
        Lcom/amazon/identity/auth/device/hn$c;,
        Lcom/amazon/identity/auth/device/hn$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.hn"

.field private static final qt:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final qu:Landroid/accounts/AccountManager;

.field private final qv:Lcom/amazon/identity/auth/device/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 23
    sput-object v0, Lcom/amazon/identity/auth/device/hn;->qt:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/amazon/identity/auth/device/hn;->mContext:Landroid/content/Context;

    .line 89
    iput-object v0, p0, Lcom/amazon/identity/auth/device/hn;->qu:Landroid/accounts/AccountManager;

    .line 90
    iput-object v0, p0, Lcom/amazon/identity/auth/device/hn;->qv:Lcom/amazon/identity/auth/device/k;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/accounts/AccountManager;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/amazon/identity/auth/device/hn;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/amazon/identity/auth/device/hn;->qu:Landroid/accounts/AccountManager;

    .line 83
    new-instance p1, Lcom/amazon/identity/auth/device/k;

    iget-object p2, p0, Lcom/amazon/identity/auth/device/hn;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/amazon/identity/auth/device/k;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/hn;->qv:Lcom/amazon/identity/auth/device/k;

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/hn;)Landroid/accounts/AccountManager;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/identity/auth/device/hn;->qu:Landroid/accounts/AccountManager;

    return-object p0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/identity/auth/device/hn;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/identity/auth/device/hn;->qt:Ljava/lang/Object;

    return-object v0
.end method

.method public static aj(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hn;
    .locals 2

    .line 95
    new-instance v0, Lcom/amazon/identity/auth/device/hn;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amazon/identity/auth/device/hn;-><init>(Landroid/content/Context;Landroid/accounts/AccountManager;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/accounts/AccountManagerCallback<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/accounts/AccountManagerFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 343
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/hn;->a(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Z)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Z)Landroid/accounts/AccountManagerFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/accounts/AccountManagerCallback<",
            "Ljava/lang/Boolean;",
            ">;Z)",
            "Landroid/accounts/AccountManagerFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "removeAccount"

    .line 350
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ia;->de(Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hn;->qu:Landroid/accounts/AccountManager;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p3, :cond_1

    .line 357
    iget-object p3, p0, Lcom/amazon/identity/auth/device/hn;->qv:Lcom/amazon/identity/auth/device/k;

    if-eqz p3, :cond_1

    .line 359
    invoke-virtual {p3, p1}, Lcom/amazon/identity/auth/device/k;->a(Landroid/accounts/Account;)Z

    :cond_1
    const-string p3, "AccountManagerWrapper"

    .line 362
    invoke-static {p3, v0}, Lcom/amazon/identity/auth/device/mn;->aA(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object p3

    .line 363
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hn;->qu:Landroid/accounts/AccountManager;

    new-instance v1, Lcom/amazon/identity/auth/device/hn$a;

    invoke-direct {v1, p2, p3}, Lcom/amazon/identity/auth/device/hn$a;-><init>(Landroid/accounts/AccountManagerCallback;Lcom/amazon/identity/auth/device/ms;)V

    .line 365
    invoke-static {}, Lcom/amazon/identity/auth/device/jf;->gS()Landroid/os/Handler;

    move-result-object p2

    .line 363
    invoke-virtual {v0, p1, v1, p2}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/accounts/Account;Ljava/lang/String;Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "getAuthToken"

    .line 188
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ia;->de(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hn;->qu:Landroid/accounts/AccountManager;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v1, "AccountManagerWrapper"

    .line 194
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->aA(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hn;->qu:Landroid/accounts/AccountManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/amazon/identity/auth/device/hn$a;

    invoke-direct {v6, p3, v0}, Lcom/amazon/identity/auth/device/hn$a;-><init>(Landroid/accounts/AccountManagerCallback;Lcom/amazon/identity/auth/device/ms;)V

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "updateCredentials"

    .line 396
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ia;->de(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hn;->qu:Landroid/accounts/AccountManager;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v1, "AccountManagerWrapper"

    .line 403
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->aA(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hn;->qu:Landroid/accounts/AccountManager;

    const/4 v5, 0x0

    new-instance v6, Lcom/amazon/identity/auth/device/hn$a;

    invoke-direct {v6, p4, v0}, Lcom/amazon/identity/auth/device/hn$a;-><init>(Landroid/accounts/AccountManagerCallback;Lcom/amazon/identity/auth/device/ms;)V

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v7}, Landroid/accounts/AccountManager;->updateCredentials(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/accounts/Account;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/hn$b;)V
    .locals 1

    const-string v0, "addAccountExplicitly"

    .line 141
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ia;->de(Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/amazon/identity/auth/device/hn$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/hn$1;-><init>(Lcom/amazon/identity/auth/device/hn;Landroid/accounts/Account;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/hn$b;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/identity/auth/device/hn;->a(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Z)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "addAccount"

    .line 111
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ia;->de(Ljava/lang/String;)V

    const-string v1, "AccountManagerWrapper"

    .line 113
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->aA(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hn;->qu:Landroid/accounts/AccountManager;

    new-instance v7, Lcom/amazon/identity/auth/device/hn$a;

    invoke-direct {v7, p3, v0}, Lcom/amazon/identity/auth/device/hn$a;-><init>(Landroid/accounts/AccountManagerCallback;Lcom/amazon/identity/auth/device/ms;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v8}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method public a(Landroid/accounts/Account;Landroid/os/Bundle;)Z
    .locals 1

    .line 128
    new-instance v0, Lcom/amazon/identity/auth/device/hn$c;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/hn$c;-><init>()V

    .line 130
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/hn;->a(Landroid/accounts/Account;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/hn$b;)V

    .line 132
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/hn$c;->gt()Z

    move-result p1

    return p1
.end method

.method public c(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "unprotectedGetUserData"

    .line 296
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ia;->de(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 303
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hn;->qu:Landroid/accounts/AccountManager;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "AccountManagerWrapper"

    const-string v1, "getUserData"

    .line 308
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->aA(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hn;->qu:Landroid/accounts/AccountManager;

    invoke-virtual {v1, p1, p2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 316
    throw p1

    .line 300
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Account cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Landroid/accounts/Account;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 419
    :cond_0
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/amazon/identity/auth/device/hn;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 420
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 422
    invoke-virtual {p1, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 2

    const-string v0, "getAccountsByType"

    .line 321
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ia;->de(Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hn;->qu:Landroid/accounts/AccountManager;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/accounts/Account;

    return-object p1

    :cond_0
    const-string v1, "AccountManagerWrapper"

    .line 329
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->aA(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hn;->qu:Landroid/accounts/AccountManager;

    invoke-virtual {v1, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 337
    throw p1
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "getUserData"

    .line 262
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ia;->de(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hn;->qu:Landroid/accounts/AccountManager;

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/hn;->d(Landroid/accounts/Account;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "AccountManagerWrapper"

    .line 275
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->aA(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hn;->qu:Landroid/accounts/AccountManager;

    invoke-virtual {v1, p1, p2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 283
    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "invalidateAuthToken"

    .line 370
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ia;->de(Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hn;->qu:Landroid/accounts/AccountManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "AccountManagerWrapper"

    .line 378
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->aA(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hn;->qu:Landroid/accounts/AccountManager;

    invoke-virtual {v1, p1, p2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 386
    throw p1
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "peekAuthToken"

    .line 243
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ia;->de(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hn;->qu:Landroid/accounts/AccountManager;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v1, "AccountManagerWrapper"

    .line 249
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->aA(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hn;->qu:Landroid/accounts/AccountManager;

    invoke-virtual {v1, p1, p2}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 257
    throw p1
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "setAuthToken"

    .line 205
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ia;->de(Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hn;->qu:Landroid/accounts/AccountManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "AccountManagerWrapper"

    .line 211
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->aA(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hn;->qu:Landroid/accounts/AccountManager;

    invoke-virtual {v1, p1, p2, p3}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 219
    throw p1
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "setUserData"

    .line 224
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ia;->de(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hn;->qu:Landroid/accounts/AccountManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "AccountManagerWrapper"

    .line 230
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->aA(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hn;->qu:Landroid/accounts/AccountManager;

    invoke-virtual {v1, p1, p2, p3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 238
    throw p1
.end method
