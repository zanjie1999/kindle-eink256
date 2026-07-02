.class public Lcom/amazon/identity/auth/device/av;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/as;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.av"


# instance fields
.field private final A:Lcom/amazon/identity/auth/device/ar;

.field private final dB:Lcom/amazon/identity/auth/device/aq;

.field private final dI:Lcom/amazon/identity/auth/device/gi;

.field private final dJ:Lcom/amazon/identity/auth/device/f;

.field private final dK:Lcom/amazon/identity/auth/device/aw;

.field private final o:Lcom/amazon/identity/auth/device/ed;

.field private final w:Lcom/amazon/identity/auth/device/gc;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;)V
    .locals 1

    .line 61
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ed;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/av;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/gc;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/gc;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/amazon/identity/auth/device/av;->o:Lcom/amazon/identity/auth/device/ed;

    .line 67
    iput-object p2, p0, Lcom/amazon/identity/auth/device/av;->w:Lcom/amazon/identity/auth/device/gc;

    .line 68
    new-instance p2, Lcom/amazon/identity/auth/device/aq;

    invoke-direct {p2, p1}, Lcom/amazon/identity/auth/device/aq;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amazon/identity/auth/device/av;->dB:Lcom/amazon/identity/auth/device/aq;

    .line 69
    iget-object p1, p0, Lcom/amazon/identity/auth/device/av;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/ar;->h(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ar;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/av;->A:Lcom/amazon/identity/auth/device/ar;

    .line 71
    new-instance p1, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    iget-object p2, p0, Lcom/amazon/identity/auth/device/av;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p1, p2}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    .line 73
    new-instance p2, Lcom/amazon/identity/auth/device/gi;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/av;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p2, v0, p1}, Lcom/amazon/identity/auth/device/gi;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/gc;)V

    iput-object p2, p0, Lcom/amazon/identity/auth/device/av;->dI:Lcom/amazon/identity/auth/device/gi;

    .line 75
    iget-object p1, p0, Lcom/amazon/identity/auth/device/av;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/g;->a(Landroid/content/Context;)Lcom/amazon/identity/auth/device/f;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/av;->dJ:Lcom/amazon/identity/auth/device/f;

    .line 77
    new-instance p1, Lcom/amazon/identity/auth/device/aw;

    iget-object p2, p0, Lcom/amazon/identity/auth/device/av;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p1, p2}, Lcom/amazon/identity/auth/device/aw;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/av;->dK:Lcom/amazon/identity/auth/device/aw;

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/av;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/av;->ar(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;)Landroid/os/Bundle;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/amazon/identity/auth/device/av;->dI:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->gC()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gi;->G(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/av;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/av;)Lcom/amazon/identity/auth/device/ed;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/amazon/identity/auth/device/av;->o:Lcom/amazon/identity/auth/device/ed;

    return-object p0
.end method

