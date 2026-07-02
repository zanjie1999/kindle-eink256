.class public Lcom/amazon/identity/auth/device/h;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/h$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final m:Lcom/amazon/identity/auth/device/c;

.field private static n:Lcom/amazon/identity/auth/device/h;


# instance fields
.field private final A:Lcom/amazon/identity/auth/device/ar;

.field private final B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

.field private final D:Lcom/amazon/identity/auth/device/fz;

.field private final E:Lcom/amazon/identity/auth/device/ae;

.field private final F:Lcom/amazon/identity/auth/device/eh;

.field private final o:Lcom/amazon/identity/auth/device/ed;

.field private final p:Lcom/amazon/identity/auth/device/al;

.field private final q:Lcom/amazon/identity/auth/device/x;

.field private final r:Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction;

.field private final s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

.field private final t:Lcom/amazon/identity/auth/device/j;

.field private final u:Lcom/amazon/identity/auth/device/i;

.field private final v:Lcom/amazon/identity/auth/device/n;

.field private final w:Lcom/amazon/identity/auth/device/gc;

.field private final x:Lcom/amazon/identity/auth/device/ab;

.field private final y:Lcom/amazon/identity/auth/device/z;

.field private final z:Lcom/amazon/identity/auth/device/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    new-instance v0, Lcom/amazon/identity/auth/device/c;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/c;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/h;->m:Lcom/amazon/identity/auth/device/c;

    .line 113
    const-class v0, Lcom/amazon/identity/auth/device/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;)V
    .locals 20

    move-object/from16 v15, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 146
    new-instance v3, Lcom/amazon/identity/auth/device/x;

    move-object v2, v3

    invoke-direct {v3, v15}, Lcom/amazon/identity/auth/device/x;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction;

    move-object v3, v4

    invoke-direct {v4, v15}, Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/amazon/identity/auth/device/al;

    move-object v4, v5

    invoke-direct {v5, v15}, Lcom/amazon/identity/auth/device/al;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    move-object v5, v6

    invoke-direct {v6, v15}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/amazon/identity/auth/device/j;

    move-object v6, v7

    invoke-direct {v7, v15}, Lcom/amazon/identity/auth/device/j;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/amazon/identity/auth/device/i;

    move-object v7, v8

    invoke-direct {v8, v15}, Lcom/amazon/identity/auth/device/i;-><init>(Landroid/content/Context;)V

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/identity/auth/device/ed;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object v8

    .line 154
    invoke-static/range {p1 .. p1}, Lcom/amazon/identity/auth/device/ab;->g(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ab;

    move-result-object v9

    .line 155
    invoke-static/range {p1 .. p1}, Lcom/amazon/identity/auth/device/aa;->f(Landroid/content/Context;)Lcom/amazon/identity/auth/device/z;

    move-result-object v10

    .line 156
    invoke-static/range {p1 .. p1}, Lcom/amazon/identity/auth/device/ar;->h(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ar;

    move-result-object v11

    new-instance v13, Lcom/amazon/identity/auth/device/w;

    move-object v12, v13

    invoke-direct {v13}, Lcom/amazon/identity/auth/device/w;-><init>()V

    new-instance v14, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    move-object v13, v14

    invoke-direct {v14, v15}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;-><init>(Landroid/content/Context;)V

    new-instance v14, Lcom/amazon/identity/auth/device/ga;

    invoke-direct {v14, v15}, Lcom/amazon/identity/auth/device/ga;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v14}, Lcom/amazon/identity/auth/device/ga;->fa()Lcom/amazon/identity/auth/device/fz;

    move-result-object v14

    move-object/from16 v18, v0

    new-instance v0, Lcom/amazon/identity/auth/device/ae;

    move-object/from16 v19, v1

    move-object v1, v15

    move-object v15, v0

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/ae;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/amazon/identity/auth/device/n;

    move-object/from16 v16, v0

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/n;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/amazon/identity/auth/device/eh;

    move-object/from16 v17, v0

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/eh;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    .line 146
    invoke-direct/range {v0 .. v17}, Lcom/amazon/identity/auth/device/h;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/x;Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction;Lcom/amazon/identity/auth/device/al;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/i;Lcom/amazon/identity/auth/device/gc;Lcom/amazon/identity/auth/device/ab;Lcom/amazon/identity/auth/device/z;Lcom/amazon/identity/auth/device/ar;Lcom/amazon/identity/auth/device/w;Lcom/amazon/identity/auth/device/token/OAuthTokenManager;Lcom/amazon/identity/auth/device/fz;Lcom/amazon/identity/auth/device/ae;Lcom/amazon/identity/auth/device/n;Lcom/amazon/identity/auth/device/eh;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/x;Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction;Lcom/amazon/identity/auth/device/al;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/i;Lcom/amazon/identity/auth/device/gc;Lcom/amazon/identity/auth/device/ab;Lcom/amazon/identity/auth/device/z;Lcom/amazon/identity/auth/device/ar;Lcom/amazon/identity/auth/device/w;Lcom/amazon/identity/auth/device/token/OAuthTokenManager;Lcom/amazon/identity/auth/device/fz;Lcom/amazon/identity/auth/device/ae;Lcom/amazon/identity/auth/device/n;Lcom/amazon/identity/auth/device/eh;)V
    .locals 2

    move-object v0, p0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 183
    iput-object v1, v0, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    move-object v1, p2

    .line 184
    iput-object v1, v0, Lcom/amazon/identity/auth/device/h;->q:Lcom/amazon/identity/auth/device/x;

    move-object v1, p3

    .line 185
    iput-object v1, v0, Lcom/amazon/identity/auth/device/h;->r:Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction;

    move-object v1, p4

    .line 186
    iput-object v1, v0, Lcom/amazon/identity/auth/device/h;->p:Lcom/amazon/identity/auth/device/al;

    move-object v1, p5

    .line 187
    iput-object v1, v0, Lcom/amazon/identity/auth/device/h;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    move-object v1, p6

    .line 189
    iput-object v1, v0, Lcom/amazon/identity/auth/device/h;->t:Lcom/amazon/identity/auth/device/j;

    move-object v1, p7

    .line 190
    iput-object v1, v0, Lcom/amazon/identity/auth/device/h;->u:Lcom/amazon/identity/auth/device/i;

    move-object v1, p8

    .line 192
    iput-object v1, v0, Lcom/amazon/identity/auth/device/h;->w:Lcom/amazon/identity/auth/device/gc;

    move-object v1, p9

    .line 194
    iput-object v1, v0, Lcom/amazon/identity/auth/device/h;->x:Lcom/amazon/identity/auth/device/ab;

    move-object v1, p10

    .line 195
    iput-object v1, v0, Lcom/amazon/identity/auth/device/h;->y:Lcom/amazon/identity/auth/device/z;

    move-object v1, p11

    .line 196
    iput-object v1, v0, Lcom/amazon/identity/auth/device/h;->A:Lcom/amazon/identity/auth/device/ar;

    move-object v1, p12

    .line 197
    iput-object v1, v0, Lcom/amazon/identity/auth/device/h;->z:Lcom/amazon/identity/auth/device/w;

    move-object v1, p13

    .line 199
    iput-object v1, v0, Lcom/amazon/identity/auth/device/h;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    move-object/from16 v1, p14

    .line 200
    iput-object v1, v0, Lcom/amazon/identity/auth/device/h;->D:Lcom/amazon/identity/auth/device/fz;

    move-object/from16 v1, p15

    .line 202
    iput-object v1, v0, Lcom/amazon/identity/auth/device/h;->E:Lcom/amazon/identity/auth/device/ae;

    move-object/from16 v1, p16

    .line 203
    iput-object v1, v0, Lcom/amazon/identity/auth/device/h;->v:Lcom/amazon/identity/auth/device/n;

    move-object/from16 v1, p17

    .line 205
    iput-object v1, v0, Lcom/amazon/identity/auth/device/h;->F:Lcom/amazon/identity/auth/device/eh;

    return-void
