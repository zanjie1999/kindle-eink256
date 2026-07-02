.class public Lcom/amazon/identity/auth/device/i;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/i$b;,
        Lcom/amazon/identity/auth/device/i$c;,
        Lcom/amazon/identity/auth/device/i$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final ap:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final aq:J


# instance fields
.field private final B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

.field private final ar:Lcom/amazon/identity/auth/device/ea;

.field private final as:Lcom/amazon/identity/auth/device/api/TokenManagement;

.field private final at:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

.field private final au:Lcom/amazon/identity/auth/device/cz;

.field private final av:Lcom/amazon/identity/auth/device/co;

.field private final aw:Lcom/amazon/identity/auth/device/gx;

.field private final o:Lcom/amazon/identity/auth/device/ed;

.field private final s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

.field private final v:Lcom/amazon/identity/auth/device/n;

.field private final w:Lcom/amazon/identity/auth/device/gc;

.field private final z:Lcom/amazon/identity/auth/device/w;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 114
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "com.amazon.alta.h2clientservice"

    const-string v2, "com.amazon.map.sample.one"

    const-string v3, "com.amazon.map.sample.two"

    const-string v4, "com.amazon.map.sample.three"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/identity/auth/device/i;->ap:Ljava/util/Set;

    .line 532
    const-class v0, Lcom/amazon/identity/auth/device/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    .line 533
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/jg;->d(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/identity/auth/device/i;->aq:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 557
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    .line 558
    new-instance p1, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/i;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    .line 559
    iget-object p1, p0, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "dcp_device_info"

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/ea;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/i;->ar:Lcom/amazon/identity/auth/device/ea;

    .line 560
    iget-object p1, p0, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "dcp_token_mangement"

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/api/TokenManagement;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/i;->as:Lcom/amazon/identity/auth/device/api/TokenManagement;

    .line 561
    new-instance p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/i;->at:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    .line 562
    iget-object p1, p0, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    const-string/jumbo v0, "sso_webservice_caller_creator"

    .line 563
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/cz;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/i;->au:Lcom/amazon/identity/auth/device/cz;

    .line 564
    new-instance p1, Lcom/amazon/identity/auth/device/n;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/n;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/i;->v:Lcom/amazon/identity/auth/device/n;

    .line 565
    new-instance p1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/i;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    .line 566
    new-instance p1, Lcom/amazon/identity/auth/device/w;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/w;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/i;->z:Lcom/amazon/identity/auth/device/w;

    .line 567
    iget-object p1, p0, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ed;->dV()Lcom/amazon/identity/auth/device/co;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/i;->av:Lcom/amazon/identity/auth/device/co;

    .line 568
    iget-object p1, p0, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "dcp_data_storage_factory"

    .line 569
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/gd;

    .line 570
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/gd;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/i;->w:Lcom/amazon/identity/auth/device/gc;

    .line 571
    new-instance p1, Lcom/amazon/identity/auth/device/gx;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/gx;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/i;->aw:Lcom/amazon/identity/auth/device/gx;

    return-void

    .line 554
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/amazon/identity/auth/device/i$a;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;
    .locals 9

    .line 1497
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i;->v:Lcom/amazon/identity/auth/device/n;

    invoke-virtual {v0, p2, p3}, Lcom/amazon/identity/auth/device/n;->a(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p3

    .line 1504
    sget-object v0, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 1505
    invoke-static {p3}, Lcom/amazon/identity/auth/device/fl;->a(Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;)Lcom/amazon/identity/auth/device/fl;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "account_recover_attempt"

    .line 1507
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1511
    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->CORRUPTED_ACCOUNT:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v5, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1515
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/fl;->eC()Landroid/os/Bundle;

    move-result-object v7

    const-string v4, "The primary account has been corrupted. It should be recovered"

    const-string v6, "Primary account corrupted, should recover"

    move-object v2, p1

    .line 1511
    invoke-interface/range {v2 .. v7}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1

    .line 1518
    :cond_0
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "com.amazon.dcp.sso.ErrorCode"

    .line 1519
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "com.amazon.identity.auth.ChallengeException"

    .line 1520
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 1523
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object p3

    goto :goto_0

    :cond_1
    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    :goto_0
    move-object v4, p3

    .line 1524
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz p2, :cond_3

    .line 1530
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 1531
    invoke-virtual {p3, v2, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v2, "auth_data_additional_info"

    .line 1532
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1535
    invoke-virtual {p3, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v8, p3

    goto :goto_1

    :cond_3
    move-object v8, v1

    .line 1543
    :goto_1
    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->fromValue(I)Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    move-result-object v6

    const/4 v7, 0x0

    move-object v3, p1

    .line 1541
    invoke-interface/range {v3 .. v8}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/i;)Lcom/amazon/identity/auth/device/ed;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    return-object p0
.end method

.method private a(Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/kl;
    .locals 10

    .line 2514
    new-instance v9, Lcom/amazon/identity/auth/device/i$4;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/i;->at:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    move-object v7, p5

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/amazon/identity/auth/device/i$4;-><init>(Lcom/amazon/identity/auth/device/i;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/api/MAPAccountManager;Lcom/amazon/identity/auth/device/j;Ljava/lang/String;Lcom/amazon/identity/auth/device/i$a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/i;Lcom/amazon/identity/auth/device/ky;)V
    .locals 4

    .line 22851
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->getDeviceInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 22853
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->getDeviceInfo()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 22855
    sget-object v1, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device attribute received: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 22857
    iget-object v1, p0, Lcom/amazon/identity/auth/device/i;->w:Lcom/amazon/identity/auth/device/gc;

    .line 22858
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 22859
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "device.metadata"

    .line 22857
    invoke-virtual {v1, v3, v2, v0}, Lcom/amazon/identity/auth/device/gc;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void

    .line 22864
    :cond_1
    sget-object p0, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    const-string p1, "device info attribute is null in register Response."

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/kcpsdk/common/WebResponseParser;Lcom/amazon/identity/auth/device/kl;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/ej;)V
    .locals 10

    .line 2732
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->n()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    .line 2733
    invoke-virtual/range {v1 .. v9}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/ma;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/br;Lcom/amazon/identity/kcpsdk/common/WebResponseParser;Lcom/amazon/identity/auth/device/kl;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/ej;)V

    return-void
.end method

.method private a(Lcom/amazon/identity/auth/device/ma;Ljava/lang/String;Lcom/amazon/identity/kcpsdk/common/WebResponseParser;Lcom/amazon/identity/auth/device/kl;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/ej;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 2747
    invoke-virtual/range {v0 .. v8}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/ma;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/br;Lcom/amazon/identity/kcpsdk/common/WebResponseParser;Lcom/amazon/identity/auth/device/kl;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/ej;)V

    return-void
.end method

.method private a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;Landroid/os/Bundle;Ljava/lang/String;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/i$a;ZLcom/amazon/identity/auth/device/ej;)V
    .locals 13

    move-object v8, p0

    move-object v0, p1

    move-object v7, p2

    move-object/from16 v9, p7

    .line 1852
    invoke-static {p2}, Lcom/amazon/identity/auth/device/ho;->G(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 1854
    invoke-virtual {p1, v1}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->eo(Ljava/lang/String;)V

    .line 1858
    iget-object v2, v8, Lcom/amazon/identity/auth/device/i;->aw:Lcom/amazon/identity/auth/device/gx;

    invoke-virtual {v2, v1}, Lcom/amazon/identity/auth/device/gx;->cI(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, "sid_cookie_value"

    .line 1860
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1861
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1863
    invoke-static {v3, v1}, Lcom/amazon/identity/auth/device/gx;->U(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/token/MAPCookie;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1868
    :cond_0
    invoke-virtual {p1, v2}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->l(Ljava/util/List;)V

    .line 1870
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/i;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v6

    .line 1871
    invoke-virtual {p1, v6}, Lcom/amazon/identity/auth/device/ld;->dS(Ljava/lang/String;)Z

    .line 1873
    iget-object v2, v8, Lcom/amazon/identity/auth/device/i;->ar:Lcom/amazon/identity/auth/device/ea;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/ea;->getDeviceType()Ljava/lang/String;

    move-result-object v5

    .line 1874
    invoke-virtual {p1, v5}, Lcom/amazon/identity/auth/device/ld;->dR(Ljava/lang/String;)Z

    .line 1876
    iget-object v2, v8, Lcom/amazon/identity/auth/device/i;->ar:Lcom/amazon/identity/auth/device/ea;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/ea;->dQ()Lcom/amazon/identity/auth/device/lz;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->a(Lcom/amazon/identity/auth/device/lz;)V

    .line 1877
    invoke-direct {p0, v5}, Lcom/amazon/identity/auth/device/i;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->eg(Ljava/lang/String;)V

    const-string v2, "calling_package"

    .line 1878
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1881
    invoke-virtual {p1, v2}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->dT(Ljava/lang/String;)V

    .line 1882
    iget-object v3, v8, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v3, v2}, Lcom/amazon/identity/auth/device/iq;->x(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1885
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->dU(Ljava/lang/String;)V

    :cond_1
    const-string v3, "com.amazon.dcp.sso.property.account.delegateeaccount"

    .line 1888
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1889
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1891
    iget-object v3, v8, Lcom/amazon/identity/auth/device/i;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v3}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->n()Ljava/lang/String;

    move-result-object v3

    :cond_2
    move-object v10, v3

    if-nez p6, :cond_3

    .line 1893
    iget-object v3, v8, Lcom/amazon/identity/auth/device/i;->av:Lcom/amazon/identity/auth/device/co;

    sget-object v4, Lcom/amazon/identity/auth/device/features/Feature;->PandaRegistration:Lcom/amazon/identity/auth/device/features/Feature;

    invoke-virtual {v3, v4}, Lcom/amazon/identity/auth/device/co;->a(Lcom/amazon/identity/auth/device/features/Feature;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1896
    :cond_3
    invoke-virtual {p1, p2}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->P(Landroid/os/Bundle;)V

    .line 1899
    sget-object v3, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;->Panda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;

    invoke-virtual {p1, v3}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;)V

    const-string v3, "disable_global_signin"

    .line 1901
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_4

    .line 1904
    invoke-virtual {p1, v11}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->k(Z)V

    goto :goto_0

    .line 1908
    :cond_4
    invoke-virtual {p1, v4}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->k(Z)V

    .line 1911
    :goto_0
    iget-object v3, v8, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v3, v6}, Lcom/amazon/identity/auth/device/fi;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->dW(Ljava/lang/String;)V

    .line 1913
    iget-object v3, v8, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v3, v5, v6, v9}, Lcom/amazon/identity/auth/device/fi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->z(Lorg/json/JSONObject;)V

    .line 1918
    iget-object v3, v8, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/mw;->aZ(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1920
    new-instance v3, Lcom/amazon/identity/auth/device/cl;

    iget-object v12, v8, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v3, v12}, Lcom/amazon/identity/auth/device/cl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/cl;->bP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->eh(Ljava/lang/String;)V

    .line 1923
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->hC()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1925
    iget-object v3, v8, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/mw;->ba(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "profile_mapping"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    .line 1927
    sget-object v3, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    const-string v12, "Profile id for secondary account on FireOS is missing!!!"

    invoke-static {v3, v12}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v11

    const-string v2, "SecondaryAccountProfileIDMissingOnFireOS_%s"

    .line 1928
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_6
    const-string v2, "com.amazon.dcp.sso.token.oauth.amazon.access_token"

    .line 1933
    invoke-static {v2}, Lcom/amazon/identity/auth/device/ij;->dk(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ij;

    move-result-object v2

    .line 1937
    :try_start_0
    iget-object v3, v8, Lcom/amazon/identity/auth/device/i;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    const/4 v12, 0x0

    invoke-virtual {v3, v10, v2, v12, v9}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2002
    invoke-virtual {p1, v2}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->eb(Ljava/lang/String;)Z

    const-string v2, "authAccount"

    .line 2004
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "password"

    .line 2005
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2006
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 2008
    invoke-virtual {p1, v2}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->ec(Ljava/lang/String;)V

    .line 2009
    invoke-virtual {p1, v3}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->ee(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-array v1, v4, [Ljava/lang/Object;

    .line 1943
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->bE()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    const-string v2, "Get error when getting the primary access token for secondary account registration %s."

    .line 1941
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1950
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->fV()Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1953
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cF()Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    move-result-object v3

    sget-object v5, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->InvalidToken:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    if-ne v3, v5, :cond_8

    .line 1955
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->eE()Lcom/amazon/identity/auth/device/fl;

    move-result-object v0

    const-string v2, "Device already deregistered. %s"

    if-eqz v0, :cond_7

    .line 1960
    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->DEVICE_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v11

    .line 1961
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1964
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/fl;->eC()Landroid/os/Bundle;

    move-result-object v0

    move-object/from16 p1, p5

    move-object p2, v3

    move-object/from16 p3, v2

    move-object/from16 p4, v4

    move-object/from16 p5, v1

    move-object/from16 p6, v0

    .line 1960
    invoke-interface/range {p1 .. p6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 1970
    :cond_7
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->DEVICE_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v11

    .line 1971
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v4, 0x0

    move-object/from16 p1, p5

    move-object p2, v0

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v1

    move-object/from16 p6, v4

    .line 1970
    invoke-interface/range {p1 .. p6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 1982
    :cond_8
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cF()Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object v0

    .line 1983
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cF()Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    .line 1984
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->getRegistrationError()Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 p1, p5

    move-object p2, v0

    move-object/from16 p3, v3

    move-object/from16 p4, v2

    move-object/from16 p5, v1

    move-object/from16 p6, v4

    .line 1982
    invoke-interface/range {p1 .. p6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 1993
    :cond_9
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v11

    const-string v3, "Invalid request. %s"

    .line 1994
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v4, 0x0

    move-object/from16 p1, p5

    move-object p2, v0

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v1

    move-object/from16 p6, v4

    .line 1993
    invoke-interface/range {p1 .. p6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 2014
    :cond_a
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/i;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazon/identity/auth/device/ld;->eu(Ljava/lang/String;)Z

    .line 2016
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ig;->dh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->dX(Ljava/lang/String;)Z

    .line 2017
    iget-object v1, v8, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/ib;->aA(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->m(Ljava/util/Map;)V

    move-object v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    .line 2020
    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/kl;

    move-result-object v5

    .line 2022
    invoke-virtual {p1}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->hK()Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;

    move-result-object v1

    .line 2023
    sget-object v2, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;->FIRS:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;

    if-ne v1, v2, :cond_b

    .line 2026
    invoke-virtual {p1, v9}, Lcom/amazon/identity/auth/device/ld;->e(Lcom/amazon/identity/auth/device/ej;)V

    .line 2028
    :cond_b
    sget-object v2, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;->Panda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;

    if-ne v1, v2, :cond_c

    .line 2030
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ld;->ic()V

    :cond_c
    const-string v1, "device_name"

    .line 2033
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->d(Ljava/lang/String;)V

    .line 2035
    invoke-virtual {p1}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->hq()Lcom/amazon/identity/auth/device/ma;

    move-result-object v2

    if-nez v2, :cond_d

    .line 2041
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v2, 0x0

    const-string v3, "Could not construct a valid registration request"

    const-string v4, "Could not construct a valid registration request"

    move-object/from16 p1, p5

    move-object p2, v0

    move-object/from16 p3, v3

    move-object/from16 p4, v1

    move-object/from16 p5, v4

    move-object/from16 p6, v2

    invoke-interface/range {p1 .. p6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 2048
    :cond_d
    invoke-virtual {p1}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->hK()Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;

    move-result-object v1

    sget-object v3, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;->Panda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;

    if-ne v1, v3, :cond_e

    .line 2050
    invoke-virtual {p1}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->hM()Lcom/amazon/identity/auth/device/kz;

    move-result-object v4

    move-object v1, p0

    move-object v3, v10

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/ma;Ljava/lang/String;Lcom/amazon/identity/kcpsdk/common/WebResponseParser;Lcom/amazon/identity/auth/device/kl;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 2054
    :cond_e
    invoke-virtual {p0, p1, v5, v9}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/ld;Lcom/amazon/identity/auth/device/kl;Lcom/amazon/identity/auth/device/ej;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;Lcom/amazon/identity/auth/device/ej;)V
    .locals 9

    if-eqz p4, :cond_1

    .line 1723
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1727
    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$TokenError;->MISSING_TOKEN:Lcom/amazon/identity/auth/device/api/MAPError$TokenError;

    sget-object p5, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 p6, 0x0

    const-string p3, "Missing token"

    const-string v0, "Missing token"

    move-object p1, p4

    move-object p4, p5

    move-object p5, v0

    invoke-interface/range {p1 .. p6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 1735
    :cond_0
    new-instance v2, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v2, v0, p2}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;-><init>(Lcom/amazon/identity/auth/device/ed;Landroid/os/Bundle;)V

    .line 1736
    invoke-virtual {v2, p1}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->ea(Ljava/lang/String;)Z

    .line 1737
    invoke-virtual {v2, p5}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;)V

    const-string p1, "com.amazon.dcp.sso.AddAccount.options.AuthTokenClientContext"

    .line 1738
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1739
    invoke-virtual {v2, p1}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->aV(Ljava/lang/String;)V

    .line 1741
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/i;->c(Landroid/os/Bundle;)Z

    move-result p1

    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/i;->d(Landroid/os/Bundle;)Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;

    move-result-object p5

    invoke-virtual {v2, p1, p5}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->a(ZLcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;)V

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v8, p6

    .line 1743
    invoke-direct/range {v1 .. v8}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;Landroid/os/Bundle;Ljava/lang/String;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/i$a;ZLcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 1720
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "One or more arguments are null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/ej;)V
    .locals 9

    if-eqz p4, :cond_4

    .line 2189
    iget-object v1, p0, Lcom/amazon/identity/auth/device/i;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v1, p2}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->D(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2193
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 2194
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->NO_ACCOUNT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v5, 0x0

    const-string v4, "Account not currently registered"

    move-object v0, p4

    .line 2193
    invoke-interface/range {v0 .. v5}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 2201
    :cond_0
    new-instance v1, Lcom/amazon/identity/auth/device/lj;

    invoke-direct {v1}, Lcom/amazon/identity/auth/device/lj;-><init>()V

    if-eqz p1, :cond_1

    .line 2204
    invoke-virtual {v1, p1}, Lcom/amazon/identity/auth/device/lj;->ex(Ljava/lang/String;)Z

    .line 2207
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0, p3}, Lcom/amazon/identity/auth/device/iq;->x(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2210
    new-instance v4, Lcom/amazon/identity/auth/device/lz;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/amazon/identity/auth/device/lz;-><init>(Ljava/lang/String;)V

    const-string v0, "TodoItem.GET.NAMS"

    .line 2211
    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/lj;->et(Ljava/lang/String;)Z

    .line 2212
    invoke-virtual {v1, v4}, Lcom/amazon/identity/auth/device/lj;->c(Lcom/amazon/identity/auth/device/lz;)Z

    .line 2215
    :cond_2
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ib;->aA(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/lj;->m(Ljava/util/Map;)V

    .line 2216
    new-instance v6, Lcom/amazon/identity/auth/device/i$1;

    invoke-direct {v6, p0, p4, p2}, Lcom/amazon/identity/auth/device/i$1;-><init>(Lcom/amazon/identity/auth/device/i;Lcom/amazon/identity/auth/device/i$a;Ljava/lang/String;)V

    .line 2263
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/lj;->hq()Lcom/amazon/identity/auth/device/ma;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v4, 0x0

    .line 2266
    new-instance v5, Lcom/amazon/identity/auth/device/lk;

    invoke-direct {v5}, Lcom/amazon/identity/auth/device/lk;-><init>()V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/ma;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/br;Lcom/amazon/identity/kcpsdk/common/WebResponseParser;Lcom/amazon/identity/auth/device/kl;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 2284
    :cond_3
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v5, 0x0

    const-string v2, "Could not construct a updateCredentials request from this todo item"

    const-string v4, "Could not construct a updateCredentials request from this todo item"

    move-object v0, p4

    invoke-interface/range {v0 .. v5}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 2186
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "One or more null parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;)Z
    .locals 3

    const-string v0, "com.amazon.dcp.sso.AddAccount.options.AddAsSecondary"

    .line 17141
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "com.amazon.dcp.sso.AddAccount.options.AddAsPrimary"

    .line 18046
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 1086
    :cond_0
    sget-object v1, Lcom/amazon/identity/auth/device/api/RegistrationType;->FROM_ACCESS_TOKEN:Lcom/amazon/identity/auth/device/api/RegistrationType;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_LOGIN_CREDENTIALS:Lcom/amazon/identity/auth/device/api/RegistrationType;

    .line 1087
    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/amazon/identity/auth/device/api/RegistrationType;->REGISTER_DELEGATED_ACCOUNT:Lcom/amazon/identity/auth/device/api/RegistrationType;

    .line 1088
    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/amazon/identity/auth/device/api/RegistrationType;->FROM_AUTH_TOKEN:Lcom/amazon/identity/auth/device/api/RegistrationType;

    .line 1089
    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_DIRECTEDID_CREDENTIALS:Lcom/amazon/identity/auth/device/api/RegistrationType;

    .line 1090
    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_EXPLICIT_URL:Lcom/amazon/identity/auth/device/api/RegistrationType;

    .line 1091
    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_LINK_CODE:Lcom/amazon/identity/auth/device/api/RegistrationType;

    .line 1092
    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/amazon/identity/auth/device/api/RegistrationType;->FROM_AUTHORIZATION_CODE:Lcom/amazon/identity/auth/device/api/RegistrationType;

    .line 1093
    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 18141
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1096
    sget-object p2, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not currently supported to add secondary accounts "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1100
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/i;->b(Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/i;Lcom/amazon/identity/auth/device/ky;Lcom/amazon/identity/auth/device/j;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 23789
    sget-object p0, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    const-string p1, "Could not save credentials because no AccountRegistrarAuthenticator was given."

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 23793
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/ky;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 23795
    sget-object p0, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    const-string p1, "Was expecting anonymous credentials, but received account credentials"

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 23799
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->hN()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/amazon/identity/auth/device/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private a(Lcom/amazon/identity/auth/device/ky;)Z
    .locals 3

    .line 2827
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 2828
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 2829
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ky;->getDirectedId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2840
    :goto_0
    sget-object v0, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Is anonymous credentials received: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 102
    sget-object v0, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private b(Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "com.amazon.dcp.sso.AddAccount.options.AddAsPrimary"

    .line 19046
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1110
    sget-object p2, Lcom/amazon/identity/auth/device/api/RegistrationType;->FROM_ACCESS_TOKEN:Lcom/amazon/identity/auth/device/api/RegistrationType;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_LOGIN_CREDENTIALS:Lcom/amazon/identity/auth/device/api/RegistrationType;

    .line 1111
    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/amazon/identity/auth/device/api/RegistrationType;->FROM_AUTH_TOKEN:Lcom/amazon/identity/auth/device/api/RegistrationType;

    .line 1112
    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_DIRECTEDID_CREDENTIALS:Lcom/amazon/identity/auth/device/api/RegistrationType;

    .line 1113
    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_EXPLICIT_URL:Lcom/amazon/identity/auth/device/api/RegistrationType;

    .line 1114
    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/amazon/identity/auth/device/api/RegistrationType;->FROM_AUTHORIZATION_CODE:Lcom/amazon/identity/auth/device/api/RegistrationType;

    .line 1115
    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1117
    sget-object p2, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not currently supported to add primary accounts "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/i;Lcom/amazon/identity/auth/device/ky;)Z
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/ky;)Z

    move-result p0

    return p0
.end method

.method private c(Landroid/os/Bundle;)Z
    .locals 4

    const-string v0, "account_recover_attempt"

    .line 1126
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1128
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1130
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->n()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.amazon.dcp.sso.property.account.acctId"

    .line 1131
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    const-string v0, "com.amazon.dcp.sso.AddAccount.options.AddAsSecondary"

    .line 19141
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.amazon.dcp.sso.AddAccount.options.AddAsPrimary"

    .line 20046
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1135
    :cond_2
    iget-object p1, p0, Lcom/amazon/identity/auth/device/i;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    .line 1136
    invoke-virtual {p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->m()Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method private d(Landroid/os/Bundle;)Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;
    .locals 1

    const-string v0, "com.amazon.dcp.sso.AddAccount.options.AddAsPrimary"

    .line 21046
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1153
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;->PRIMARY:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;

    return-object p1

    :cond_0
    const-string v0, "com.amazon.dcp.sso.AddAccount.options.AddAsSecondary"

    .line 21141
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1157
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;->SECONDARY:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;

    return-object p1

    .line 1159
    :cond_1
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;->UNDEFINED:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;

    return-object p1
.end method

.method private h()Landroid/os/Bundle;
    .locals 3

    .line 2928
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ignore.platform.restrictions"

    const/4 v2, 0x1

    .line 2929
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private u(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2942
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/amazon/identity/auth/device/ib;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/i$a;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;
    .locals 16

    move-object/from16 v0, p4

    .line 1567
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_sign_in_full_endpoint"

    .line 1568
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "marketplace_bundle"

    .line 1569
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v2, "com.amazon.identity.ap.domain"

    .line 1570
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.amazon.dcp.sso.property.account.acctId"

    move-object/from16 v3, p1

    .line 1572
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "password"

    move-object/from16 v3, p2

    .line 1573
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "calling_package"

    .line 1575
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1574
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 1579
    :try_start_0
    iget-object v0, v2, Lcom/amazon/identity/auth/device/i;->v:Lcom/amazon/identity/auth/device/n;

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v3}, Lcom/amazon/identity/auth/device/n;->a(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1584
    invoke-static {v0}, Lcom/amazon/identity/auth/device/fl;->a(Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;)Lcom/amazon/identity/auth/device/fl;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1589
    sget-object v5, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->CORRUPTED_ACCOUNT:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v7, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1593
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/fl;->eC()Landroid/os/Bundle;

    move-result-object v9

    const-string v6, "The primary account has been corrupted. It should be recovered"

    const-string v8, "Primary account corrupted, should recover"

    move-object/from16 v4, p3

    .line 1589
    invoke-interface/range {v4 .. v9}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v3

    .line 1596
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v15

    .line 1599
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    :goto_0
    move-object v11, v0

    .line 1600
    invoke-virtual {v11}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v12

    const-string v0, "com.amazon.dcp.sso.ErrorCode"

    .line 1606
    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->fromValue(I)Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    move-result-object v13

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Error occurred while authenticating. Error code: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1608
    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->fromValue(I)Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v10, p3

    .line 1604
    invoke-interface/range {v10 .. v15}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v3
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/i$a;)Lcom/amazon/identity/auth/device/br;
    .locals 8

    const/4 v0, 0x0

    .line 2879
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/i;->as:Lcom/amazon/identity/auth/device/api/TokenManagement;

    .line 2881
    invoke-static {p2}, Lcom/amazon/identity/auth/device/api/TokenKeys;->getAdpTokenKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2882
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/i;->h()Landroid/os/Bundle;

    move-result-object v4

    sget-wide v5, Lcom/amazon/identity/auth/device/i;->aq:J

    move-object v2, p1

    .line 2880
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/api/TokenManagement;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)Ljava/lang/String;

    move-result-object v1

    .line 2884
    iget-object v2, p0, Lcom/amazon/identity/auth/device/i;->as:Lcom/amazon/identity/auth/device/api/TokenManagement;

    .line 2886
    invoke-static {p2}, Lcom/amazon/identity/auth/device/api/TokenKeys;->getPrivateKeyKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2887
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/i;->h()Landroid/os/Bundle;

    move-result-object v5

    sget-wide v6, Lcom/amazon/identity/auth/device/i;->aq:J

    move-object v3, p1

    .line 2885
    invoke-virtual/range {v2 .. v7}, Lcom/amazon/identity/auth/device/api/TokenManagement;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)Ljava/lang/String;

    move-result-object p1

    .line 2890
    new-instance p2, Lcom/amazon/identity/auth/device/bt;

    invoke-direct {p2, v1, p1}, Lcom/amazon/identity/auth/device/bt;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 2921
    sget-object p2, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Getting ADP Token failed because of TimeoutException: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_1
    move-exception p1

    .line 2916
    sget-object p2, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Getting ADP Token failed because of ExecutionException: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_2
    move-exception p1

    .line 2911
    sget-object p2, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Getting ADP Token failed because of InterruptedException: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_3
    move-exception p1

    .line 2894
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object p2

    .line 2895
    sget-object v1, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "Getting ADP Token failed because of callback error. Error Bundle: "

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 2896
    invoke-static {p1}, Lcom/amazon/identity/auth/device/fl;->a(Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;)Lcom/amazon/identity/auth/device/fl;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 2901
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    .line 2902
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v5, 0x0

    .line 2905
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fl;->eC()Landroid/os/Bundle;

    move-result-object v6

    move-object v1, p3

    .line 2901
    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method public a(Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/ej;)V
    .locals 15

    move-object v9, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    move-object/from16 v8, p5

    if-eqz v0, :cond_37

    if-eqz p3, :cond_0

    move-object/from16 v10, p3

    goto :goto_0

    .line 700
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v10, v1

    .line 702
    :goto_0
    iget-object v1, v9, Lcom/amazon/identity/auth/device/i;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->n()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "com.amazon.dcp.sso.AddAccount.options.AddAsPrimary"

    .line 5046
    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 706
    invoke-direct {p0, v0, v10}, Lcom/amazon/identity/auth/device/i;->b(Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 709
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    const-string v3, "Invalid registration type for registering multiple primary"

    const-string v5, "Invalid registration type for registering multiple primary"

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 714
    :cond_1
    iget-object v2, v9, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/mw;->bc(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 717
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    const-string v3, "Multiple primary account is not supported on 1P device"

    const-string v5, "Multiple primary account is not supported on 1P device"

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_2
    const-string v2, "account_recover_attempt"

    .line 722
    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "deregisterall_register_this_as_primary"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 725
    invoke-direct {p0, v0, v10}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 727
    invoke-interface {v7, v1}, Lcom/amazon/identity/auth/device/i$a;->t(Ljava/lang/String;)V

    return-void

    .line 5954
    :cond_3
    invoke-direct {p0, v0, v10}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;)Z

    .line 733
    sget-object v1, Lcom/amazon/identity/auth/device/i$5;->aH:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "Legacy secondary registration flow."

    const-string v2, "Secondary account already exists on the device"

    const-string/jumbo v3, "password"

    const-string v4, "com.amazon.dcp.sso.property.account.acctId"

    const-string v11, "com.amazon.dcp.sso.AddAccount.options.AccessToken"

    const/4 v12, 0x1

    const/4 v13, 0x0

    packed-switch v0, :pswitch_data_0

    .line 866
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    const-string v3, "Unrecognized or unsupported registration type."

    const-string v5, "Unrecognized or unsupported registration type."

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :pswitch_0
    const-string v0, "authorization_code"

    .line 16880
    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "code_verifier"

    .line 16881
    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "code_challenge_method"

    .line 16882
    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "client_id"

    .line 16883
    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 16888
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 16898
    :cond_4
    new-instance v4, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;

    iget-object v5, v9, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v4, v5, v10}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;-><init>(Lcom/amazon/identity/auth/device/ed;Landroid/os/Bundle;)V

    .line 16899
    invoke-virtual {v4, v0}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->el(Ljava/lang/String;)V

    .line 16900
    invoke-virtual {v4, v1}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->em(Ljava/lang/String;)V

    .line 16901
    invoke-virtual {v4, v2}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->en(Ljava/lang/String;)V

    .line 16902
    invoke-virtual {v4, v3}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->aW(Ljava/lang/String;)V

    .line 16904
    invoke-direct {p0, v10}, Lcom/amazon/identity/auth/device/i;->c(Landroid/os/Bundle;)Z

    move-result v0

    invoke-direct {p0, v10}, Lcom/amazon/identity/auth/device/i;->d(Landroid/os/Bundle;)Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->a(ZLcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;)V

    const/4 v0, 0x0

    const/4 v11, 0x1

    move-object v1, p0

    move-object v2, v4

    move-object v3, v10

    move-object v4, v0

    move-object/from16 v5, p4

    move-object/from16 v6, p1

    move v7, v11

    move-object/from16 v8, p5

    .line 16906
    invoke-direct/range {v1 .. v8}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;Landroid/os/Bundle;Ljava/lang/String;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/i$a;ZLcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 16890
    :cond_5
    :goto_1
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    const-string v3, "No valid authorization code/code verifier/code challenge method"

    const-string v5, "No valid authorization code/code verifier/code challenge method"

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 15914
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MAPRegisterAnonymousAccount:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v9, Lcom/amazon/identity/auth/device/i;->ar:Lcom/amazon/identity/auth/device/ea;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ea;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 15916
    new-instance v0, Lcom/amazon/identity/auth/device/kz;

    new-instance v1, Lcom/amazon/identity/auth/device/ks;

    invoke-direct {v1}, Lcom/amazon/identity/auth/device/ks;-><init>()V

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/kz;-><init>(Lcom/amazon/identity/auth/device/kv;)V

    .line 15918
    new-instance v2, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;

    iget-object v1, v9, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v2, v1, v0}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/kz;)V

    const-string v0, "account_cor"

    .line 15919
    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15920
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15924
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    const-string v3, "Must provide a valid Country of Residence (COR) to register with this option"

    const-string v5, "Must provide a valid COR to register with this option"

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 15931
    :cond_6
    iget-object v1, v9, Lcom/amazon/identity/auth/device/i;->ar:Lcom/amazon/identity/auth/device/ea;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ea;->cs()Z

    move-result v1

    if-nez v1, :cond_7

    new-array v1, v13, [Ljava/lang/String;

    const-string v3, "MAPRegisterAnonymousAccount_NonDHAPlatform"

    .line 15933
    invoke-static {v3, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 15936
    :cond_7
    new-instance v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$a;

    invoke-direct {v1}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$a;-><init>()V

    .line 15937
    invoke-virtual {v1, v0}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$a;->l(Ljava/lang/String;)V

    .line 15938
    invoke-virtual {v2, v1}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$a;)V

    const/4 v4, 0x0

    const/4 v0, 0x1

    move-object v1, p0

    move-object v3, v10

    move-object/from16 v5, p4

    move-object/from16 v6, p1

    move v7, v0

    move-object/from16 v8, p5

    .line 15941
    invoke-direct/range {v1 .. v8}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;Landroid/os/Bundle;Ljava/lang/String;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/i$a;ZLcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 14971
    :pswitch_2
    new-instance v2, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;

    iget-object v0, v9, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v2, v0, v10}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;-><init>(Lcom/amazon/identity/auth/device/ed;Landroid/os/Bundle;)V

    .line 14972
    invoke-virtual {v10, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ssoCode"

    .line 14973
    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "bootstrapHostDeviceType"

    .line 14974
    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bootstrapHostDSN"

    .line 14975
    invoke-virtual {v10, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_9

    if-nez v1, :cond_8

    goto :goto_2

    .line 14988
    :cond_8
    invoke-virtual {v2, v1}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->ep(Ljava/lang/String;)V

    .line 14989
    invoke-virtual {v2, v0}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->eq(Ljava/lang/String;)V

    .line 14990
    invoke-virtual {v2, v3, v4}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->at(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v0, 0x1

    move-object v1, p0

    move-object v3, v10

    move-object/from16 v5, p4

    move-object/from16 v6, p1

    move v7, v0

    move-object/from16 v8, p5

    .line 14993
    invoke-direct/range {v1 .. v8}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;Landroid/os/Bundle;Ljava/lang/String;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/i$a;ZLcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 14981
    :cond_9
    :goto_2
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    const-string v3, "Must provide an Amazon directedId and a valid SSO code to register with this option"

    const-string v5, "Must provide an Amazon directedId and a valid sso code to register with this option"

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 14949
    :pswitch_3
    new-instance v2, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;

    iget-object v0, v9, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v2, v0, v10}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;-><init>(Lcom/amazon/identity/auth/device/ed;Landroid/os/Bundle;)V

    const-string/jumbo v0, "pre_authorized_link_code"

    .line 14950
    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14951
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 14953
    invoke-virtual {v2, v0}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->ej(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    const-string v0, "cbl_public_code"

    .line 14957
    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cbl_private_code"

    .line 14958
    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14959
    invoke-virtual {v2, v0}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->ei(Ljava/lang/String;)V

    .line 14960
    invoke-virtual {v2, v1}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->ek(Ljava/lang/String;)V

    :goto_3
    const/4 v4, 0x0

    const/4 v0, 0x1

    move-object v1, p0

    move-object v3, v10

    move-object/from16 v5, p4

    move-object/from16 v6, p1

    move v7, v0

    move-object/from16 v8, p5

    .line 14963
    invoke-direct/range {v1 .. v8}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;Landroid/os/Bundle;Ljava/lang/String;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/i$a;ZLcom/amazon/identity/auth/device/ej;)V

    return-void

    :pswitch_4
    const-string v0, "com.amazon.dcp.sso.property.account.primary.acctId"

    .line 14001
    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14002
    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14004
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_4

    .line 14015
    :cond_b
    iget-object v2, v9, Lcom/amazon/identity/auth/device/i;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->o()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 14018
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->DEVICE_ALREADY_REGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->DEVICE_ALREADY_REGISTERED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    const-string v3, "The device is already registered. Can not add primary account."

    const-string v5, "The device is already registered. Can not add primary account."

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 14269
    :cond_c
    new-instance v2, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;

    iget-object v3, v9, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v2, v3, v10}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;-><init>(Lcom/amazon/identity/auth/device/ed;Landroid/os/Bundle;)V

    .line 14270
    sget-object v3, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;->Panda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;

    invoke-virtual {v2, v3}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;)V

    .line 14271
    invoke-virtual {v2, v0}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->dZ(Ljava/lang/String;)Z

    .line 14272
    invoke-virtual {v2, v1}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->dQ(Ljava/lang/String;)Z

    .line 14273
    invoke-virtual {v2}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->hD()V

    const/4 v4, 0x0

    const/4 v0, 0x1

    move-object v1, p0

    move-object v3, v10

    move-object/from16 v5, p4

    move-object/from16 v6, p1

    move v7, v0

    move-object/from16 v8, p5

    .line 14274
    invoke-direct/range {v1 .. v8}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;Landroid/os/Bundle;Ljava/lang/String;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/i$a;ZLcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 14007
    :cond_d
    :goto_4
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    const-string v3, "Must provide an Amazon directedId and password."

    const-string v5, "Must provide an Amazon directedId and password."

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 12038
    :pswitch_5
    invoke-virtual {v10, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12039
    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_1a

    if-nez v3, :cond_e

    goto/16 :goto_7

    .line 12051
    :cond_e
    sget-object v4, Lcom/amazon/identity/auth/device/features/Feature;->SecondaryRegistrationUsingPanda:Lcom/amazon/identity/auth/device/features/Feature;

    iget-object v5, v9, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v4, v5}, Lcom/amazon/identity/auth/device/features/Feature;->fetchValueNoCache(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 12053
    sget-object v1, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    const-string v4, "Migrated panda secondary registration flow."

    invoke-static {v1, v4}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v13, [Ljava/lang/String;

    const-string/jumbo v4, "map_panda_secondary_registration"

    .line 12055
    invoke-static {v4, v1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 12360
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_5

    .line 12372
    :cond_f
    iget-object v1, v9, Lcom/amazon/identity/auth/device/i;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->o()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 12376
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    const-string v3, "The device is not registered. Can not add secondary account."

    const-string v5, "The device is not registered. Can not add secondary account."

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 12384
    :cond_10
    iget-object v1, v9, Lcom/amazon/identity/auth/device/i;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->E(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 12386
    sget-object v1, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 12387
    invoke-interface {v7, v0}, Lcom/amazon/identity/auth/device/i$a;->t(Ljava/lang/String;)V

    return-void

    .line 12392
    :cond_11
    new-instance v2, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;

    iget-object v1, v9, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v2, v1, v10}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;-><init>(Lcom/amazon/identity/auth/device/ed;Landroid/os/Bundle;)V

    .line 12393
    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;->Panda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;

    invoke-virtual {v2, v1}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;)V

    .line 12394
    invoke-virtual {v2, v0}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->ed(Ljava/lang/String;)V

    .line 12395
    invoke-virtual {v2, v3}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->ee(Ljava/lang/String;)V

    .line 12396
    invoke-direct {p0, v10}, Lcom/amazon/identity/auth/device/i;->d(Landroid/os/Bundle;)Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;

    move-result-object v0

    invoke-virtual {v2, v12, v0}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->a(ZLcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;)V

    const/4 v4, 0x0

    const/4 v0, 0x1

    move-object v1, p0

    move-object v3, v10

    move-object/from16 v5, p4

    move-object/from16 v6, p1

    move v7, v0

    move-object/from16 v8, p5

    .line 12398
    invoke-direct/range {v1 .. v8}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;Landroid/os/Bundle;Ljava/lang/String;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/i$a;ZLcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 12364
    :cond_12
    :goto_5
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    const-string v3, "No login or password provided"

    const-string v5, "No login or password provided"

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 12065
    :cond_13
    sget-object v4, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v13, [Ljava/lang/String;

    const-string/jumbo v4, "map_legacy_secondary_registration"

    .line 12067
    invoke-static {v4, v1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 13289
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto/16 :goto_6

    .line 13301
    :cond_14
    iget-object v1, v9, Lcom/amazon/identity/auth/device/i;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->o()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 13305
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    const-string v3, "The device is not registered. Can not add secondary account."

    const-string v5, "The device is not registered. Can not add secondary account."

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 13313
    :cond_15
    iget-object v1, v9, Lcom/amazon/identity/auth/device/i;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->E(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 13315
    sget-object v1, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 13316
    invoke-interface {v7, v0}, Lcom/amazon/identity/auth/device/i$a;->t(Ljava/lang/String;)V

    return-void

    .line 13320
    :cond_16
    iget-object v1, v9, Lcom/amazon/identity/auth/device/i;->av:Lcom/amazon/identity/auth/device/co;

    sget-object v2, Lcom/amazon/identity/auth/device/features/Feature;->SplitRegistrationWithDirectedId:Lcom/amazon/identity/auth/device/features/Feature;

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/co;->a(Lcom/amazon/identity/auth/device/features/Feature;)Z

    move-result v1

    if-eqz v1, :cond_18

    move-object v1, p0

    move-object v2, v0

    move-object/from16 v4, p1

    move-object v5, v10

    move-object/from16 v6, p5

    .line 13323
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/i$a;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_17

    .line 13327
    sget-object v0, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    const-string v1, " null auth data was returned. registration is not successful."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13330
    :cond_17
    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;->ACCESS_TOKEN:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    move-object v1, p0

    move-object v3, v10

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/amazon/identity/auth/device/i;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;Lcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 13339
    :cond_18
    new-instance v2, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;

    iget-object v1, v9, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v2, v1, v10}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;-><init>(Lcom/amazon/identity/auth/device/ed;Landroid/os/Bundle;)V

    .line 13340
    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;->Panda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;

    invoke-virtual {v2, v1}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$RegisterEndpointEnum;)V

    .line 13341
    invoke-virtual {v2, v0}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->ed(Ljava/lang/String;)V

    .line 13342
    invoke-virtual {v2, v3}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->ee(Ljava/lang/String;)V

    .line 13343
    invoke-direct {p0, v10}, Lcom/amazon/identity/auth/device/i;->d(Landroid/os/Bundle;)Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;

    move-result-object v0

    invoke-virtual {v2, v12, v0}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->a(ZLcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;)V

    const/4 v4, 0x0

    const/4 v0, 0x1

    move-object v1, p0

    move-object v3, v10

    move-object/from16 v5, p4

    move-object/from16 v6, p1

    move v7, v0

    move-object/from16 v8, p5

    .line 13344
    invoke-direct/range {v1 .. v8}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;Landroid/os/Bundle;Ljava/lang/String;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/i$a;ZLcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 13293
    :cond_19
    :goto_6
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    const-string v3, "No login or password provided"

    const-string v5, "No login or password provided"

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 12044
    :cond_1a
    :goto_7
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    const-string v3, "Must provide an Amazon directedId and password to register with it"

    const-string v5, "Must provide an Amazon directedId and password to register with it"

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :pswitch_6
    if-eqz v10, :cond_21

    const-string v0, "calling_package"

    .line 11623
    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.dcp.sso.property.account.delegateeaccount"

    .line 11626
    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11628
    invoke-virtual {v10, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11630
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto/16 :goto_8

    .line 11645
    :cond_1b
    iget-object v1, v9, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/mw;->ba(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 11647
    sget-object v1, Lcom/amazon/identity/auth/device/i;->ap:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 11649
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "NonWhitelistAppRegisterDelegatedAccount_"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v13, [Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1c
    const-string/jumbo v1, "profile_mapping"

    .line 11653
    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1d

    .line 11655
    sget-object v1, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    const-string v3, "Profile id for delegated account on FireOS is missing!!!"

    invoke-static {v1, v3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 11656
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DelegatedAccountProfileIdMissing_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 11662
    :cond_1d
    iget-object v0, v9, Lcom/amazon/identity/auth/device/i;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0, v2}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->E(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 11664
    sget-object v0, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    const-string v1, "The delegated account already exists on the device"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 11665
    invoke-interface {v7, v2}, Lcom/amazon/identity/auth/device/i$a;->t(Ljava/lang/String;)V

    return-void

    :cond_1e
    const-string v0, "com.amazon.dcp.sso.AddAccount.options.AddAsSecondary"

    .line 11670
    invoke-virtual {v10, v0, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11691
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 11695
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    const-string v3, "Delegated directedId missing"

    const-string v5, "Delegated directedId missing"

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 11702
    :cond_1f
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;

    iget-object v1, v9, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v0, v1, v10}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;-><init>(Lcom/amazon/identity/auth/device/ed;Landroid/os/Bundle;)V

    .line 11703
    invoke-virtual {v0, v2}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->ed(Ljava/lang/String;)V

    .line 11704
    invoke-virtual {v0}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->hE()V

    .line 11705
    invoke-direct {p0, v10}, Lcom/amazon/identity/auth/device/i;->c(Landroid/os/Bundle;)Z

    move-result v1

    invoke-direct {p0, v10}, Lcom/amazon/identity/auth/device/i;->d(Landroid/os/Bundle;)Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->a(ZLcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;)V

    const/4 v4, 0x0

    const/4 v11, 0x1

    move-object v1, p0

    move-object v2, v0

    move-object v3, v10

    move-object/from16 v5, p4

    move-object/from16 v6, p1

    move v7, v11

    move-object/from16 v8, p5

    .line 11707
    invoke-direct/range {v1 .. v8}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;Landroid/os/Bundle;Ljava/lang/String;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/i$a;ZLcom/amazon/identity/auth/device/ej;)V

    return-void

    :cond_20
    :goto_8
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v13

    aput-object v1, v0, v12

    const-string v1, "Either the delegated account %s or the delegatee account %s is not valid."

    .line 11633
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 11637
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v3, v5

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 11621
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "One or more arguments are null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    const-string v0, "com.amazon.dcp.sso.AddAccount.options.URL"

    .line 839
    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, p4

    .line 840
    invoke-virtual {p0, v0, v5, v7, v8}, Lcom/amazon/identity/auth/device/i;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/ej;)V

    return-void

    :pswitch_8
    move-object/from16 v5, p4

    const-string v0, "adp_token"

    .line 10759
    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "adp_private_key"

    .line 10760
    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Device Serial Number"

    .line 10761
    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 10763
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto/16 :goto_a

    .line 10779
    :cond_22
    iget-object v2, v9, Lcom/amazon/identity/auth/device/i;->ar:Lcom/amazon/identity/auth/device/ea;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/ea;->getDeviceType()Ljava/lang/String;

    move-result-object v10

    .line 10782
    new-instance v11, Lcom/amazon/identity/auth/device/lj;

    invoke-direct {v11}, Lcom/amazon/identity/auth/device/lj;-><init>()V

    .line 10784
    new-instance v14, Lcom/amazon/identity/auth/device/lh;

    new-instance v2, Lcom/amazon/identity/auth/device/bt;

    invoke-direct {v2, v0, v1}, Lcom/amazon/identity/auth/device/bt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v14, v2}, Lcom/amazon/identity/auth/device/lh;-><init>(Lcom/amazon/identity/auth/device/kn;)V

    const/4 v4, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object v5, v10

    .line 10787
    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/kl;

    move-result-object v4

    .line 10789
    invoke-virtual {v11}, Lcom/amazon/identity/auth/device/lj;->hq()Lcom/amazon/identity/auth/device/ma;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 10796
    :try_start_0
    invoke-virtual {v14, v2}, Lcom/amazon/identity/auth/device/lh;->b(Lcom/amazon/identity/auth/device/ma;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v12, v0

    goto :goto_9

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 10800
    sget-object v0, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    const-string v3, "Error occurred while trying to sign request with ADP token. Please make sure ADP token and private key are valid."

    invoke-static {v0, v3, v1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9
    if-eqz v12, :cond_23

    .line 10804
    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v0

    if-nez v0, :cond_23

    .line 10808
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    .line 10809
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    .line 10808
    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 10817
    :cond_23
    invoke-virtual {v2, v13}, Lcom/amazon/identity/auth/device/ma;->m(Z)V

    .line 10819
    new-instance v3, Lcom/amazon/identity/auth/device/lk;

    invoke-direct {v3}, Lcom/amazon/identity/auth/device/lk;-><init>()V

    move-object v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/kcpsdk/common/WebResponseParser;Lcom/amazon/identity/auth/device/kl;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 10826
    :cond_24
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    const-string v3, "Could not construct a register with ADP token request"

    const-string v5, "Could not construct a register with ADP token request"

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 10769
    :cond_25
    :goto_a
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    const-string v3, "One of the following information is missing from BootstrapSSO with ADP token request: 1- ADP Token, 2- Private key, 3- DSN"

    const-string v5, "One of the following information is missing from BootstrapSSO with ADP token request: 1- ADP Token, 2- Private key, 3- DSN"

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :pswitch_9
    move-object/from16 v5, p4

    .line 814
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_26

    .line 819
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$TokenError;->MISSING_TOKEN:Lcom/amazon/identity/auth/device/api/MAPError$TokenError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    const-string v3, "Must provide access token to register with it"

    const-string v5, "Must provide access token to register with it"

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 827
    :cond_26
    sget-object v6, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;->ACCESS_TOKEN:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    move-object v1, p0

    move-object v3, v10

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/amazon/identity/auth/device/i;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;Lcom/amazon/identity/auth/device/ej;)V

    return-void

    :pswitch_a
    move-object/from16 v5, p4

    const-string v0, "com.amazon.dcp.sso.AddAccount.options.AuthToken"

    .line 777
    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "com.amazon.dcp.sso.AddAccount.options.AuthTokenClientContext"

    .line 778
    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 779
    invoke-static {v10}, Lcom/amazon/identity/auth/device/ho;->E(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 780
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 781
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_b

    .line 794
    :cond_27
    iget-object v0, v9, Lcom/amazon/identity/auth/device/i;->av:Lcom/amazon/identity/auth/device/co;

    sget-object v1, Lcom/amazon/identity/auth/device/features/Feature;->RegistrationViaAuthToken:Lcom/amazon/identity/auth/device/features/Feature;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/co;->a(Lcom/amazon/identity/auth/device/features/Feature;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 798
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->UNSUPPORTED_OPERATION:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    const-string v3, "Registration via auth token is not supported on this platform"

    const-string v5, "Registration via auth token is not supported on this platform"

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 806
    :cond_28
    sget-object v6, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;->AUTH_TOKEN:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    move-object v1, p0

    move-object v3, v10

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/amazon/identity/auth/device/i;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;Lcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 785
    :cond_29
    :goto_b
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    const-string v3, "Must provide the auth token, the auth token context, and the auth token domain to register with it"

    const-string v5, "Must provide the auth token, the auth token context, and the auth token domain to register with it"

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :pswitch_b
    move-object/from16 v5, p4

    const-string v0, "com.amazon.dcp.sso.AddAccount.options.ATMain"

    .line 756
    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2a

    .line 761
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$TokenError;->MISSING_TOKEN:Lcom/amazon/identity/auth/device/api/MAPError$TokenError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    const-string v3, "Must provide at-main to register with it"

    const-string v5, "Must provide at-main to register with it"

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 769
    :cond_2a
    sget-object v6, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;->AT_MAIN:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    move-object v1, p0

    move-object v3, v10

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/amazon/identity/auth/device/i;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;Lcom/amazon/identity/auth/device/ej;)V

    return-void

    :pswitch_c
    move-object/from16 v5, p4

    .line 9069
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/i;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v6

    .line 9070
    iget-object v0, v9, Lcom/amazon/identity/auth/device/i;->ar:Lcom/amazon/identity/auth/device/ea;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ea;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    .line 9071
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/i;->e()Ljava/lang/String;

    move-result-object v1

    .line 9073
    invoke-static {v1}, Lcom/amazon/identity/auth/device/jd;->dC(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 9075
    sget-object v0, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_DEVICE_SECRET:Lcom/amazon/identity/auth/device/api/RegistrationType;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->a(Lcom/amazon/identity/auth/device/api/RegistrationType;)V

    .line 9079
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->MISSING_DEVICE_SECRET:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_SECRET:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    const-string v3, "No device secret for registration"

    const-string v5, "No device secret for registration"

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 9087
    :cond_2b
    new-instance v10, Lcom/amazon/identity/auth/device/lb;

    invoke-direct {v10}, Lcom/amazon/identity/auth/device/lb;-><init>()V

    .line 9088
    invoke-virtual {v10, v1}, Lcom/amazon/identity/auth/device/ld;->eu(Ljava/lang/String;)Z

    .line 9089
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/amazon/identity/auth/device/lb;->es(Ljava/lang/String;)Z

    .line 9091
    invoke-virtual {v10, v0}, Lcom/amazon/identity/auth/device/ld;->dR(Ljava/lang/String;)Z

    .line 9092
    invoke-virtual {v10, v6}, Lcom/amazon/identity/auth/device/ld;->dS(Ljava/lang/String;)Z

    .line 9094
    iget-object v1, v9, Lcom/amazon/identity/auth/device/i;->ar:Lcom/amazon/identity/auth/device/ea;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ea;->dQ()Lcom/amazon/identity/auth/device/lz;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/amazon/identity/auth/device/lb;->b(Lcom/amazon/identity/auth/device/lz;)Z

    .line 9096
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/i;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/amazon/identity/auth/device/lb;->eg(Ljava/lang/String;)V

    const-string v1, "NoState"

    .line 9098
    invoke-virtual {v10, v1}, Lcom/amazon/identity/auth/device/lb;->et(Ljava/lang/String;)Z

    .line 10023
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/identity/auth/device/lw;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 9100
    invoke-virtual {v10, v1}, Lcom/amazon/identity/auth/device/lb;->dX(Ljava/lang/String;)Z

    .line 9101
    iget-object v1, v9, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/ib;->aA(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/amazon/identity/auth/device/lb;->m(Ljava/util/Map;)V

    const/4 v4, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object v5, v0

    .line 9104
    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/kl;

    move-result-object v4

    .line 9107
    invoke-virtual {v10, v8}, Lcom/amazon/identity/auth/device/ld;->e(Lcom/amazon/identity/auth/device/ej;)V

    .line 9110
    invoke-virtual {v10}, Lcom/amazon/identity/auth/device/lb;->hq()Lcom/amazon/identity/auth/device/ma;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 9113
    new-instance v3, Lcom/amazon/identity/auth/device/la;

    invoke-direct {v3}, Lcom/amazon/identity/auth/device/la;-><init>()V

    move-object v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/kcpsdk/common/WebResponseParser;Lcom/amazon/identity/auth/device/kl;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 9120
    :cond_2c
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    const-string v3, "Could not construct a valid pre-registration request"

    const-string v5, "Could not construct a valid pre-registration request"

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :pswitch_d
    move-object/from16 v5, p4

    const-string v0, "authAccount"

    .line 736
    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 737
    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_36

    if-nez v3, :cond_2d

    goto/16 :goto_d

    .line 6213
    :cond_2d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_35

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2e

    goto/16 :goto_c

    .line 6225
    :cond_2e
    invoke-direct {p0, v10}, Lcom/amazon/identity/auth/device/i;->c(Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_31

    .line 6408
    iget-object v1, v9, Lcom/amazon/identity/auth/device/i;->av:Lcom/amazon/identity/auth/device/co;

    sget-object v2, Lcom/amazon/identity/auth/device/features/Feature;->SplitRegistration:Lcom/amazon/identity/auth/device/features/Feature;

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/co;->a(Lcom/amazon/identity/auth/device/features/Feature;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 6410
    invoke-direct {p0, v7, v10, v8}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/i$a;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 6417
    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6419
    sget-object v6, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;->ACCESS_TOKEN:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    move-object v1, p0

    move-object v3, v10

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/amazon/identity/auth/device/i;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;Lcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 6428
    :cond_2f
    new-instance v2, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;

    iget-object v1, v9, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v2, v1, v10}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;-><init>(Lcom/amazon/identity/auth/device/ed;Landroid/os/Bundle;)V

    .line 6429
    invoke-virtual {v2, v0}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->dY(Ljava/lang/String;)Z

    .line 6430
    invoke-virtual {v2, v3}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->dQ(Ljava/lang/String;)Z

    const/4 v11, 0x0

    move-object v1, p0

    move-object v3, v10

    move-object v4, v0

    move-object/from16 v5, p4

    move-object/from16 v6, p1

    move v7, v11

    move-object/from16 v8, p5

    .line 6841
    invoke-direct/range {v1 .. v8}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;Landroid/os/Bundle;Ljava/lang/String;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/i$a;ZLcom/amazon/identity/auth/device/ej;)V

    :cond_30
    return-void

    .line 6238
    :cond_31
    sget-object v0, Lcom/amazon/identity/auth/device/features/Feature;->SecondaryRegistrationUsingPanda:Lcom/amazon/identity/auth/device/features/Feature;

    iget-object v3, v9, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v0, v3}, Lcom/amazon/identity/auth/device/features/Feature;->fetchValueNoCache(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 6240
    sget-object v0, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    const-string v1, "Migrated secondary panda registration flow."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 7476
    new-instance v2, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;

    iget-object v0, v9, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v2, v0, v10}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;-><init>(Lcom/amazon/identity/auth/device/ed;Landroid/os/Bundle;)V

    .line 7477
    invoke-direct {p0, v10}, Lcom/amazon/identity/auth/device/i;->d(Landroid/os/Bundle;)Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;

    move-result-object v0

    invoke-virtual {v2, v12, v0}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;->a(ZLcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;)V

    const/4 v4, 0x0

    const/4 v0, 0x1

    move-object v1, p0

    move-object v3, v10

    move-object/from16 v5, p4

    move-object/from16 v6, p1

    move v7, v0

    move-object/from16 v8, p5

    .line 7478
    invoke-direct/range {v1 .. v8}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;Landroid/os/Bundle;Ljava/lang/String;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/i$a;ZLcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 6248
    :cond_32
    sget-object v0, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 8440
    invoke-direct {p0, v7, v10, v8}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/i$a;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 8447
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8449
    iget-object v3, v9, Lcom/amazon/identity/auth/device/i;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v3, v1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->E(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 8451
    sget-object v0, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 8452
    invoke-interface {v7, v1}, Lcom/amazon/identity/auth/device/i$a;->t(Ljava/lang/String;)V

    return-void

    .line 8456
    :cond_33
    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8458
    sget-object v6, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;->ACCESS_TOKEN:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    move-object v1, p0

    move-object v3, v10

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/amazon/identity/auth/device/i;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;Lcom/amazon/identity/auth/device/ej;)V

    :cond_34
    return-void

    .line 6217
    :cond_35
    :goto_c
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    const-string v3, "No login or password provided"

    const-string v5, "No login or password provided"

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 742
    :cond_36
    :goto_d
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x0

    const-string v3, "Must provide an Amazon login and password to register with it"

    const-string v5, "Must provide an Amazon login and password to register with it"

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 697
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No registration type set. Could not register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/amazon/identity/auth/device/i$a;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V
    .locals 6

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    const-string v0, "com.amazon.dcp.sso.AddAccount.options.URL"

    .line 1173
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move-object v1, p3

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v4, p1

    move-object v5, p4

    .line 1175
    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 1170
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No response set. Could not update credentials"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/amazon/identity/auth/device/i$a;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V
    .locals 6

    if-nez p3, :cond_0

    .line 1192
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/i$a;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V

    return-void

    :cond_0
    if-eqz p4, :cond_1

    const-string v0, "com.amazon.dcp.sso.AddAccount.options.URL"

    .line 1196
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    move-object v1, p4

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p5

    .line 1197
    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/ej;)V

    return-void
.end method

.method public a(Lcom/amazon/identity/auth/device/i$a;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/br;ZLcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)V
    .locals 9

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    .line 666
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->DEREGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->DEREGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v2, 0x0

    const-string v3, "Deregister failed because an account was not specified."

    const-string v4, "Deregister failed because an account was not specified."

    move-object p2, v0

    move-object p3, v3

    move-object p4, v1

    move-object p5, v4

    move-object p6, v2

    invoke-interface/range {p1 .. p6}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 3307
    new-instance v7, Lcom/amazon/identity/auth/device/kg;

    invoke-direct {v7}, Lcom/amazon/identity/auth/device/kg;-><init>()V

    .line 3308
    invoke-virtual {v7}, Lcom/amazon/identity/auth/device/kg;->hp()V

    move v3, p5

    .line 3309
    invoke-virtual {v7, p5}, Lcom/amazon/identity/auth/device/kg;->j(Z)V

    move-object/from16 v0, p8

    .line 3310
    invoke-virtual {v7, v0}, Lcom/amazon/identity/auth/device/kg;->O(Landroid/os/Bundle;)V

    .line 3312
    new-instance v8, Lcom/amazon/identity/auth/device/i$2;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v4, p6

    move-object/from16 v5, p7

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/amazon/identity/auth/device/i$2;-><init>(Lcom/amazon/identity/auth/device/i;Lcom/amazon/identity/auth/device/i$a;ZLcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;)V

    .line 3419
    invoke-virtual {v7}, Lcom/amazon/identity/auth/device/kg;->hq()Lcom/amazon/identity/auth/device/ma;

    move-result-object v1

    new-instance v5, Lcom/amazon/identity/auth/device/ki;

    invoke-direct {v5}, Lcom/amazon/identity/auth/device/ki;-><init>()V

    move-object v0, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v6, v8

    move-object v7, p1

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/ma;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/br;Lcom/amazon/identity/kcpsdk/common/WebResponseParser;Lcom/amazon/identity/auth/device/kl;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 3303
    :cond_1
    sget-object v0, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    const-string v1, "deregister passed null account"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 3304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The account cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No response set. Could not deregister"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/ej;)V
    .locals 9

    .line 2433
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/i;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2435
    sget-object p1, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2436
    invoke-interface {p2, p1, p1, p1}, Lcom/amazon/identity/auth/device/i$a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 2440
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    const-string v1, "Attempting to get anonymous credentials"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 2442
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/i;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 2443
    iget-object v1, p0, Lcom/amazon/identity/auth/device/i;->ar:Lcom/amazon/identity/auth/device/ea;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ea;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    .line 2445
    new-instance v2, Lcom/amazon/identity/auth/device/lb;

    invoke-direct {v2}, Lcom/amazon/identity/auth/device/lb;-><init>()V

    .line 2446
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/i;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/identity/auth/device/ld;->eu(Ljava/lang/String;)Z

    .line 2447
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/i;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/identity/auth/device/lb;->es(Ljava/lang/String;)Z

    .line 2448
    invoke-virtual {v2, v1}, Lcom/amazon/identity/auth/device/ld;->dR(Ljava/lang/String;)Z

    .line 2449
    invoke-virtual {v2, v0}, Lcom/amazon/identity/auth/device/ld;->dS(Ljava/lang/String;)Z

    .line 2450
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i;->ar:Lcom/amazon/identity/auth/device/ea;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ea;->dQ()Lcom/amazon/identity/auth/device/lz;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/identity/auth/device/lb;->b(Lcom/amazon/identity/auth/device/lz;)Z

    .line 2451
    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/i;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/identity/auth/device/lb;->eg(Ljava/lang/String;)V

    .line 22023
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/lw;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2452
    invoke-virtual {v2, v0}, Lcom/amazon/identity/auth/device/lb;->dX(Ljava/lang/String;)Z

    .line 2454
    new-instance v0, Lcom/amazon/identity/auth/device/i$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazon/identity/auth/device/i$3;-><init>(Lcom/amazon/identity/auth/device/i;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/j;)V

    .line 2488
    invoke-virtual {v2, p3}, Lcom/amazon/identity/auth/device/ld;->e(Lcom/amazon/identity/auth/device/ej;)V

    .line 2490
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/lb;->hq()Lcom/amazon/identity/auth/device/ma;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2493
    invoke-virtual {p0, v2, v0, p3}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/ld;Lcom/amazon/identity/auth/device/kl;Lcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 2500
    :cond_1
    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v6, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v8, 0x0

    const-string v5, "Could not construct a valid pre-registration request to get anonymous credentials"

    const-string v7, "Could not construct a valid pre-registration request to get anonymous credentials"

    move-object v3, p2

    invoke-interface/range {v3 .. v8}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected a(Lcom/amazon/identity/auth/device/ld;Lcom/amazon/identity/auth/device/kl;Lcom/amazon/identity/auth/device/ej;)V
    .locals 4

    .line 2676
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->n()Ljava/lang/String;

    move-result-object v0

    .line 2677
    iget-object v1, p0, Lcom/amazon/identity/auth/device/i;->au:Lcom/amazon/identity/auth/device/cz;

    invoke-virtual {v1, v0, p3}, Lcom/amazon/identity/auth/device/cz;->d(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/km;

    move-result-object p3

    .line 2683
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ld;->hq()Lcom/amazon/identity/auth/device/ma;

    move-result-object v0

    new-instance v1, Lcom/amazon/identity/auth/device/la;

    invoke-direct {v1}, Lcom/amazon/identity/auth/device/la;-><init>()V

    invoke-interface {p3, v0, v1}, Lcom/amazon/identity/auth/device/km;->a(Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/auth/device/ju;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/ky;

    if-eqz v0, :cond_1

    .line 2691
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ky;->ia()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2694
    sget-object v0, Lcom/amazon/identity/auth/device/i;->TAG:Ljava/lang/String;

    const-string v2, "The server timestamp is "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const-string v0, "ClockSkewHappened"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 2695
    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2696
    invoke-virtual {p1, v1}, Lcom/amazon/identity/auth/device/ld;->ev(Ljava/lang/String;)V

    .line 2698
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ld;->hq()Lcom/amazon/identity/auth/device/ma;

    move-result-object p1

    new-instance v0, Lcom/amazon/identity/auth/device/la;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/la;-><init>()V

    invoke-interface {p3, p1, v0}, Lcom/amazon/identity/auth/device/km;->a(Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/auth/device/ju;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/amazon/identity/auth/device/ky;

    .line 2702
    :cond_0
    invoke-interface {p2, v0}, Lcom/amazon/identity/auth/device/kl;->a(Ljava/lang/Object;)V

    return-void

    .line 2707
    :cond_1
    invoke-interface {p2}, Lcom/amazon/identity/auth/device/kl;->onAuthenticationFailed()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/amazon/identity/kcpsdk/auth/ParseErrorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2722
    :catch_0
    invoke-interface {p2}, Lcom/amazon/identity/auth/device/kl;->j()V

    return-void

    .line 2718
    :catch_1
    invoke-interface {p2}, Lcom/amazon/identity/auth/device/kl;->k()V

    return-void

    .line 2714
    :catch_2
    invoke-interface {p2}, Lcom/amazon/identity/auth/device/kl;->j()V

    return-void
.end method

.method protected a(Lcom/amazon/identity/auth/device/ma;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/br;Lcom/amazon/identity/kcpsdk/common/WebResponseParser;Lcom/amazon/identity/auth/device/kl;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/ej;)V
    .locals 0

    if-nez p3, :cond_0

    .line 2766
    iget-object p3, p0, Lcom/amazon/identity/auth/device/i;->au:Lcom/amazon/identity/auth/device/cz;

    invoke-virtual {p3, p2, p8}, Lcom/amazon/identity/auth/device/cz;->d(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/km;

    move-result-object p2

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    .line 2773
    invoke-virtual {p0, p2, p3, p7}, Lcom/amazon/identity/auth/device/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/i$a;)Lcom/amazon/identity/auth/device/br;

    move-result-object p4

    .line 2776
    :cond_1
    iget-object p2, p0, Lcom/amazon/identity/auth/device/i;->au:Lcom/amazon/identity/auth/device/cz;

    invoke-virtual {p2, p4, p8}, Lcom/amazon/identity/auth/device/cz;->b(Lcom/amazon/identity/auth/device/br;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/km;

    move-result-object p2

    .line 2779
    :goto_0
    invoke-interface {p2, p1, p5, p6}, Lcom/amazon/identity/auth/device/km;->b(Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/kcpsdk/common/WebResponseParser;Lcom/amazon/identity/auth/device/kl;)Lcom/amazon/identity/auth/device/kk;

    move-result-object p1

    .line 2781
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/kk;->cC()V

    return-void
.end method

.method a(Ljava/lang/String;Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/ej;)V
    .locals 7

    if-eqz p3, :cond_2

    .line 2139
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/i;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v5

    .line 2140
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i;->ar:Lcom/amazon/identity/auth/device/ea;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ea;->getDeviceType()Ljava/lang/String;

    move-result-object v4

    .line 2142
    new-instance v6, Lcom/amazon/identity/auth/device/lj;

    invoke-direct {v6}, Lcom/amazon/identity/auth/device/lj;-><init>()V

    .line 2145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2147
    invoke-virtual {v6, p1}, Lcom/amazon/identity/auth/device/lj;->ex(Ljava/lang/String;)Z

    .line 2149
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ib;->aA(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amazon/identity/auth/device/lj;->m(Ljava/util/Map;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    .line 2157
    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/kl;

    move-result-object v3

    .line 2159
    invoke-virtual {v6}, Lcom/amazon/identity/auth/device/lj;->hq()Lcom/amazon/identity/auth/device/ma;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2163
    new-instance v2, Lcom/amazon/identity/auth/device/la;

    invoke-direct {v2}, Lcom/amazon/identity/auth/device/la;-><init>()V

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/kcpsdk/common/WebResponseParser;Lcom/amazon/identity/auth/device/kl;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 2170
    :cond_1
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v5, 0x0

    const-string v2, "Could not construct a registration request from this todo item"

    const-string v4, "Could not construct a registration request from this todo item"

    move-object v0, p3

    invoke-interface/range {v0 .. v5}, Lcom/amazon/identity/auth/device/i$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 2136
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .line 2806
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i;->ar:Lcom/amazon/identity/auth/device/ea;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ea;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .line 2817
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i;->ar:Lcom/amazon/identity/auth/device/ea;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ea;->cr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected g()Z
    .locals 1

    .line 2822
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i;->ar:Lcom/amazon/identity/auth/device/ea;

    .line 22040
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ea;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jd;->dC(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getDeviceSerialNumber()Ljava/lang/String;
    .locals 1

    .line 2811
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i;->ar:Lcom/amazon/identity/auth/device/ea;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ea;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