.method private a(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 468
    sget-object v0, Lcom/amazon/identity/auth/device/av;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Callback with value empty: %b"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-direct {p0, p2, p3}, Lcom/amazon/identity/auth/device/av;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/av;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V
    .locals 0

    .line 7506
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/av;->as(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/av;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;)V
    .locals 0

    .line 6597
    iget-object p0, p0, Lcom/amazon/identity/auth/device/av;->dI:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/ij;->gC()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/amazon/identity/auth/device/gi;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6598
    invoke-static {p1, p0}, Lcom/amazon/identity/auth/device/hc;->b(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/av;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Ljava/util/EnumSet;Lcom/amazon/identity/auth/device/ej;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;
        }
    .end annotation

    .line 5361
    sget-object v0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;->ForceRefresh:Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;

    invoke-virtual {p4, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-direct {p0, p2, p3, p5}, Lcom/amazon/identity/auth/device/av;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Lcom/amazon/identity/auth/device/ej;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 5531
    sget-object p0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const/4 p2, 0x1

    const-string p3, "Was unable to successfully refresh the credentials on a platform that supports it"

    invoke-static {p0, p3, p2, p3}, Lcom/amazon/identity/auth/device/am;->e(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 5511
    invoke-interface {p1, p0}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void

    .line 5368
    :cond_0
    iget-object p4, p0, Lcom/amazon/identity/auth/device/av;->dI:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/ij;->gC()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p2, p5}, Lcom/amazon/identity/auth/device/gi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    if-nez p4, :cond_2

    .line 5370
    iget-object v0, p0, Lcom/amazon/identity/auth/device/av;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mw;->aX(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6380
    iget-object p4, p0, Lcom/amazon/identity/auth/device/av;->o:Lcom/amazon/identity/auth/device/ed;

    .line 6381
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.kindle"

    .line 6380
    invoke-static {p4, v0, v1}, Lcom/amazon/identity/auth/device/ib;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 6383
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object p3

    const-string p4, "com.amazon.dcp.sso.property.deviceemail"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 6385
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/av;->aq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object p4, p2

    goto :goto_0

    :cond_1
    move-object p4, p5

    .line 5375
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p4, p5}, Lcom/amazon/identity/auth/device/av;->a(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/av;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Lcom/amazon/identity/auth/device/ej;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;
        }
    .end annotation

    .line 5319
    sget-object v0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;->ForceRefresh:Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;

    invoke-virtual {p4, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_0

    .line 5321
    sget-object p4, Lcom/amazon/identity/auth/device/av;->TAG:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p3, v2, v0

    const-string v3, "Forcing a refresh of attribute %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 5322
    iget-object p4, p0, Lcom/amazon/identity/auth/device/av;->A:Lcom/amazon/identity/auth/device/ar;

    invoke-virtual {p4, p2, p5}, Lcom/amazon/identity/auth/device/ar;->b(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/attributes/CORPFMResponse;

    move-result-object p2

    goto :goto_0

    .line 5326
    :cond_0
    iget-object p4, p0, Lcom/amazon/identity/auth/device/av;->A:Lcom/amazon/identity/auth/device/ar;

    invoke-virtual {p4, p2, p5}, Lcom/amazon/identity/auth/device/ar;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/attributes/CORPFMResponse;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_1

    .line 5331
    invoke-direct {p0, p3}, Lcom/amazon/identity/auth/device/av;->ar(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 5333
    invoke-interface {p1, p0}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void

    :cond_1
    const-string p4, "COR"

    .line 5337
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 5340
    invoke-virtual {p2}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->ai()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/identity/auth/device/av;->dB:Lcom/amazon/identity/auth/device/aq;

    .line 5341
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/aq;->as()Ljava/lang/String;

    move-result-object p3

    .line 5339
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/av;->a(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p4, "PFM"

    .line 5344
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 5347
    invoke-virtual {p2}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->ak()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/identity/auth/device/av;->dB:Lcom/amazon/identity/auth/device/aq;

    .line 5348
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/aq;->at()Ljava/lang/String;

    move-result-object p3

    .line 5346
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/av;->a(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5352
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p3, p1, v0

    const-string p2, "Key %s not recognized as COR/PFM value"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Lcom/amazon/identity/auth/device/ej;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/amazon/identity/auth/device/av;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mw;->bh(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/identity/auth/device/av;->o:Lcom/amazon/identity/auth/device/ed;

    .line 552
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/ib;->q(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    sget-object p1, Lcom/amazon/identity/auth/device/av;->TAG:Ljava/lang/String;

    new-array p3, v2, [Ljava/lang/Object;

    .line 556
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->gC()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v1

    const-string p2, "Forcing a refresh of attribute %s is not supported on the platform before Otter_Congo."

    .line 555
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 554
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 560
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/av;->TAG:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->gC()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "Forcing a refresh of attribute %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :try_start_0
    iget-object v4, p0, Lcom/amazon/identity/auth/device/av;->dJ:Lcom/amazon/identity/auth/device/f;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    move-object v6, p2

    move-object v9, p3

    .line 565
    invoke-interface/range {v4 .. v9}, Lcom/amazon/identity/auth/device/f;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    .line 567
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/api/MAPFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return v2

    :cond_1
    return v1

    :catch_0
    move-exception p1

    .line 588
    sget-object p2, Lcom/amazon/identity/auth/device/av;->TAG:Ljava/lang/String;

    const-string p3, "Got ExecutionException while trying to update credentials"

    invoke-static {p2, p3, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 584
    sget-object p2, Lcom/amazon/identity/auth/device/av;->TAG:Ljava/lang/String;

    const-string p3, "Got InterruptedException while trying to update credentials"

    invoke-static {p2, p3, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 572
    invoke-static {p1}, Lcom/amazon/identity/auth/device/fl;->a(Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;)Lcom/amazon/identity/auth/device/fl;

    move-result-object p2

    if-nez p2, :cond_2

    .line 579
    sget-object p2, Lcom/amazon/identity/auth/device/av;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Got MAPCallbackErrorException while trying to update credentials. Error Bundle: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ht;->J(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 579
    invoke-static {p2, p3, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v1

    .line 575
    :cond_2
    sget-object p1, Lcom/amazon/identity/auth/device/av;->TAG:Ljava/lang/String;

    const-string p3, "Got MAPCallbackErrorException while trying to update credentials. Recover bundle thrown"

    invoke-static {p1, p3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    new-instance p1, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;

    .line 577
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/fl;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "Error happened when try to get authentication bundle"

    invoke-direct {p1, p3, p2}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    throw p1
.end method

.method static synthetic ao()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/amazon/identity/auth/device/av;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private aq(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 397
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/av;->TAG:Ljava/lang/String;

    const-string v2, "Using backwards compatabile way to get device email"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/amazon/identity/auth/device/av;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/hr;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p1

    if-nez p1, :cond_0

    .line 401
    sget-object p1, Lcom/amazon/identity/auth/device/av;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-object v0

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/av;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/gt;->ae(Landroid/content/Context;)Lcom/amazon/identity/auth/device/gt;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amazon/identity/auth/device/gt;->b(Landroid/accounts/Account;)Lcom/amazon/identity/auth/device/hb;

    move-result-object p1

    const-string v1, "com.amazon.kindle"

    .line 407
    invoke-static {v1}, Lcom/amazon/identity/auth/device/aj;->ah(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/identity/auth/device/hb;->cN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 425
    sget-object v1, Lcom/amazon/identity/auth/device/av;->TAG:Ljava/lang/String;

    const-string v2, "IllegalArgumentException:"

    invoke-static {v1, v2, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 421
    sget-object v1, Lcom/amazon/identity/auth/device/av;->TAG:Ljava/lang/String;

    const-string v2, "IOException: "

    invoke-static {v1, v2, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 417
    sget-object v1, Lcom/amazon/identity/auth/device/av;->TAG:Ljava/lang/String;

    const-string v2, "AuthenticatorException: "

    invoke-static {v1, v2, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 413
    sget-object v1, Lcom/amazon/identity/auth/device/av;->TAG:Ljava/lang/String;

    const-string v2, "OperationCanceledException: "

    invoke-static {v1, v2, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private ar(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Unable to retrieve attribute %s"

    .line 492
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 493
    sget-object v0, Lcom/amazon/identity/auth/device/av;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;->GET_ATTRIBUTE_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;

    const/4 v1, 0x4

    invoke-static {v0, p1, v1, p1}, Lcom/amazon/identity/auth/device/am;->e(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method private as(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "The attribute %s is not currently supported"

    .line 516
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 517
    sget-object v0, Lcom/amazon/identity/auth/device/av;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;->KEY_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;

    const/4 v1, 0x2

    invoke-static {v0, p1, v1, p1}, Lcom/amazon/identity/auth/device/am;->e(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/av;)Lcom/amazon/identity/auth/device/gi;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/amazon/identity/auth/device/av;->dI:Lcom/amazon/identity/auth/device/gi;

    return-object p0
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/av;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/av;->a(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/av;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Ljava/util/EnumSet;Lcom/amazon/identity/auth/device/ej;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;
        }
    .end annotation

    .line 6437
    iget-object v0, p0, Lcom/amazon/identity/auth/device/av;->dI:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/ij;->gC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/amazon/identity/auth/device/gi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6438
    sget-object v1, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;->ForceRefresh:Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;

    invoke-virtual {p4, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 6456
    :cond_0
    iget-object p4, p0, Lcom/amazon/identity/auth/device/av;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p4}, Lcom/amazon/identity/auth/device/mw;->bg(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 6458
    iget-object p4, p0, Lcom/amazon/identity/auth/device/av;->dK:Lcom/amazon/identity/auth/device/aw;

    invoke-virtual {p4, p2}, Lcom/amazon/identity/auth/device/aw;->at(Ljava/lang/String;)Z

    move-result p4

    goto :goto_0

    .line 6461
    :cond_1
    invoke-direct {p0, p2, p3, p5}, Lcom/amazon/identity/auth/device/av;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Lcom/amazon/identity/auth/device/ej;)Z

    move-result p4

    :goto_0
    if-nez p4, :cond_2

    .line 6442
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/av;->ar(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 6444
    invoke-interface {p1, p0}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void

    .line 6448
    :cond_2
    iget-object p4, p0, Lcom/amazon/identity/auth/device/av;->dI:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/ij;->gC()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lcom/amazon/identity/auth/device/gi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const/4 p2, 0x0

    .line 6451
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/identity/auth/device/av;->a(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 474
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "value_key"

    .line 475
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "defaut_value_key"

    .line 476
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;Ljava/util/EnumSet;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Landroid/os/Bundle;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;",
            ">;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 147
    new-instance p4, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {p4, p3}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 148
    sget-object p3, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;->ForceRefresh:Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;

    invoke-virtual {p5, p3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 150
    sget-object p3, Lcom/amazon/identity/auth/device/av;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v1, "Packages are force refreshing key %s"

    invoke-static {p3, v1, v0}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :cond_0
    new-instance p3, Lcom/amazon/identity/auth/device/av$1;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/amazon/identity/auth/device/av$1;-><init>(Lcom/amazon/identity/auth/device/av;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/bl;Ljava/util/EnumSet;Lcom/amazon/identity/auth/device/ej;)V

    invoke-static {p3}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V

    return-object p4
.end method

.method public peekAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 103
    invoke-static {p2}, Lcom/amazon/identity/auth/device/ij;->dk(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ij;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lcom/amazon/identity/auth/device/au;->a(Lcom/amazon/identity/auth/device/ij;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v0, "COR"

    .line 1290
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    iget-object p2, p0, Lcom/amazon/identity/auth/device/av;->w:Lcom/amazon/identity/auth/device/gc;

    const-string v0, "com.amazon.dcp.sso.property.account.cor"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/identity/auth/device/gc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1292
    iget-object p2, p0, Lcom/amazon/identity/auth/device/av;->dB:Lcom/amazon/identity/auth/device/aq;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/aq;->as()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/av;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "PFM"

    .line 1294
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1487
    iget-object p2, p0, Lcom/amazon/identity/auth/device/av;->w:Lcom/amazon/identity/auth/device/gc;

    const-string v0, "com.amazon.dcp.sso.property.account.pfm"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/identity/auth/device/gc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1296
    iget-object p2, p0, Lcom/amazon/identity/auth/device/av;->dB:Lcom/amazon/identity/auth/device/aq;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/aq;->at()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/av;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    .line 1299
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "Key %s not recognized as COR/PFM value"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_2
    invoke-static {v0}, Lcom/amazon/identity/auth/device/au;->b(Lcom/amazon/identity/auth/device/ij;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/av;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    .line 113
    :cond_3
    invoke-static {v0}, Lcom/amazon/identity/auth/device/au;->c(Lcom/amazon/identity/auth/device/ij;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 117
    sget-object p2, Lcom/amazon/identity/auth/device/av;->TAG:Ljava/lang/String;

    const-string v1, "KEY_XMAIN_AND_XACB_COOKIES is deprecated! Please use TokenManagement.peekCookies API to get auth cookies for your use case."

    invoke-static {p2, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->gD()Lcom/amazon/identity/auth/device/ij;

    move-result-object p2

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/av;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    .line 121
    :cond_4
    invoke-static {v0}, Lcom/amazon/identity/auth/device/au;->d(Lcom/amazon/identity/auth/device/ij;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2309
    iget-object p2, p0, Lcom/amazon/identity/auth/device/av;->dI:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->gC()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/amazon/identity/auth/device/gi;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/av;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    .line 133
    :cond_5
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/av;->as(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v6, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v6, p4}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 3250
    invoke-static {p2}, Lcom/amazon/identity/auth/device/ij;->dk(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ij;

    move-result-object v0

    .line 3253
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.amazon.dcp.sso.property.account.extratokens."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 3255
    sget-object v0, Lcom/amazon/identity/auth/device/av;->TAG:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v3

    const-string v4, "The key: %s does not have a valid prefix."

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_4

    .line 3260
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_4

    .line 3269
    :cond_1
    iget-object v1, p0, Lcom/amazon/identity/auth/device/av;->o:Lcom/amazon/identity/auth/device/ed;

    .line 4110
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string v5, "activity"

    .line 4112
    invoke-virtual {v1, v5}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 4114
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 4116
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 4118
    iget v7, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, v4, :cond_2

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_4

    const-string v1, "SecurityHelpers"

    const-string v4, "Calling process could not be found. Cannot find it\'s package"

    .line 4101
    invoke-static {v1, v4}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v3, [Ljava/lang/String;

    goto :goto_1

    .line 4105
    :cond_4
    iget-object v1, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 3271
    :goto_1
    array-length v4, v1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_6

    aget-object v7, v1, v5

    .line 3273
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_7

    .line 3282
    sget-object v1, Lcom/amazon/identity/auth/device/av;->TAG:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p2, v4, v3

    const-string v5, "Cannot set the key: %s in the calling package."

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    if-nez v0, :cond_8

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p2, p1, v3

    const-string p2, "Not authorized to setAttribute for key: %s."

    .line 228
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4540
    sget-object p2, Lcom/amazon/identity/auth/device/av;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 4542
    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;->SET_ATTRIBUTE_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;

    const/4 p3, 0x5

    invoke-static {p4, p2, p1, p3, p1}, Lcom/amazon/identity/auth/device/am;->c(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-object v6

    .line 232
    :cond_8
    new-instance p4, Lcom/amazon/identity/auth/device/av$2;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/av$2;-><init>(Lcom/amazon/identity/auth/device/av;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/bl;)V

    invoke-static {p4}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V

    return-object v6
.end method