.end method

.method private a(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Landroid/os/Bundle;
    .locals 3

    const-string v0, "com.amazon.dcp.sso.AddAccount"

    .line 383
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/h;->s(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 386
    sget-object p1, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    const-string p2, "No intent for MyAccount."

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 390
    :cond_0
    sget-object v1, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    const-string v2, "Register with My Account"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 396
    invoke-static {p2}, Lcom/amazon/identity/auth/device/d;->b(Lcom/amazon/identity/auth/device/api/Callback;)Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object p2

    const-string v1, "accountAuthenticatorResponse"

    .line 395
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "com.amazon.dcp.sso.addAccountParameters.authTokenType"

    .line 398
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 397
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.amazon.dcp.sso.addAccountParameters.requiredFeatures"

    .line 400
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 399
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.amazon.dcp.sso.addAccountParameters.options"

    .line 402
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 401
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 403
    iget-object p1, p0, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.amazon.dcp.sso.addAccountParameters.caller"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "intent"

    .line 406
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p1
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/h;Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;
    .locals 9

    .line 8980
    sget-object v0, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Starting Registration: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 8982
    new-instance v0, Lcom/amazon/identity/auth/device/h$12;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/amazon/identity/auth/device/h$12;-><init>(Lcom/amazon/identity/auth/device/h;Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    .line 9029
    iget-object v1, p0, Lcom/amazon/identity/auth/device/h;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->n()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    .line 9030
    sget-object v2, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_DEVICE_SECRET:Lcom/amazon/identity/auth/device/api/RegistrationType;

    if-ne p1, v2, :cond_0

    .line 9032
    sget-object p1, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    const-string p2, "Already registered. Returning success for register via device secret"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 9087
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 9088
    iget-object p0, p0, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p0, v1, p1}, Lcom/amazon/identity/auth/device/hr;->c(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 9034
    invoke-interface {p3, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    return-object v8

    .line 9038
    :cond_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/h;->u:Lcom/amazon/identity/auth/device/i;

    iget-object v6, p0, Lcom/amazon/identity/auth/device/h;->t:Lcom/amazon/identity/auth/device/j;

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/ej;)V

    return-object v8
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/h;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/h;->b(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/h;Ljava/util/Set;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/h;->a(Ljava/util/Set;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/Set;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 619
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 621
    iget-object v3, p0, Lcom/amazon/identity/auth/device/h;->y:Lcom/amazon/identity/auth/device/z;

    invoke-interface {v3, v1}, Lcom/amazon/identity/auth/device/z;->N(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 623
    iget-object p1, p0, Lcom/amazon/identity/auth/device/h;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {p1, v1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->D(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 4980
    invoke-direct {p0, p2, p1, p1}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/api/Callback;ZZ)V

    return-object v2

    .line 628
    :cond_1
    sget-object p1, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    const-string v0, "deregisterAllAccountsInner - deregister the primary first"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 5643
    new-instance p1, Lcom/amazon/identity/auth/device/h$8;

    invoke-direct {p1, p0, p3, p4, p2}, Lcom/amazon/identity/auth/device/h$8;-><init>(Lcom/amazon/identity/auth/device/h;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 629
    invoke-direct {p0, v1, p1, p3, p4}, Lcom/amazon/identity/auth/device/h;->b(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-object v2

    .line 637
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/h;->b(Ljava/util/Set;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)V

    return-object v2
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/h;)Lcom/amazon/identity/auth/device/ed;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    return-object p0
.end method

.method private a(ZZZLjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;)Lcom/amazon/identity/auth/device/gc$a;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/h$a;",
            ">;)",
            "Lcom/amazon/identity/auth/device/gc$a;"
        }
    .end annotation

    .line 1389
    new-instance v9, Lcom/amazon/identity/auth/device/h$13;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p6

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/amazon/identity/auth/device/h$13;-><init>(Lcom/amazon/identity/auth/device/h;ZZLjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/os/Bundle;Z)V

    return-object v9
.end method

.method static synthetic a(Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Ljava/util/Collection;
    .locals 5

    .line 14434
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14435
    new-instance v1, Lcom/amazon/identity/auth/device/bd;

    new-instance v2, Ljava/util/HashSet;

    const-string v3, "email"

    .line 14437
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, p0, p1, v2, p2}, Lcom/amazon/identity/auth/device/bd;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Set;Lcom/amazon/identity/auth/device/ej;)V

    .line 14440
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/bd;->bm()Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    .line 14444
    sget-object p0, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    const-string p1, "cannot get user profile"

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14448
    :cond_0
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 14449
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 14451
    sget-object p1, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "User has email login: "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 14452
    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 14455
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 14457
    sget-object p0, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    const-string p1, "Account has no login claim"

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;"
        }
    .end annotation

    .line 1625
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "website_cookies_json_array"

    .line 1626
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1627
    sget-object v3, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Cookies from registration: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 1628
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0

    .line 1635
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1644
    :try_start_1
    new-instance v2, Lcom/amazon/identity/auth/device/gx;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v2, v4}, Lcom/amazon/identity/auth/device/gx;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1, v3}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1648
    sget-object v2, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to parse the cookie JSONArray : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    :goto_0
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-object v0

    :catch_1
    move-exception p1

    .line 1639
    sget-object p2, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "String to JSONArray Conversion failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/util/Set;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/h$a;",
            ">;"
        }
    .end annotation

    .line 1481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 1484
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1487
    iget-object v2, p0, Lcom/amazon/identity/auth/device/h;->x:Lcom/amazon/identity/auth/device/ab;

    invoke-virtual {v2, v1}, Lcom/amazon/identity/auth/device/ab;->Q(Ljava/lang/String;)Z

    move-result v2

    .line 1489
    iget-object v3, p0, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v3, v1}, Lcom/amazon/identity/auth/device/hr;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v3

    .line 1490
    iget-object v4, p0, Lcom/amazon/identity/auth/device/h;->x:Lcom/amazon/identity/auth/device/ab;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    .line 1491
    invoke-virtual {v4, v5, v1}, Lcom/amazon/identity/auth/device/ab;->a(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 1492
    new-instance v5, Lcom/amazon/identity/auth/device/h$a;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/amazon/identity/auth/device/h$a;-><init>(B)V

    .line 1493
    iput-boolean v2, v5, Lcom/amazon/identity/auth/device/h$a;->am:Z

    .line 1494
    iput-object v3, v5, Lcom/amazon/identity/auth/device/h$a;->an:Landroid/accounts/Account;

    .line 1495
    iput-object v1, v5, Lcom/amazon/identity/auth/device/h$a;->al:Ljava/lang/String;

    .line 1496
    iput-object v4, v5, Lcom/amazon/identity/auth/device/h$a;->ao:Ljava/util/Set;

    .line 1497
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 2

    const-string v0, "intent"

    .line 354
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 355
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    if-nez v1, :cond_0

    const-string p1, "Failed to locate an activity containing the sign-in UI"

    .line 359
    sget-object p2, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->UI_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const/4 v0, 0x6

    invoke-static {p3, p2, p1, v0, p1}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 373
    :cond_0
    instance-of p2, p1, Landroid/app/Activity;

    if-nez p2, :cond_1

    const/high16 p2, 0x10000000

    .line 375
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 377
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    .line 335
    invoke-direct {p0, p1, p3, p2}, Lcom/amazon/identity/auth/device/h;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 339
    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V

    return-void

    .line 345
    :cond_1
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->UI_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UI_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    invoke-static {p1, p4, p3, p4}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/SigninOption;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 9

    const-string/jumbo v0, "option"

    .line 878
    invoke-static {p2, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 879
    sget-object v0, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "authenticateAccountWithUI SigninOption:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    .line 881
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 882
    :goto_0
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ht;->K(Landroid/os/Bundle;)V

    const-string/jumbo v1, "set_cookie_for_authenticate_account_with_ui"

    .line 884
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "com.amazon.dcp.sso.property.account.acctId"

    if-eqz v1, :cond_2

    const-string v1, "com.amazon.identity.ap.domain"

    .line 886
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 887
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 888
    invoke-direct {p0, v3, v1, p4}, Lcom/amazon/identity/auth/device/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v3, "InjectCookiesToAuthPortalUIActivity"

    .line 893
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    .line 897
    sget-object v3, Lcom/amazon/identity/auth/device/h$6;->T:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string/jumbo v4, "requestType"

    const/4 v5, 0x1

    if-eq v3, v5, :cond_5

    const/4 v6, 0x4

    if-eq v3, v6, :cond_4

    const/4 v0, 0x5

    if-eq v3, v0, :cond_3

    .line 922
    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array p5, v5, [Ljava/lang/Object;

    .line 924
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p5, v2

    const-string v0, "Sign-in option %s is not supported"

    invoke-static {v0, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    const/4 v0, 0x7

    new-array v3, v5, [Ljava/lang/Object;

    .line 926
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v2

    const-string p2, "Signin Options %s is not supported"

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 922
    invoke-static {p4, p3, p5, v0, p2}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 912
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 911
    invoke-direct/range {v2 .. v8}, Lcom/amazon/identity/auth/device/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 905
    :cond_4
    sget-object p2, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->FORGOT_PASSWORD:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    .line 906
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    .line 905
    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    invoke-direct {p0, v0, p4, p5}, Lcom/amazon/identity/auth/device/h;->b(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    .line 900
    :cond_5
    sget-object p2, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->AUTHENTICATE:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    .line 901
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    .line 900
    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    invoke-direct {p0, v0, p4, p5}, Lcom/amazon/identity/auth/device/h;->b(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object v1

    :goto_1
    const-string p2, "Could not find the sign in UI. This more than likely represents a bug."

    .line 930
    invoke-direct {p0, p1, p4, v1, p2}, Lcom/amazon/identity/auth/device/h;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p4, :cond_0

    goto :goto_0

    .line 772
    :cond_0
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 774
    :goto_0
    invoke-static {p4}, Lcom/amazon/identity/auth/device/ht;->K(Landroid/os/Bundle;)V

    .line 776
    sget-object v0, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Confirm Credential called with options: %s."

    invoke-static {v0, v3, v2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 778
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 782
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const-string p3, "Cannot confirm credentials because the directedId is empty"

    const-string p4, "Cannot confirm credential given empty directedId."

    invoke-static {p1, p3, p2, p4}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 789
    iget-object p3, p0, Lcom/amazon/identity/auth/device/h;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {p3, p2}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->D(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v4

    const-string p2, "Customer %s is not registered."

    .line 792
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 794
    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 796
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result p3

    .line 794
    invoke-static {p2, p1, p3, p1}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void

    .line 801
    :cond_2
    sget-object p3, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->CONFIRM_CREDENTIAL:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "requestType"

    invoke-virtual {p4, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "directedid"

    .line 802
    invoke-virtual {p4, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    invoke-direct {p0, p4, p5, p6}, Lcom/amazon/identity/auth/device/h;->b(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p1, :cond_3

    .line 807
    invoke-direct {p0, p1, p2, p5}, Lcom/amazon/identity/auth/device/h;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-void

    .line 811
    :cond_3
    invoke-static {p5, p2}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 4

    .line 1466
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1469
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1471
    iget-object v3, p0, Lcom/amazon/identity/auth/device/h;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v3, v2}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->G(Ljava/lang/String;)V

    .line 1472
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/h;->a(Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/amazon/identity/auth/device/h;->a(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1475
    :cond_0
    iget-object p1, p0, Lcom/amazon/identity/auth/device/h;->x:Lcom/amazon/identity/auth/device/ab;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ab;->O()V

    :cond_1
    return-void
.end method

.method private a(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    .line 1749
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.dcp.sso.property.account.UUID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "com.amazon.dcp.sso.property.account.extratokens"

    .line 1756
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1758
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "force_refresh_dms_to_oauth_done_once"

    const-string/jumbo v0, "true"

    .line 1763
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/api/Callback;Ljava/util/ArrayList;)V
    .locals 2

    .line 14409
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EnsureAccountStateAttributes"

    .line 14410
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 14411
    invoke-interface {p0, v0}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Lcom/amazon/identity/auth/device/api/Callback;ZZ)V
    .locals 2

    .line 1990
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "booleanResult"

    .line 1991
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p2, "server_side_deregistration_result"

    .line 1992
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1993
    invoke-interface {p1, v0}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 8

    .line 2094
    sget-object v0, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error msg:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v5

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v6, p6

    move-object v7, p5

    .line 2096
    invoke-static/range {v2 .. v7}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/h;Lcom/amazon/identity/auth/device/api/Callback;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 13980
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/api/Callback;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/h;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 109
    invoke-direct/range {p0 .. p6}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/h;Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v5, p5

    if-nez v5, :cond_0

    .line 9157
    sget-object v0, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    const-string v1, "No userdata returned. The account cannot be created."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 9161
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const/4 v1, 0x7

    const-string v2, "No userdata given. Cannot construct an account"

    invoke-static {v10, v0, v2, v1, v2}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "com.amazon.dcp.sso.property.account.acctId"

    .line 9169
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "account_recover_attempt"

    .line 9170
    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 9172
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 9174
    iget-object v4, v8, Lcom/amazon/identity/auth/device/h;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v4}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->p()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    const-string/jumbo v6, "true"

    if-eqz v4, :cond_1

    const-string v4, "com.amazon.dcp.sso.property.sessionuser"

    .line 9177
    invoke-virtual {v5, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v4, "com.amazon.dcp.sso.extra.client_event_context"

    .line 9180
    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 9182
    sget-object v4, Lcom/amazon/identity/auth/device/api/RegistrationType;->ANONYMOUS:Lcom/amazon/identity/auth/device/api/RegistrationType;

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ne v0, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v15, "isAnonymous"

    invoke-virtual {v5, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9184
    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9185
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v4, v1, 0x1

    if-eqz v3, :cond_3

    .line 9188
    invoke-virtual {v12, v2, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v4, :cond_3

    .line 9194
    invoke-direct {v8, v7}, Lcom/amazon/identity/auth/device/h;->a(Landroid/os/Bundle;)V

    const-string v1, "account_recovery_by_using_new_account"

    .line 9195
    invoke-virtual {v12, v1, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9200
    :cond_3
    iget-object v1, v8, Lcom/amazon/identity/auth/device/h;->y:Lcom/amazon/identity/auth/device/z;

    invoke-interface {v1, v9, v5}, Lcom/amazon/identity/auth/device/z;->b(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 9533
    iget-object v1, v8, Lcom/amazon/identity/auth/device/h;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->m()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {v8, v9}, Lcom/amazon/identity/auth/device/h;->b(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v8, Lcom/amazon/identity/auth/device/h;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v3, :cond_4

    const-string v1, "link_code"

    .line 9536
    invoke-virtual {v9, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "pre_authorized_link_code"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "com.amazon.dcp.sso.property.secondary"

    .line 9541
    invoke-virtual {v5, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.amazon.dcp.sso.AddAccount.options.AddAsPrimary"

    .line 10046
    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9545
    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;->PRIMARY:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.amazon.dcp.sso.property.deviceaccountrole"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9213
    :cond_5
    :goto_1
    iget-object v1, v8, Lcom/amazon/identity/auth/device/h;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v1, v11}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->E(Ljava/lang/String;)Z

    move-result v1

    const/4 v15, 0x0

    if-eqz v1, :cond_6

    .line 9220
    invoke-direct {v8, v11, v15, v5}, Lcom/amazon/identity/auth/device/h;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    if-nez v3, :cond_6

    .line 9224
    sget-object v0, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    const-string v1, "An account has been registered multiple times and this is not a recovery."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 9226
    invoke-static {v10, v11}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V

    return-void

    .line 9233
    :cond_6
    new-instance v6, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    iget-object v1, v8, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v2, v8, Lcom/amazon/identity/auth/device/h;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-direct {v6, v1, v2}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/gc;)V

    .line 9236
    invoke-direct {v8, v5, v9}, Lcom/amazon/identity/auth/device/h;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 9240
    sget-object v1, Lcom/amazon/identity/auth/device/api/RegistrationType;->REGISTER_DELEGATED_ACCOUNT:Lcom/amazon/identity/auth/device/api/RegistrationType;

    if-ne v0, v1, :cond_7

    const-string v0, "com.amazon.dcp.sso.property.account.delegateeaccount"

    .line 9243
    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9244
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9246
    invoke-static/range {p2 .. p2}, Lcom/amazon/identity/auth/device/ho;->E(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 9247
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "com.amazon.dcp.sso.property.account.delegationDomain"

    .line 9249
    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v0, "com.amazon.dcp.sso.property.account.customer_region"

    .line 10576
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10579
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 10581
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ho;->cW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "customer region (home region)"

    goto :goto_2

    :cond_8
    move-object v0, v15

    move-object v1, v0

    .line 10586
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "com.amazon.dcp.sso.token.device.accountpool"

    .line 10588
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10589
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_9

    .line 10591
    invoke-static {v2}, Lcom/amazon/identity/auth/device/ho;->cX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "account pool"

    .line 10596
    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v15, 0x2

    if-nez v2, :cond_a

    .line 10602
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->ba(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10604
    sget-object v2, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    move-object/from16 v17, v6

    new-array v6, v15, [Ljava/lang/Object;

    aput-object v0, v6, v14

    aput-object v1, v6, v13

    const-string v1, "Marking the amazon domain for added account: %s. It\'s generated base on %s."

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_auth_portal_endpoint"

    .line 10608
    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "authDomain"

    .line 10610
    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    move-object/from16 v17, v6

    .line 10612
    :goto_3
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/amazon/identity/auth/device/ho;->F(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->getPandaHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_panda_endpoint"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10613
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->x(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_panda_marketplace_header"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10616
    invoke-static/range {p2 .. p2}, Lcom/amazon/identity/auth/device/ho;->E(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x-amzn-identity-auth-domain"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9255
    iget-object v0, v8, Lcom/amazon/identity/auth/device/h;->w:Lcom/amazon/identity/auth/device/gc;

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/hr;->a(Lcom/amazon/identity/auth/device/gc;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "com.amazon.dcp.sso.property.account.cor"

    .line 10710
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.amazon.dcp.sso.property.account.sourceofcor"

    .line 10711
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v13, "com.amazon.dcp.sso.property.account.pfm"

    .line 10712
    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 10715
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 10716
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 10717
    invoke-virtual {v5, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 10719
    invoke-static {v1, v15, v14}, Lcom/amazon/identity/auth/device/ar;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 10721
    sget-object v0, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    const-string v1, "Registering account did not return cor/pfm."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_4

    .line 10724
    :cond_b
    sget-object v0, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v2, v13

    const/4 v13, 0x1

    aput-object v15, v2, v13

    const/4 v13, 0x2

    aput-object v14, v2, v13

    const-string v13, "Using COR/SourceOfCor/PFM/ returned when registering the account: %s, %s, %s"

    invoke-static {v13, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 10729
    new-instance v0, Lcom/amazon/identity/auth/attributes/CORPFMResponse;

    iget-object v2, v8, Lcom/amazon/identity/auth/device/h;->F:Lcom/amazon/identity/auth/device/eh;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/eh;->currentTimeMillis()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v14, v15, v2}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    :goto_4
    const-string v1, "com.amazon.dcp.sso.token.device.credentialsmap"

    .line 10734
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10735
    invoke-static {v2}, Lcom/amazon/identity/auth/device/kd;->dL(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 10737
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    if-nez v2, :cond_c

    .line 10741
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 9261
    :cond_c
    invoke-direct {v8, v11, v5}, Lcom/amazon/identity/auth/device/h;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    const-string v13, "com.amazon.dcp.sso.token.oauth.amazon.access_token"

    .line 11661
    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 11662
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 11663
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    move-object/from16 p1, v6

    const-string v6, "com.amazon.dcp.sso.token.oauth.amazon.refresh_token"

    move-object/from16 v19, v12

    const-string v12, "com.amazon.dcp.sso.token.oauth.amazon.access_token.expires_at"

    if-nez v18, :cond_d

    .line 11665
    invoke-virtual {v15, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11668
    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 11667
    invoke-virtual {v15, v12, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11671
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 11670
    invoke-virtual {v15, v6, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11677
    :cond_d
    invoke-virtual {v5, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 11678
    invoke-virtual {v5, v12}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 11679
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 9270
    invoke-virtual {v15}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e

    .line 9273
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Lcom/amazon/identity/auth/device/ho;->E(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->ba(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 11693
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 11696
    iget-object v14, v8, Lcom/amazon/identity/auth/device/h;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    invoke-virtual {v14, v15}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->C(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 11699
    invoke-static {v1, v12}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 11701
    iget-object v14, v8, Lcom/amazon/identity/auth/device/h;->D:Lcom/amazon/identity/auth/device/fz;

    invoke-virtual {v14, v11, v1, v6}, Lcom/amazon/identity/auth/device/fz;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object v1, v12

    move-object v12, v6

    goto :goto_5

    :cond_e
    const/4 v1, 0x0

    const/4 v12, 0x0

    .line 9286
    :goto_5
    invoke-static/range {p5 .. p5}, Lcom/amazon/identity/auth/device/ht;->I(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v6

    .line 9287
    iget-object v14, v8, Lcom/amazon/identity/auth/device/h;->A:Lcom/amazon/identity/auth/device/ar;

    invoke-virtual {v14, v0, v6}, Lcom/amazon/identity/auth/device/ar;->a(Lcom/amazon/identity/auth/attributes/CORPFMResponse;Ljava/util/Map;)V

    .line 9289
    new-instance v14, Lcom/amazon/identity/auth/device/fv;

    invoke-direct {v14, v11, v6, v1}, Lcom/amazon/identity/auth/device/fv;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 9291
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 9294
    iget-object v2, v8, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    .line 9296
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 9297
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 9294
    invoke-static {v2, v14, v6, v1}, Lcom/amazon/identity/auth/device/u;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/fv;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_6

    :cond_f
    const-string v0, "com.amazon.identity.auth.device.accountManager.newaccount"

    const/4 v1, 0x0

    .line 9300
    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v0, "deregisterall_register_this_as_primary"

    .line 9303
    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 9305
    new-instance v15, Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/amazon/identity/auth/device/h;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9307
    iget-object v0, v8, Lcom/amazon/identity/auth/device/h;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/amazon/identity/auth/device/h;->a(Ljava/util/Set;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    move v3, v6

    move-object v4, v11

    move-object/from16 v5, p5

    move-object/from16 v9, p1

    move-object/from16 p4, v13

    move-object/from16 v13, v17

    move-object v6, v7

    move-object/from16 v7, v18

    .line 9309
    invoke-direct/range {v0 .. v7}, Lcom/amazon/identity/auth/device/h;->a(ZZZLjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;)Lcom/amazon/identity/auth/device/gc$a;

    move-result-object v0

    .line 9311
    iget-object v1, v8, Lcom/amazon/identity/auth/device/h;->x:Lcom/amazon/identity/auth/device/ab;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ab;->O()V

    .line 9313
    invoke-virtual {v13, v9, v14, v0, v15}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/gc$a;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 9320
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->REPLACE_ACCOUNTS_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 9323
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Failed to replace accounts on device"

    const-string v4, "Failed to replace accounts on device"

    move-object/from16 p0, p3

    move-object/from16 p1, v0

    move-object/from16 p2, v3

    move/from16 p3, v1

    move-object/from16 p4, v4

    move-object/from16 p5, v2

    .line 9320
    invoke-static/range {p0 .. p5}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_10
    move-object/from16 v9, p1

    move-object/from16 p4, v13

    move-object/from16 v13, v17

    .line 9331
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    move v3, v6

    move-object v4, v11

    move-object/from16 v5, p5

    move-object v6, v7

    move-object v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/amazon/identity/auth/device/h;->a(ZZZLjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;)Lcom/amazon/identity/auth/device/gc$a;

    move-result-object v0

    .line 9334
    invoke-virtual {v13, v9, v14, v0}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/gc$a;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 9339
    invoke-static {v10, v11}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V

    return-void

    .line 9346
    :cond_11
    iget-object v0, v8, Lcom/amazon/identity/auth/device/h;->x:Lcom/amazon/identity/auth/device/ab;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ab;->O()V

    move-object/from16 v0, v19

    .line 9348
    invoke-static {v9, v11, v0}, Lcom/amazon/identity/auth/device/hr;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    if-eqz v12, :cond_12

    .line 9355
    iget-object v1, v8, Lcom/amazon/identity/auth/device/h;->D:Lcom/amazon/identity/auth/device/fz;

    const/4 v2, 0x0

    invoke-virtual {v1, v12, v2}, Lcom/amazon/identity/auth/device/fz;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 9359
    iget-object v1, v8, Lcom/amazon/identity/auth/device/h;->D:Lcom/amazon/identity/auth/device/fz;

    invoke-virtual {v1, v12, v2, v2}, Lcom/amazon/identity/auth/device/fz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 9363
    :cond_12
    sget-object v1, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    const-string v2, "MAP finished adding account locally and will do the other necessary work asynchronously in the data propogation callback"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "disable_user_name_auto_suggestion"

    move-object/from16 v2, p2

    .line 9369
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    move-object/from16 v1, p4

    .line 12452
    invoke-virtual {v14, v1}, Lcom/amazon/identity/auth/device/fv;->bY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12453
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 12455
    sget-object v1, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    const-string v2, "access token is null after sign in!"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 13416
    :cond_13
    new-instance v3, Lcom/amazon/identity/auth/device/h$5;

    move-object/from16 v4, p6

    invoke-direct {v3, v8, v1, v2, v4}, Lcom/amazon/identity/auth/device/h$5;-><init>(Lcom/amazon/identity/auth/device/h;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V

    invoke-static {v3}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V

    .line 9374
    :cond_14
    :goto_7
    invoke-interface {v10, v0}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 13839
    sget-object v0, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    const-string v1, "Notify if the default primary has changed"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 13841
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13843
    iget-object p1, p0, Lcom/amazon/identity/auth/device/h;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->n()Ljava/lang/String;

    move-result-object v3

    .line 13845
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/String;

    const-string v1, "DefaultPrimaryAccountChanged"

    .line 13847
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, p1

    const/4 p1, 0x1

    aput-object v3, v0, p1

    const-string p1, "The default primary account %s has been deregistered and the new one is %s"

    .line 13849
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcom/amazon/identity/auth/device/il;->gE()V

    .line 13851
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/h;->x:Lcom/amazon/identity/auth/device/ab;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/h;->y:Lcom/amazon/identity/auth/device/z;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/amazon/identity/auth/device/l;->a(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ab;Lcom/amazon/identity/auth/device/z;Ljava/lang/String;ZLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/h;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/h;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 13556
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13558
    sget-object v0, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "The central device email is missing. Please check that the capability EMAIL_ALIAS_SUPPORTED is defined for the following device type in DMS: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const-string p3, "CentralDeviceEmailIsMissing"

    .line 13561
    invoke-static {p3, v0}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 13563
    :cond_0
    iget-object p0, p0, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p0, p2, p1}, Lcom/amazon/identity/auth/device/ax;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/h;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/h;->a(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10

    if-nez p3, :cond_0

    return-void

    .line 2006
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/h;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/gc;)V

    const-string v1, "com.amazon.dcp.sso.property.devicename"

    .line 2010
    invoke-virtual {v0, p1, v1}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.amazon.dcp.sso.property.deviceemail"

    .line 2012
    invoke-virtual {v0, p1, v3}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-nez p2, :cond_2

    .line 2016
    new-instance v6, Lcom/amazon/identity/auth/device/fv;

    invoke-direct {v6, p1, v5, v5}, Lcom/amazon/identity/auth/device/fv;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 2017
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2019
    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/amazon/identity/auth/device/fv;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2021
    :cond_1
    invoke-virtual {v0, v6}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->a(Lcom/amazon/identity/auth/device/fv;)V

    goto :goto_2

    .line 2025
    :cond_2
    new-instance v6, Lcom/amazon/identity/auth/device/gi;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v6, v7, v0}, Lcom/amazon/identity/auth/device/gi;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/gc;)V

    .line 2027
    new-instance v7, Lcom/amazon/identity/auth/device/fv;

    invoke-direct {v7, p1, v5, v5}, Lcom/amazon/identity/auth/device/fv;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 2028
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2030
    invoke-static {p2, v8}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2031
    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2030
    invoke-virtual {v7, v9, v8}, Lcom/amazon/identity/auth/device/fv;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2033
    :cond_3
    invoke-virtual {v6, v7}, Lcom/amazon/identity/auth/device/gi;->a(Lcom/amazon/identity/auth/device/fv;)V

    .line 2037
    :goto_2
    invoke-virtual {v0, p1, v1}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2039
    invoke-virtual {v0, p1, v3}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2041
    invoke-static {v2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    .line 2042
    invoke-static {v1, p2}, Lcom/amazon/identity/auth/device/ib;->q(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2044
    sget-object v1, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2045
    iget-object v1, p0, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v1, p1, p3}, Lcom/amazon/identity/auth/device/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 2048
    :cond_4
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    iget-object p3, p0, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v1, "com.amazon.kindle"

    .line 2049
    invoke-static {p3, p2, v1}, Lcom/amazon/identity/auth/device/ib;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2051
    sget-object p2, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    invoke-static {p2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2052
    iget-object p2, p0, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p2, p1, v0}, Lcom/amazon/identity/auth/device/ax;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    :cond_5
    return-void
.end method

.method private a(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/h$a;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1505
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/h$a;

    .line 1507
    iget-object v1, p0, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    iget-boolean v2, v0, Lcom/amazon/identity/auth/device/h$a;->am:Z

    iget-object v3, v0, Lcom/amazon/identity/auth/device/h$a;->al:Ljava/lang/String;

    iget-object v4, v0, Lcom/amazon/identity/auth/device/h$a;->an:Landroid/accounts/Account;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/amazon/identity/auth/device/h$a;->ao:Ljava/util/Set;

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Lcom/amazon/identity/auth/device/l;->a(Landroid/content/Context;ZLjava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/util/Set;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)[Ljava/lang/String;
    .locals 6

    const-string v0, "Cookie force refresh fail before lauching auth portal ui for fix up page"

    const-string v1, "Cookie force refresh failed before launching the AuthPortal UI"

    .line 2348
    new-instance v2, Lcom/amazon/identity/auth/device/api/TokenManagement;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v2, v3}, Lcom/amazon/identity/auth/device/api/TokenManagement;-><init>(Landroid/content/Context;)V

    .line 2349
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "com.amazon.identity.auth.device.api.cookiekeys.options.forcerefresh"

    const/4 v5, 0x1

    .line 2350
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "domain"

    .line 2351
    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 2354
    :try_start_0
    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/amazon/identity/auth/device/api/TokenManagement;->getCookies(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/identity/auth/device/api/MAPFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string p2, "com.amazon.identity.auth.device.api.cookiekeys.all"

    .line 2355
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2356
    array-length p2, p1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 2360
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$TokenError;->COOKIE_REFRESH_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$TokenError;

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 2362
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result p2

    .line 2360
    invoke-static {p1, v1, p2, v0}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 2398
    :catch_0
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$TokenError;->COOKIE_REFRESH_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$TokenError;

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 2400
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result p2

    .line 2398
    invoke-static {p1, v1, p2, v0}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    goto :goto_1

    .line 2389
    :catch_1
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$TokenError;->COOKIE_REFRESH_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$TokenError;

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 2391
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result p2

    .line 2389
    invoke-static {p1, v1, p2, v0}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 2370
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2373
    sget-object p2, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot refresh the cookie to start auth portal attributes fix up flow. Error Code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "com.amazon.dcp.sso.ErrorCode"

    .line 2375
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "com.amazon.dcp.sso.ErrorMessage"

    .line 2376
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2373
    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 2380
    :cond_2
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$TokenError;->COOKIE_REFRESH_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$TokenError;

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 2382
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result p2

    .line 2380
    invoke-static {p1, v1, p2, v0}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    :goto_1
    return-object v4
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 109
    sget-object v0, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    const-class v1, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    .line 439
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/if;->t(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 442
    invoke-virtual {p3, v0}, Lcom/amazon/identity/auth/device/ej;->e(Landroid/content/Intent;)V

    :cond_0
    if-eqz v0, :cond_5

    .line 451
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p3, "isCallbackFrom3pLogin"

    .line 453
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "federated_auth_config"

    .line 454
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p3, 0x1

    :goto_1
    const-string/jumbo v1, "requestType"

    if-eqz p3, :cond_3

    .line 458
    sget-object p1, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->CALLBACK_FOR_3P_LOGIN:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 460
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 464
    sget-object p1, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->SIGN_IN:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    :goto_2
    const/high16 p1, 0x20000

    .line 470
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 472
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p3, "intent"

    .line 473
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 474
    new-instance p3, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    invoke-direct {p3, p2}, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    const-string p2, "callback"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p1

    .line 447
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No activity can handle the intent. Probably because you do not declare AuthPortalUIActivity in android manifest"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 13

    move-object v8, p0

    move-object v9, p1

    .line 1906
    sget-object v0, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    const-string v1, "Starting Deregistration"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    iget-object v0, v8, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/hr;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v4

    .line 1909
    iget-object v0, v8, Lcom/amazon/identity/auth/device/h;->x:Lcom/amazon/identity/auth/device/ab;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/ab;->Q(Ljava/lang/String;)Z

    move-result v2

    .line 1911
    iget-object v0, v8, Lcom/amazon/identity/auth/device/h;->x:Lcom/amazon/identity/auth/device/ab;

    iget-object v1, v8, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    .line 1912
    invoke-virtual {v0, v1, p1}, Lcom/amazon/identity/auth/device/ab;->a(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 1914
    iget-object v10, v8, Lcom/amazon/identity/auth/device/h;->q:Lcom/amazon/identity/auth/device/x;

    iget-object v0, v8, Lcom/amazon/identity/auth/device/h;->p:Lcom/amazon/identity/auth/device/al;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/al;->Z()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lcom/amazon/identity/auth/device/h$1;

    move-object v0, v12

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v6, p4

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/amazon/identity/auth/device/h$1;-><init>(Lcom/amazon/identity/auth/device/h;ZLjava/lang/String;Landroid/accounts/Account;Ljava/util/Set;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V

    move-object v0, v10

    move-object v1, v11

    move-object v2, v12

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/identity/auth/device/x;->a(Ljava/util/List;Lcom/amazon/identity/auth/device/x$d;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/h;)Lcom/amazon/identity/auth/device/gc;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/amazon/identity/auth/device/h;->w:Lcom/amazon/identity/auth/device/gc;

    return-object p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/amazon/identity/auth/device/h;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/h;

    monitor-enter v0

    .line 210
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/h;->n:Lcom/amazon/identity/auth/device/h;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    :cond_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/h;->generateNewInstance(Landroid/content/Context;)V

    .line 215
    :cond_1
    sget-object p0, Lcom/amazon/identity/auth/device/h;->n:Lcom/amazon/identity/auth/device/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/h;Ljava/util/Set;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/h;->b(Ljava/util/Set;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)V

    return-void
.end method

.method private b(Ljava/util/Set;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1866
    sget-object v0, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    const-string v1, "Deregister all accounts initiated"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1870
    iget-object v1, p0, Lcom/amazon/identity/auth/device/h;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->D(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1876
    :try_start_0
    new-instance v1, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v1}, Lcom/amazon/identity/auth/device/bl;-><init>()V

    .line 1878
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/amazon/identity/auth/device/h;->b(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1879
    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1881
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/bl;->bs()Landroid/os/Bundle;
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1894
    sget-object v1, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    const-string v2, "ExecutionException calling deregister"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1890
    sget-object v1, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    const-string v2, "InterruptedException calling deregister."

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 1886
    sget-object v1, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MAP Error calling deregister. Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/identity/auth/device/ht;->J(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 7980
    invoke-direct {p0, p2, p1, p1}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/api/Callback;ZZ)V

    return-void
.end method

.method private b(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "com.amazon.dcp.sso.AddAccount.options.AddAsSecondary"

    .line 6774
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.amazon.dcp.sso.AddAccount.options.AddAsPrimary"

    .line 7046
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic c(Lcom/amazon/identity/auth/device/h;)Lcom/amazon/identity/auth/device/n;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/amazon/identity/auth/device/h;->v:Lcom/amazon/identity/auth/device/n;

    return-object p0
.end method

.method private c(Lcom/amazon/identity/auth/device/api/Callback;)Z
    .locals 3

    .line 2464
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/platform/setting/PlatformSettings;->aV(Landroid/content/Context;)Lcom/amazon/identity/platform/setting/PlatformSettings;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ignore.deregister"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/identity/platform/setting/PlatformSettings;->f(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2466
    sget-object v0, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    const-string v2, "Ignoring deregister based on system property ignore.deregister"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 7985
    invoke-direct {p0, p1, v1, v1}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/api/Callback;ZZ)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method static synthetic d(Lcom/amazon/identity/auth/device/h;)Lcom/amazon/identity/auth/device/ab;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/amazon/identity/auth/device/h;->x:Lcom/amazon/identity/auth/device/ab;

    return-object p0
.end method

.method static synthetic e(Lcom/amazon/identity/auth/device/h;)Lcom/amazon/identity/auth/device/z;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/amazon/identity/auth/device/h;->y:Lcom/amazon/identity/auth/device/z;

    return-object p0
.end method

.method static synthetic f(Lcom/amazon/identity/auth/device/h;)Lcom/amazon/identity/auth/accounts/AmazonAccountManager;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/amazon/identity/auth/device/h;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    return-object p0
.end method

.method static synthetic g(Lcom/amazon/identity/auth/device/h;)Lcom/amazon/identity/auth/device/ae;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/amazon/identity/auth/device/h;->E:Lcom/amazon/identity/auth/device/ae;

    return-object p0
.end method

.method public static generateNewInstance(Landroid/content/Context;)V
    .locals 1

    .line 220
    new-instance v0, Lcom/amazon/identity/auth/device/h;

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/h;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    sput-object v0, Lcom/amazon/identity/auth/device/h;->n:Lcom/amazon/identity/auth/device/h;

    return-void
.end method

.method private s(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 412
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    new-instance p1, Lcom/amazon/identity/auth/device/ek;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p1, v1}, Lcom/amazon/identity/auth/device/ek;-><init>(Landroid/content/Context;)V

    .line 414
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ek;->f(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    .line 420
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 422
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_1

    return-object v2

    .line 430
    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 585
    sget-object v0, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    const-string v1, "deregisterDevice logic called"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    new-instance v0, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 589
    invoke-static {p3}, Lcom/amazon/identity/auth/device/ht;->H(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "DeregisteringDevice"

    const/4 v1, 0x1

    .line 590
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4598
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/h;->getAccounts()Ljava/util/Set;

    move-result-object p3

    .line 4600
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/h;->c(Lcom/amazon/identity/auth/device/api/Callback;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4605
    sget-object v1, Lcom/amazon/identity/auth/device/h;->m:Lcom/amazon/identity/auth/device/c;

    new-instance v2, Lcom/amazon/identity/auth/device/h$7;

    invoke-direct {v2, p0, p3, p2, p1}, Lcom/amazon/identity/auth/device/h$7;-><init>(Lcom/amazon/identity/auth/device/h;Ljava/util/Set;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)V

    const-string p1, "DeregisterAccountsInner"

    invoke-virtual {v1, v2, v0, p1}, Lcom/amazon/identity/auth/device/c;->a(Lcom/amazon/identity/auth/device/c$b;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 572
    sget-object v0, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    const-string v1, "deregisterAccount logic called"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    new-instance v0, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v0, p2}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 576
    invoke-static {p4}, Lcom/amazon/identity/auth/device/ht;->H(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 3780
    sget-object p2, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    const-string p4, "Deregister initiated"

    invoke-static {p2, p4}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 3782
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/h;->c(Lcom/amazon/identity/auth/device/api/Callback;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 3787
    iget-object p2, p0, Lcom/amazon/identity/auth/device/h;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->D(Ljava/lang/String;)Z

    move-result p2

    const/4 p4, 0x1

    if-nez p2, :cond_0

    .line 3980
    invoke-direct {p0, v0, p4, p4}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/api/Callback;ZZ)V

    goto :goto_0

    .line 3793
    :cond_0
    iget-object p2, p0, Lcom/amazon/identity/auth/device/h;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->n()Ljava/lang/String;

    move-result-object v4

    .line 3794
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3796
    sget-object p2, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    const-string v1, "Deregistering a default primary"

    invoke-static {p2, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "DeregisteringDefaultPrimary"

    .line 3797
    invoke-virtual {v6, p2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3799
    :cond_1
    sget-object p2, Lcom/amazon/identity/auth/device/h;->m:Lcom/amazon/identity/auth/device/c;

    new-instance p4, Lcom/amazon/identity/auth/device/h$14;

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/h$14;-><init>(Lcom/amazon/identity/auth/device/h;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)V

    const-string p1, "DeregisterAccount"

    invoke-virtual {p2, p4, v0, p1}, Lcom/amazon/identity/auth/device/c;->a(Lcom/amazon/identity/auth/device/c$b;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/ij;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 691
    new-instance v6, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v6, p4}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 693
    invoke-virtual {p0, p1, v6}, Lcom/amazon/identity/auth/device/h;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v6

    .line 6024
    :cond_0
    invoke-static {p2}, Lcom/amazon/identity/auth/device/au;->b(Lcom/amazon/identity/auth/device/ij;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/amazon/identity/auth/device/au;->c(Lcom/amazon/identity/auth/device/ij;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 702
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array v0, v3, [Ljava/lang/Object;

    .line 704
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v4, "The key %s is not valid"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 705
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v5

    new-array v0, v3, [Ljava/lang/Object;

    .line 706
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "key %s is not valid"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, v6

    move-object v1, v2

    move-object v2, v4

    move v3, v5

    move-object v4, v7

    move-object v5, v8

    .line 702
    invoke-static/range {v0 .. v5}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-object v6

    .line 711
    :cond_3
    new-instance v1, Lcom/amazon/identity/auth/device/h$9;

    invoke-direct {v1, p0, p1, p2, v6}, Lcom/amazon/identity/auth/device/h$9;-><init>(Lcom/amazon/identity/auth/device/h;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Lcom/amazon/identity/auth/device/bl;)V

    .line 744
    iget-object v3, p0, Lcom/amazon/identity/auth/device/h;->u:Lcom/amazon/identity/auth/device/i;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz p3, :cond_4

    move-object v5, p3

    goto :goto_2

    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v5, v0

    :goto_2
    move-object v0, v3

    move-object v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/i$a;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V

    return-object v6
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 8
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

    const-string v0, "directedId"

    .line 530
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceType"

    .line 531
    invoke-static {p2, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    sget-object v0, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "registerChildApplication device type:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    new-instance v0, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v0, p4}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 538
    :try_start_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/h;->r:Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    :try_end_0
    .catch Lcom/amazon/identity/auth/accounts/RegisterChildApplicationAction$NotChildApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "%s is not a child application device type"

    .line 547
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 549
    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;->NOT_A_CHILD_DEVICE_TYPE:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;

    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 552
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v5

    const/4 v7, 0x0

    move-object v2, v0

    move-object v4, v6

    .line 549
    invoke-static/range {v2 .. v7}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-object v0
.end method

.method public a(Landroid/app/Activity;Lcom/amazon/identity/auth/device/api/SigninOption;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 6

    .line 231
    sget-object v0, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerAccountWithUI SigninOption:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 235
    :goto_0
    invoke-static {p3}, Lcom/amazon/identity/auth/device/ht;->K(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const-string v1, "deregisterall_register_this_as_primary"

    .line 237
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 241
    iget-object v2, p0, Lcom/amazon/identity/auth/device/h;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p3}, Lcom/amazon/identity/auth/device/h;->b(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    .line 244
    iget-object p1, p0, Lcom/amazon/identity/auth/device/h;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    .line 245
    invoke-virtual {p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->n()Ljava/lang/String;

    move-result-object p1

    .line 244
    invoke-static {p4, p1}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 250
    sget-object v2, Lcom/amazon/identity/auth/device/h$6;->T:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "requestType"

    if-eq v2, v3, :cond_5

    const/4 v5, 0x2

    if-eq v2, v5, :cond_4

    const/4 v5, 0x3

    if-eq v2, v5, :cond_3

    const/4 v5, 0x4

    if-eq v2, v5, :cond_2

    .line 305
    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array p5, v3, [Ljava/lang/Object;

    .line 307
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p5, v0

    const-string v2, "Sign-in option %s is not supported"

    invoke-static {v2, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    const/4 v2, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    .line 309
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v0

    const-string p2, "Signin Options %s is not supported"

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 305
    invoke-static {p4, p3, p5, v2, p2}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 296
    :cond_2
    sget-object p2, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->FORGOT_PASSWORD:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    .line 297
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    .line 296
    invoke-virtual {p3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-direct {p0, p3, p4, p5}, Lcom/amazon/identity/auth/device/h;->b(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    .line 291
    :cond_3
    invoke-direct {p0, p3, p4}, Lcom/amazon/identity/auth/device/h;->a(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    .line 284
    :cond_4
    sget-object p2, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->REGISTER:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    .line 285
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    .line 284
    invoke-virtual {p3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-direct {p0, p3, p4, p5}, Lcom/amazon/identity/auth/device/h;->b(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    :cond_5
    const-string p2, "com.amazon.identity.auth.ChallengeException"

    .line 256
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 258
    sget-object p2, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->SIGN_IN:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    .line 259
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    .line 258
    invoke-virtual {p3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-direct {p0, p3, p4, p5}, Lcom/amazon/identity/auth/device/h;->b(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    .line 268
    :cond_6
    iget-object p2, p0, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p2}, Lcom/amazon/identity/auth/device/mw;->bk(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p2}, Lcom/amazon/identity/auth/device/mw;->bl(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 271
    invoke-direct {p0, p3, p4}, Lcom/amazon/identity/auth/device/h;->a(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Landroid/os/Bundle;

    move-result-object p2

    move-object v1, p2

    :cond_7
    if-nez v1, :cond_8

    .line 276
    sget-object p2, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->SIGN_IN:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    .line 277
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    .line 276
    invoke-virtual {p3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-direct {p0, p3, p4, p5}, Lcom/amazon/identity/auth/device/h;->b(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object v1

    :cond_8
    :goto_1
    const-string p2, "Could not find the sign in UI. If the option passed in was MyAccount, you are on a 3rd party device. Otherwise, this more than likely represents a bug."

    .line 314
    invoke-direct {p0, p1, p4, v1, p2}, Lcom/amazon/identity/auth/device/h;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 759
    invoke-direct/range {v0 .. v6}, Lcom/amazon/identity/auth/device/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 6

    const-string p2, "link_code"

    .line 2171
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string/jumbo p2, "pre_authorized_link_code"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2177
    :cond_0
    sget-object v2, Lcom/amazon/identity/auth/device/api/SigninOption;->WebviewConfirmCredentials:Lcom/amazon/identity/auth/device/api/SigninOption;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/h;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/SigninOption;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 2173
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_LINK_CODE:Lcom/amazon/identity/auth/device/api/RegistrationType;

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 3

    if-eqz p1, :cond_3

    const-string v0, "com.amazon.dcp.sso.property.account.acctId"

    .line 819
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "authAccount"

    if-nez v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const-string/jumbo v1, "password"

    .line 820
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 831
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 832
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 836
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const-string v0, "Cannot pass in both a login and directedId to the authenticateAccount API."

    const-string v1, "Cannot pass in both login and directedId to authenticateAccount API."

    invoke-static {p1, v0, p3, v1}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void

    .line 843
    :cond_2
    new-instance v0, Lcom/amazon/identity/auth/device/h$10;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/amazon/identity/auth/device/h$10;-><init>(Lcom/amazon/identity/auth/device/h;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/api/Callback;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V

    return-void

    .line 824
    :cond_3
    :goto_0
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const-string v0, "A login/directedId and password are required to authenticate/confirm credentials."

    const-string v1, "A login/directedId and password are required to authenticate/confirmCredential."

    invoke-static {p1, v0, p3, v1}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 8

    const-string v0, "RegistrationType"

    .line 516
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 518
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 519
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerAccount:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/RegistrationType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 2941
    sget-object v0, Lcom/amazon/identity/auth/device/api/RegistrationType;->FROM_ADP_TOKEN:Lcom/amazon/identity/auth/device/api/RegistrationType;

    if-ne p1, v0, :cond_1

    .line 2943
    invoke-virtual {p0, p2, p3, p4}, Lcom/amazon/identity/auth/device/h;->c(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    const-string v1, "deregisterall_register_this_as_primary"

    .line 2947
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2948
    new-instance v0, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/bl;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/h;->c(Lcom/amazon/identity/auth/device/api/Callback;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2952
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->DEREGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->DEREGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    const-string v3, "Cannot deregister all accounts because the system property, ignore.deregister, is set to true"

    const-string v7, "Cannot deregister all accounts before register primary account, ignore.deregister is set in system property."

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 2961
    :cond_2
    sget-object v0, Lcom/amazon/identity/auth/device/h;->m:Lcom/amazon/identity/auth/device/c;

    new-instance v1, Lcom/amazon/identity/auth/device/h$11;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/amazon/identity/auth/device/h$11;-><init>(Lcom/amazon/identity/auth/device/h;Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V

    const-string p1, "AddAccount"

    invoke-virtual {v0, v1, p3, p1}, Lcom/amazon/identity/auth/device/c;->a(Lcom/amazon/identity/auth/device/c$b;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)Z
    .locals 6

    if-eqz p1, :cond_1

    .line 2069
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->D(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 2073
    :cond_1
    :goto_0
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    const/4 v3, 0x7

    const/4 v5, 0x0

    const-string v2, "Customer account does not exist or directedId is null"

    const-string v4, "The provided account does not exist"

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 8
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

    .line 2149
    sget-object v0, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "renameDevice logic called"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    new-instance v0, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v0, p4}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 2153
    sget-object p4, Lcom/amazon/identity/auth/device/h;->m:Lcom/amazon/identity/auth/device/c;

    new-instance v7, Lcom/amazon/identity/auth/device/h$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/h$2;-><init>(Lcom/amazon/identity/auth/device/h;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V

    const-string p1, "RenameDevice"

    invoke-virtual {p4, v7, v0, p1}, Lcom/amazon/identity/auth/device/c;->a(Lcom/amazon/identity/auth/device/c$b;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V

    return-object v0
.end method

.method public b(Landroid/app/Activity;Lcom/amazon/identity/auth/device/api/SigninOption;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 0

    .line 869
    invoke-direct/range {p0 .. p5}, Lcom/amazon/identity/auth/device/h;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/SigninOption;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-void
.end method

.method public b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 8

    .line 2261
    new-instance v7, Lcom/amazon/identity/auth/device/h$4;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/identity/auth/device/h$4;-><init>(Lcom/amazon/identity/auth/device/h;Landroid/os/Bundle;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/app/Activity;)V

    invoke-static {v7}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 6

    .line 2189
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mw;->f(Lcom/amazon/identity/auth/device/ed;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2191
    sget-object p1, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    const-string p3, "BootstrapWithADPToken API is only supported for isolated applications for now."

    invoke-static {p1, p3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->UNSUPPORTED_OPERATION:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 2198
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v3

    const/4 v5, 0x0

    const-string v2, "BootstrapWithADPToken API is only supported for isolated applications for now."

    const-string v4, "BootstrapWithADPToken API is only supported for isolated applications for now."

    move-object v0, p2

    .line 2195
    invoke-static/range {v0 .. v5}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 2204
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/h;->getAccounts()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2206
    sget-object p1, Lcom/amazon/identity/auth/device/h;->TAG:Ljava/lang/String;

    const-string p3, "Registered account found on device. bootstrap API works only on unregistered devices"

    invoke-static {p1, p3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    iget-object p1, p0, Lcom/amazon/identity/auth/device/h;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    .line 2209
    invoke-virtual {p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->n()Ljava/lang/String;

    move-result-object p1

    .line 2208
    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V

    return-void

    .line 2213
    :cond_1
    sget-object v0, Lcom/amazon/identity/auth/device/h;->m:Lcom/amazon/identity/auth/device/c;

    new-instance v1, Lcom/amazon/identity/auth/device/h$3;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/amazon/identity/auth/device/h$3;-><init>(Lcom/amazon/identity/auth/device/h;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V

    const-string p1, "BootstrapMAPWithADPToken"

    invoke-virtual {v0, v1, p2, p1}, Lcom/amazon/identity/auth/device/c;->a(Lcom/amazon/identity/auth/device/c$b;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V

    return-void
.end method

.method public getAccounts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2128
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->o()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryAccount()Ljava/lang/String;
    .locals 4

    .line 2121
    invoke-static {}, Lcom/amazon/identity/auth/device/da;->cz()I

    move-result v0

    .line 2122
    iget-object v1, p0, Lcom/amazon/identity/auth/device/h;->x:Lcom/amazon/identity/auth/device/ab;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;->createPrimaryMappingForProfile(I)Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/ab;->getAccountForMapping([Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAccountRegistered(Ljava/lang/String;)Z
    .locals 1

    .line 2113
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/h;->getAccounts()Ljava/util/Set;

    move-result-object v0

    .line 2115
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isDeviceRegistered()Z
    .locals 1

    .line 2107
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->m()Z

    move-result v0

    return v0
.end method

.method public r(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2137
    invoke-static {}, Lcom/amazon/identity/auth/device/da;->cz()I

    move-result v0

    .line 2138
    iget-object v1, p0, Lcom/amazon/identity/auth/device/h;->x:Lcom/amazon/identity/auth/device/ab;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/h;->y:Lcom/amazon/identity/auth/device/z;

    invoke-interface {v2, p1, v0}, Lcom/amazon/identity/auth/device/z;->a(Ljava/lang/String;I)[Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/identity/auth/device/ab;->getAccountForMapping([Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
