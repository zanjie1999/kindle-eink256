.class public Lcom/amazon/identity/auth/device/hg;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/he;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.hg"

.field private static pY:Lcom/amazon/identity/auth/device/hg;


# instance fields
.field private final B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

.field private final aw:Lcom/amazon/identity/auth/device/gx;

.field private volatile hi:Z

.field private final o:Lcom/amazon/identity/auth/device/ed;

.field private final pZ:Lcom/amazon/identity/auth/device/token/AtzTokenManager;

.field private final pm:Lcom/amazon/identity/auth/device/gi;

.field private final pn:Lcom/amazon/identity/auth/device/ha;

.field private final qa:Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;

.field private final qb:Lcom/amazon/identity/auth/device/bm;

.field private final qc:Lcom/amazon/identity/auth/device/im;

.field private final qd:Lcom/amazon/identity/auth/device/hd;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/hg;->o:Lcom/amazon/identity/auth/device/ed;

    .line 78
    new-instance v0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/hg;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    .line 80
    new-instance v1, Lcom/amazon/identity/auth/device/gi;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/hg;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v1, v2, v0}, Lcom/amazon/identity/auth/device/gi;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/gc;)V

    iput-object v1, p0, Lcom/amazon/identity/auth/device/hg;->pm:Lcom/amazon/identity/auth/device/gi;

    .line 82
    new-instance v0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/hg;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    .line 84
    new-instance v0, Lcom/amazon/identity/auth/device/token/AtzTokenManager;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/token/AtzTokenManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/hg;->pZ:Lcom/amazon/identity/auth/device/token/AtzTokenManager;

    .line 86
    new-instance v0, Lcom/amazon/identity/auth/device/gx;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/gx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/hg;->aw:Lcom/amazon/identity/auth/device/gx;

    .line 88
    new-instance v0, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/hg;->qa:Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;

    .line 90
    new-instance v0, Lcom/amazon/identity/auth/device/bm;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/bm;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/hg;->qb:Lcom/amazon/identity/auth/device/bm;

    .line 92
    new-instance v0, Lcom/amazon/identity/auth/device/ha;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/hg;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/hg;->pm:Lcom/amazon/identity/auth/device/gi;

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/ha;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/gi;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/hg;->pn:Lcom/amazon/identity/auth/device/ha;

    .line 94
    invoke-static {}, Lcom/amazon/identity/auth/device/hd;->gf()Lcom/amazon/identity/auth/device/hd;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/hg;->qd:Lcom/amazon/identity/auth/device/hd;

    .line 96
    new-instance v0, Lcom/amazon/identity/auth/device/im;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/im;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/hg;->qc:Lcom/amazon/identity/auth/device/im;

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/hg;)Lcom/amazon/identity/auth/device/api/Callback;
    .locals 1

    .line 15123
    new-instance v0, Lcom/amazon/identity/auth/device/hg$8;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/hg$8;-><init>(Lcom/amazon/identity/auth/device/hg;)V

    return-object v0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/hg;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 4

    .line 14015
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 14016
    new-instance v1, Lcom/amazon/identity/auth/device/gm;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/hg;->o:Lcom/amazon/identity/auth/device/ed;

    const-string/jumbo v3, "token_storage"

    invoke-direct {v1, v2, v3}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 14150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalidate-cookies"

    .line 14151
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/amazon/identity/auth/device/hg;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "com.amazon.identity.auth.device.api.cookiekeys.invalidate.actor"

    .line 14152
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 14154
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14156
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "invalidateCookiesKey: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 14157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 14017
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p0, p1}, Lcom/amazon/identity/auth/device/gm;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p0

    .line 14018
    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p0, :cond_1

    .line 14021
    invoke-interface {p4, v0}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    return-void

    .line 14025
    :cond_1
    invoke-interface {p4, v0}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized ag(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hg;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/hg;

    monitor-enter v0

    .line 131
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/hg;->pY:Lcom/amazon/identity/auth/device/hg;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    :cond_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hg;->generateNewInstance(Landroid/content/Context;)V

    .line 136
    :cond_1
    sget-object p0, Lcom/amazon/identity/auth/device/hg;->pY:Lcom/amazon/identity/auth/device/hg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static generateNewInstance(Landroid/content/Context;)V
    .locals 1

    .line 141
    new-instance v0, Lcom/amazon/identity/auth/device/hg;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/hg;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amazon/identity/auth/device/hg;->pY:Lcom/amazon/identity/auth/device/hg;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    move-object v9, p0

    .line 477
    sget-object v0, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Getting token for actor "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 479
    new-instance v10, Lcom/amazon/identity/auth/device/bl;

    move-object/from16 v0, p7

    invoke-direct {v10, v0}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    if-nez p6, :cond_0

    .line 481
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const/4 v0, 0x0

    .line 11145
    iput-boolean v0, v9, Lcom/amazon/identity/auth/device/hg;->hi:Z

    .line 484
    iget-boolean v1, v9, Lcom/amazon/identity/auth/device/hg;->hi:Z

    if-eqz v1, :cond_1

    return-object v10

    .line 489
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    .line 492
    sget-object v0, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    const-string v1, "Account Id used in getTokenForActor is null or empty"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v0, v3, v2, v1}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-object v10

    .line 497
    :cond_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 500
    sget-object v0, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    const-string v1, "Actor Id used in getTokenForActor is null or empty"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v0, v3, v2, v1}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-object v10

    .line 505
    :cond_3
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 508
    sget-object v0, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    const-string v1, "Token type used in getTokenForActor is null or empty."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v0, v3, v2, v1}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-object v10

    .line 513
    :cond_4
    iget-object v1, v9, Lcom/amazon/identity/auth/device/hg;->qd:Lcom/amazon/identity/auth/device/hd;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/hd;->gg()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 514
    iget-object v2, v9, Lcom/amazon/identity/auth/device/hg;->qb:Lcom/amazon/identity/auth/device/bm;

    .line 12080
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_5

    .line 12082
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v0

    aput-object p3, v4, v6

    aput-object p4, v4, v5

    const-string v5, "%s#%s#%s"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 12087
    :cond_5
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v0

    aput-object p3, v7, v6

    aput-object p4, v7, v5

    const-string v5, "failure_context_flag"

    aput-object v5, v7, v4

    const-string v4, "%s#%s#%s#%s"

    invoke-static {v3, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 12089
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 12091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 515
    :cond_6
    invoke-virtual {v2, v3, v10}, Lcom/amazon/identity/auth/device/bm;->b(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v11

    if-nez v11, :cond_7

    .line 525
    sget-object v1, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p4, v2, v0

    const-string v0, "Get actor token for type %s is already in flight."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_1

    .line 12255
    :cond_7
    iget-object v12, v9, Lcom/amazon/identity/auth/device/hg;->qd:Lcom/amazon/identity/auth/device/hd;

    new-instance v13, Lcom/amazon/identity/auth/device/hg$2;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/amazon/identity/auth/device/hg$2;-><init>(Lcom/amazon/identity/auth/device/hg;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V

    invoke-virtual {v12, v13, v11}, Lcom/amazon/identity/auth/device/hd;->a(Lcom/amazon/identity/auth/device/hd$d;Lcom/amazon/identity/auth/device/api/Callback;)V

    :goto_1
    return-object v10
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/gv;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/gv;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 587
    sget-object v0, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    const-string v1, "Upgrade token for account or actor."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    new-instance v0, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v0, p4}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 590
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 593
    sget-object p1, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    const-string p2, "Account Id in upgradeToken is null or empty"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-static {v0, p1, p2}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->onError(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string p4, "key_auth_code"

    .line 598
    invoke-virtual {p3, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 599
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 602
    sget-object p1, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    const-string p2, "AuthCode used in upgradeToken is null or empty"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-static {v0, p1, p2}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->onError(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    return-object v0

    .line 607
    :cond_1
    iget-object p4, p0, Lcom/amazon/identity/auth/device/hg;->qd:Lcom/amazon/identity/auth/device/hd;

    new-instance v8, Lcom/amazon/identity/auth/device/hg$6;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/amazon/identity/auth/device/hg$6;-><init>(Lcom/amazon/identity/auth/device/hg;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)V

    invoke-virtual {p4, v8, v0}, Lcom/amazon/identity/auth/device/hd;->a(Lcom/amazon/identity/auth/device/hd$d;Lcom/amazon/identity/auth/device/api/Callback;)V

    if-eqz p5, :cond_2

    .line 637
    sget-object p1, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    const-string p2, "Finish listener upon enqueuing."

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p5, p1}, Lcom/amazon/identity/auth/device/gv;->onFinish(Landroid/os/Bundle;)V

    :cond_2
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 542
    sget-object v0, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 544
    new-instance v0, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v0, p5}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    const/4 p5, 0x0

    .line 13145
    iput-boolean p5, p0, Lcom/amazon/identity/auth/device/hg;->hi:Z

    .line 547
    iget-boolean p5, p0, Lcom/amazon/identity/auth/device/hg;->hi:Z

    if-eqz p5, :cond_0

    return-object v0

    :cond_0
    if-eqz p4, :cond_1

    goto :goto_0

    .line 552
    :cond_1
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :goto_0
    move-object v6, p4

    .line 554
    iget-object p4, p0, Lcom/amazon/identity/auth/device/hg;->qd:Lcom/amazon/identity/auth/device/hd;

    new-instance p5, Lcom/amazon/identity/auth/device/hg$5;

    move-object v1, p5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/amazon/identity/auth/device/hg$5;-><init>(Lcom/amazon/identity/auth/device/hg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V

    invoke-virtual {p4, p5, v0}, Lcom/amazon/identity/auth/device/hd;->a(Lcom/amazon/identity/auth/device/hd$d;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)V
    .locals 7

    :try_start_0
    const-string/jumbo v0, "token_type_oauth_refresh_token"

    .line 1172
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hg;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)V

    return-void

    .line 1185
    :cond_0
    sget-object p1, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    const-string p2, "Upgrade non OAuth refresh token is not supported."

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->FEATURE_NOT_IMPLEMENTED:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-static {p5, p1}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->onError(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;)V
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1193
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object p2

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p2, p1}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->onError(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    return-void
.end method

.method b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    const-string v15, "Cannot get cookies before launching the challenge UI"

    const-string v9, "com.amazon.dcp.sso.token.oauth.amazon.actor.access_token"

    .line 366
    iget-object v0, v1, Lcom/amazon/identity/auth/device/hg;->qc:Lcom/amazon/identity/auth/device/im;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/im;->gO()V

    .line 367
    invoke-static/range {p4 .. p4}, Lcom/amazon/identity/auth/device/ij;->dk(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ij;

    move-result-object v8

    .line 368
    iget-object v0, v1, Lcom/amazon/identity/auth/device/hg;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object v0

    invoke-virtual {v8}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->br(Ljava/lang/String;)V

    .line 371
    :try_start_0
    sget-object v0, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    const-string v2, "GetActorToken: "

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 9726
    invoke-virtual {v8}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 9727
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p6, :cond_0

    .line 9853
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object/from16 v7, p6

    .line 9857
    :goto_0
    :try_start_1
    iget-object v2, v1, Lcom/amazon/identity/auth/device/hg;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;
    :try_end_1
    .catch Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v8

    move-object/from16 p4, v7

    move-object/from16 v7, p5

    move-object/from16 v16, v15

    move-object v15, v8

    move-object/from16 v8, p4

    move-object v14, v9

    move-object/from16 v9, p8

    :try_start_2
    invoke-virtual/range {v2 .. v9}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object v0

    .line 9858
    iget-object v2, v1, Lcom/amazon/identity/auth/device/hg;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    invoke-virtual {v2, v11, v12, v15}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->b(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;)J

    move-result-wide v2

    .line 9860
    invoke-static {v13, v0, v2, v3}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;J)V
    :try_end_2
    .catch Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 p4, v7

    move-object v14, v9

    move-object/from16 v16, v15

    move-object v15, v8

    .line 9864
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    .line 9865
    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->AUTHENTICATION_CHALLENGED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2}, Lcom/amazon/identity/auth/device/lj;->ey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v10, :cond_4

    .line 9867
    invoke-virtual {v15}, Lcom/amazon/identity/auth/device/ij;->gC()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, p4

    invoke-virtual {v8, v14, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9868
    sget-object v0, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    const-string v3, "Opening webview to handle actor token exchange challenge."

    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 9883
    const-class v0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/amazon/identity/auth/device/if;->t(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move-object/from16 v7, p8

    if-eqz v7, :cond_1

    .line 9886
    invoke-virtual {v7, v0}, Lcom/amazon/identity/auth/device/ej;->e(Landroid/content/Intent;)V

    :cond_1
    if-eqz v0, :cond_3

    const-string v3, "account_id"

    .line 9895
    invoke-virtual {v8, v3, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "actor_id"

    .line 9896
    invoke-virtual {v8, v3, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "challenge_url"

    .line 9897
    invoke-virtual {v8, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9901
    :try_start_4
    iget-object v2, v1, Lcom/amazon/identity/auth/device/hg;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    const-string v3, "auth_portal_config"

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.amazon.identity.auth.device.api.TokenKeys.Options.ChallengeURLDomain"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v6, v8

    move-object/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V
    :try_end_4
    .catch Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 9909
    :try_start_5
    invoke-virtual {v0, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v2, "callback"

    .line 9910
    new-instance v3, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    invoke-direct {v3, v13}, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 9911
    instance-of v2, v10, Landroid/app/Activity;

    if-nez v2, :cond_2

    const/high16 v2, 0x10000000

    .line 9913
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9915
    :cond_2
    invoke-virtual {v10, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :catch_2
    move-exception v0

    .line 9905
    sget-object v2, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    move-object/from16 v3, v16

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 9906
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object v0

    invoke-static {v13, v0, v3}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->onError(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    goto :goto_2

    .line 9890
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "No activity can handle the intent. Probably because you do not declare AuthChallengeHandleActivity in android manifest"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9873
    :cond_4
    sget-object v2, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "Received an error when calling getActorAccessToken. ErrorCode: %d ErrorMessage: %s "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 9874
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 9873
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 9875
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v2, v3, v0}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/fl$a;)V

    goto :goto_2

    :cond_5
    move-object v15, v8

    .line 378
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    const-string v4, "Key for getting actor token is not recognized"

    invoke-static {v13, v0, v2, v3, v4}, Lcom/amazon/identity/auth/device/hc;->d(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 383
    :goto_2
    iget-object v0, v1, Lcom/amazon/identity/auth/device/hg;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object v0

    invoke-virtual {v15}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->bs(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v15, v8

    :goto_3
    iget-object v2, v1, Lcom/amazon/identity/auth/device/hg;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object v2

    invoke-virtual {v15}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->bs(Ljava/lang/String;)V

    .line 384
    throw v0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 7

    .line 1000
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hg;->qc:Lcom/amazon/identity/auth/device/im;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/im;->gO()V

    .line 1001
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hg;->aw:Lcom/amazon/identity/auth/device/gx;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object p1

    .line 1002
    invoke-interface {p5, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1006
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 151
    sget-object v0, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Getting token "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v0, p4}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    const/4 p4, 0x0

    .line 2145
    iput-boolean p4, p0, Lcom/amazon/identity/auth/device/hg;->hi:Z

    .line 156
    iget-boolean v1, p0, Lcom/amazon/identity/auth/device/hg;->hi:Z

    if-eqz v1, :cond_0

    return-object v0

    .line 161
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    .line 164
    sget-object p1, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    const-string p2, "Directed Id used in getToken is null or empty"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-static {v0, p1, p2, v2, p2}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 175
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    sget-object p1, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    const-string p2, "Token key used in getToken is null or empty."

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-static {v0, p1, p2, v2, p2}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 189
    :cond_2
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hg;->qd:Lcom/amazon/identity/auth/device/hd;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/hd;->gg()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 191
    iget-object v2, p0, Lcom/amazon/identity/auth/device/hg;->qb:Lcom/amazon/identity/auth/device/bm;

    .line 3064
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, p4

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const-string v6, "%s#%s"

    invoke-static {v3, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3065
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3067
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 192
    :cond_3
    invoke-virtual {v2, v3, v0}, Lcom/amazon/identity/auth/device/bm;->b(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v1

    if-nez v1, :cond_4

    .line 201
    sget-object p1, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    new-array p3, v5, [Ljava/lang/Object;

    aput-object p2, p3, p4

    const-string p2, "Get token for type %s is already in flight."

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_0

    .line 3220
    :cond_4
    iget-object p4, p0, Lcom/amazon/identity/auth/device/hg;->qd:Lcom/amazon/identity/auth/device/hd;

    new-instance v8, Lcom/amazon/identity/auth/device/hg$1;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/amazon/identity/auth/device/hg$1;-><init>(Lcom/amazon/identity/auth/device/hg;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V

    invoke-virtual {p4, v8, v1}, Lcom/amazon/identity/auth/device/hd;->a(Lcom/amazon/identity/auth/device/hd$d;Lcom/amazon/identity/auth/device/api/Callback;)V

    :goto_0
    return-object v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 394
    sget-object v0, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 396
    new-instance v0, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v0, p4}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    const/4 p4, 0x0

    .line 10145
    iput-boolean p4, p0, Lcom/amazon/identity/auth/device/hg;->hi:Z

    .line 399
    iget-boolean p4, p0, Lcom/amazon/identity/auth/device/hg;->hi:Z

    if-eqz p4, :cond_0

    return-object v0

    :cond_0
    if-eqz p3, :cond_1

    goto :goto_0

    .line 404
    :cond_1
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :goto_0
    move-object v5, p3

    .line 406
    iget-object p3, p0, Lcom/amazon/identity/auth/device/hg;->qd:Lcom/amazon/identity/auth/device/hd;

    new-instance p4, Lcom/amazon/identity/auth/device/hg$3;

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/hg$3;-><init>(Lcom/amazon/identity/auth/device/hg;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V

    invoke-virtual {p3, p4, v0}, Lcom/amazon/identity/auth/device/hd;->a(Lcom/amazon/identity/auth/device/hd$d;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 437
    sget-object p5, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    invoke-static {p5}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 439
    new-instance p5, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {p5, p4}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    if-eqz p3, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 443
    :goto_0
    iget-object p4, p0, Lcom/amazon/identity/auth/device/hg;->qd:Lcom/amazon/identity/auth/device/hd;

    new-instance v0, Lcom/amazon/identity/auth/device/hg$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/hg$4;-><init>(Lcom/amazon/identity/auth/device/hg;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p4, v0, p5}, Lcom/amazon/identity/auth/device/hd;->a(Lcom/amazon/identity/auth/device/hd$d;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object p5
.end method

.method h(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 10

    .line 292
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hg;->qc:Lcom/amazon/identity/auth/device/im;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/im;->gO()V

    .line 293
    invoke-static {p2}, Lcom/amazon/identity/auth/device/ij;->dk(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ij;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hg;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->br(Ljava/lang/String;)V

    .line 299
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    const-string v2, "GetToken: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 3697
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.amazon.dcp.sso.token.device.adptoken"

    .line 3698
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v2, :cond_1

    const-string v2, "com.amazon.dcp.sso.token.device.privatekey"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x7

    if-eqz v1, :cond_7

    if-eqz p3, :cond_2

    const-string p2, "ignore.platform.restrictions"

    .line 4040
    invoke-virtual {p3, p2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_4

    .line 4051
    :cond_2
    iget-object p2, p0, Lcom/amazon/identity/auth/device/hg;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p2}, Lcom/amazon/identity/auth/device/ib;->ax(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 4056
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/amazon/identity/auth/device/hg;->o:Lcom/amazon/identity/auth/device/ed;

    .line 4057
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/ib;->q(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_5

    const-string p1, "Apps using the central device type are not permitted to retrieve the central ADP token. Please use %s instead to authenticate a request with ADP."

    new-array p2, v7, [Ljava/lang/Object;

    .line 304
    const-class p3, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v8

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 307
    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-static {p4, p2, p1, v2, p1}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :goto_3
    iget-object p1, p0, Lcom/amazon/identity/auth/device/hg;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object p1

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->bs(Ljava/lang/String;)V

    return-void

    .line 4099
    :cond_5
    :try_start_1
    iget-object p2, p0, Lcom/amazon/identity/auth/device/hg;->pn:Lcom/amazon/identity/auth/device/ha;

    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/ha;->cK(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 4101
    sget-object p2, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    const-string p3, "Start to do registration check."

    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 4103
    new-instance p2, Lcom/amazon/identity/auth/device/hg$7;

    invoke-direct {p2, p0, p1, v0, p5}, Lcom/amazon/identity/auth/device/hg$7;-><init>(Lcom/amazon/identity/auth/device/hg;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Lcom/amazon/identity/auth/device/ej;)V

    invoke-static {p2}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4680
    :cond_6
    :try_start_2
    iget-object p2, p0, Lcom/amazon/identity/auth/device/hg;->pm:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->gC()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/amazon/identity/auth/device/gi;->H(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4681
    invoke-static {p4, p1}, Lcom/amazon/identity/auth/device/hc;->b(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$BackwardsCompatibleDataStorageException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 4685
    :try_start_3
    sget-object p2, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    const-string p3, "Fail to get DMS token, throw recover bundle to clients"

    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 4688
    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BACKWARDS_INCOMPATIBILITY:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    .line 4690
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object p3

    .line 4688
    invoke-static {p4, p2, p3, p1}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/fl$a;)V

    goto :goto_3

    .line 4703
    :cond_7
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.amazon.dcp.sso.token.oauth.amazon.access_token"

    .line 4704
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v9, 0x2

    if-eqz v1, :cond_a

    .line 4750
    :try_start_4
    iget-object p2, p0, Lcom/amazon/identity/auth/device/hg;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    invoke-virtual {p2, p1, v0, p3, p5}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object p2

    .line 4751
    invoke-static {p4, p2}, Lcom/amazon/identity/auth/device/hc;->b(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_1
    move-exception p2

    if-nez p3, :cond_8

    .line 4755
    :try_start_5
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 4756
    :cond_8
    iget-object p5, p0, Lcom/amazon/identity/auth/device/hg;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    invoke-virtual {p5, p1, v0, p3}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->b(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 4757
    sget-object p3, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    const-string p5, "Received an error when calling getOAuthAccessToken. ErrorCode: %d ErrorMessage: %s."

    new-array v1, v9, [Ljava/lang/Object;

    .line 4759
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->bD()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    .line 4760
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->bE()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 4757
    invoke-static {p3, p5, v1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_9

    .line 4765
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object p1

    .line 4766
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->getErrorMessage()Ljava/lang/String;

    move-result-object p3

    .line 4764
    invoke-static {p4, p1, p3, p2}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/fl$a;)V

    goto/16 :goto_3

    .line 4771
    :cond_9
    sget-object p2, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    const-string p3, "MAP will return cached access token in some cases. Please check if the success bundle has key KEY_ACCESS_TOKEN_FROM_CACHE."

    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "RETURN_CACHED_ATNA_TOKEN"

    new-array p3, v8, [Ljava/lang/String;

    .line 4773
    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4774
    invoke-static {p4, p1, v7}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 5709
    :cond_a
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.amazon.dcp.sso.token.oauth.amazon.refresh_token"

    .line 5710
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_b

    .line 5786
    :try_start_6
    iget-object p2, p0, Lcom/amazon/identity/auth/device/hg;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3, p5}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object p1

    .line 5787
    invoke-static {p4, p1}, Lcom/amazon/identity/auth/device/hc;->b(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    :catch_2
    move-exception p1

    .line 5791
    :try_start_7
    sget-object p2, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    const-string p3, "Received an error when calling getOAuthRefreshToken. ErrorCode: %d ErrorMessage: %s "

    new-array p5, v9, [Ljava/lang/Object;

    .line 5793
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->bD()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p5, v8

    .line 5794
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->bE()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p5, v7

    .line 5791
    invoke-static {p2, p3, p5}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5797
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object p2

    .line 5798
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->getErrorMessage()Ljava/lang/String;

    move-result-object p3

    .line 5796
    invoke-static {p4, p2, p3, p1}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/fl$a;)V

    goto/16 :goto_3

    :cond_b
    const-string v1, "com.amazon.dcp.sso.token.oauth.atz.access_token"

    .line 6715
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_e

    .line 6811
    :try_start_8
    iget-object p2, p0, Lcom/amazon/identity/auth/device/hg;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1, p5}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object v3

    .line 6812
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hg;->pZ:Lcom/amazon/identity/auth/device/token/AtzTokenManager;

    move-object v2, p1

    move-object v4, v0

    move-object v5, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/token/AtzTokenManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object p2

    .line 6813
    invoke-static {p4, p2}, Lcom/amazon/identity/auth/device/hc;->b(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V
    :try_end_8
    .catch Lcom/amazon/identity/auth/device/token/AtzTokenManager$AtzTokenManagerException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    :catch_3
    move-exception p1

    .line 6841
    :try_start_9
    sget-object p2, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string p5, "Received an error when calling getAtzAccessToken. ErrorCode: %d ErrorMessage: %s "

    new-array v1, v9, [Ljava/lang/Object;

    .line 6842
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->bD()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->bE()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 6841
    invoke-static {p3, p5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 6845
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object p2

    .line 6846
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->getErrorMessage()Ljava/lang/String;

    move-result-object p3

    .line 6844
    invoke-static {p4, p2, p3, p1}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/fl$a;)V

    goto/16 :goto_3

    :catch_4
    move-exception p2

    if-nez p3, :cond_c

    .line 6817
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 6818
    :cond_c
    iget-object p5, p0, Lcom/amazon/identity/auth/device/hg;->pZ:Lcom/amazon/identity/auth/device/token/AtzTokenManager;

    invoke-virtual {p5, p1, v0, p3}, Lcom/amazon/identity/auth/device/token/AtzTokenManager;->b(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 6819
    sget-object p3, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    const-string p5, "Received an error when calling getAtzAccessToken. ErrorCode: %d ErrorMessage: %s, MAP will return cached access token in some case. Please check if the success bundle has key KEY_ACCESS_TOKEN_FROM_CACHE"

    new-array v1, v9, [Ljava/lang/Object;

    .line 6822
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/token/AtzTokenManager$AtzTokenManagerException;->bD()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    .line 6823
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/token/AtzTokenManager$AtzTokenManagerException;->bE()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 6819
    invoke-static {p3, p5, v1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_d

    const-string p2, "RETURN_CACHED_ATZA_TOKEN"

    new-array p3, v8, [Ljava/lang/String;

    .line 6826
    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 6827
    invoke-static {p4, p1, v7}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 6833
    :cond_d
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/token/AtzTokenManager$AtzTokenManagerException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object p1

    .line 6834
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/token/AtzTokenManager$AtzTokenManagerException;->getErrorMessage()Ljava/lang/String;

    move-result-object p3

    .line 6835
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/token/AtzTokenManager$AtzTokenManagerException;->bD()I

    move-result p5

    .line 6836
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/token/AtzTokenManager$AtzTokenManagerException;->bE()Ljava/lang/String;

    move-result-object p2

    .line 6832
    invoke-static {p4, p1, p3, p5, p2}, Lcom/amazon/identity/auth/device/hc;->d(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 7720
    :cond_e
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.amazon.identity.cookies.xfsn"

    .line 7721
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 7920
    iget-object p2, p0, Lcom/amazon/identity/auth/device/hg;->pm:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->gC()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/amazon/identity/auth/device/gi;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7921
    invoke-static {p4, p1}, Lcom/amazon/identity/auth/device/hc;->b(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 8732
    :cond_f
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.amazon.mobile.auth.encryption_key"

    .line 8733
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz p3, :cond_10

    const-string p2, "com.amazon.identity.auth.device.api.TokenKeys.Options.MobileAuthEncryptionKeyGetRequest"

    .line 8739
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz p2, :cond_10

    const/4 p2, 0x1

    goto :goto_4

    :cond_10
    const/4 p2, 0x0

    :goto_4
    if-eqz p2, :cond_11

    .line 8950
    :try_start_a
    iget-object p2, p0, Lcom/amazon/identity/auth/device/hg;->qa:Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;

    invoke-virtual {p2, p1, p5}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->e(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object p1

    .line 8951
    invoke-interface {p4, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V
    :try_end_a
    .catch Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    :catch_5
    move-exception p1

    .line 8955
    :try_start_b
    sget-object p2, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    const-string p3, "Failed to get MobileAuth Encryption Key. ErrorCode: %d ErrorMessage: %s"

    new-array p5, v9, [Ljava/lang/Object;

    .line 8956
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p5, v8

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p5, v7

    .line 8955
    invoke-static {p2, p3, p5}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8957
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->onError(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_3

    .line 8968
    :cond_11
    :try_start_c
    iget-object p2, p0, Lcom/amazon/identity/auth/device/hg;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3, p5}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object p2

    .line 8969
    iget-object p3, p0, Lcom/amazon/identity/auth/device/hg;->qa:Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;

    invoke-virtual {p3, p1, p2, p5}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->b(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Z

    move-result p1

    .line 8971
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "com.amazon.identity.auth.device.api.TokenKeys.Options.MobileAuthEncryptionKeyUpsert"

    .line 8972
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8973
    invoke-interface {p4, p2}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V
    :try_end_c
    .catch Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException; {:try_start_c .. :try_end_c} :catch_7
    .catch Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_3

    :catch_6
    move-exception p1

    .line 8983
    :try_start_d
    sget-object p2, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    const-string p3, "Received an error when fetching Refresh Token. ErrorCode: %d ErrorMessage: %s "

    new-array p5, v9, [Ljava/lang/Object;

    .line 8984
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->bD()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p5, v8

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->bE()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p5, v7

    .line 8983
    invoke-static {p2, p3, p5}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8985
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->onError(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;)V

    goto/16 :goto_3

    :catch_7
    move-exception p1

    .line 8977
    sget-object p2, Lcom/amazon/identity/auth/device/hg;->TAG:Ljava/lang/String;

    const-string p3, "Failed to create/update MobileAuth Encryption Key. ErrorCode: %d ErrorMessage: %s"

    new-array p5, v9, [Ljava/lang/Object;

    .line 8978
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p5, v8

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p5, v7

    .line 8977
    invoke-static {p2, p3, p5}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8979
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->onError(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;)V

    goto/16 :goto_3

    :cond_12
    const-string/jumbo p3, "requesting an unrecognized token :%s"

    new-array p5, v7, [Ljava/lang/Object;

    aput-object p2, p5, v8

    .line 9653
    invoke-static {p3, p5}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9654
    iget-object p3, p0, Lcom/amazon/identity/auth/device/hg;->pm:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->gC()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p1, p5}, Lcom/amazon/identity/auth/device/gi;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9655
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_13

    const-string p1, "Token key %s is not recognized"

    new-array p3, v7, [Ljava/lang/Object;

    aput-object p2, p3, v8

    .line 9657
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 9660
    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-static {p4, p2, p1, v2, p1}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 9668
    :cond_13
    invoke-static {p4, p1}, Lcom/amazon/identity/auth/device/hc;->b(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    .line 352
    iget-object p2, p0, Lcom/amazon/identity/auth/device/hg;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p2}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object p2

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->bs(Ljava/lang/String;)V

    .line 353
    throw p1
.end method

.method i(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 1

    .line 934
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hg;->qc:Lcom/amazon/identity/auth/device/im;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/im;->gO()V

    .line 935
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hg;->aw:Lcom/amazon/identity/auth/device/gx;

    invoke-virtual {v0, p1, p2, p3, p5}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object p1

    .line 936
    invoke-interface {p4, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 940
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method
