.class public Lcom/amazon/identity/auth/device/ar;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/ar$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static dA:Lcom/amazon/identity/auth/device/ar;

.field public static final dy:J

.field private static final dz:J


# instance fields
.field private final F:Lcom/amazon/identity/auth/device/eh;

.field private final dB:Lcom/amazon/identity/auth/device/aq;

.field private final dC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/ar$a;",
            ">;"
        }
    .end annotation
.end field

.field private final dD:Ljava/util/Random;

.field private final o:Lcom/amazon/identity/auth/device/ed;

.field private final w:Lcom/amazon/identity/auth/device/gc;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/jg;->b(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    sput-wide v3, Lcom/amazon/identity/auth/device/ar;->dy:J

    .line 47
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/jg;->c(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/identity/auth/device/ar;->dz:J

    .line 48
    const-class v0, Lcom/amazon/identity/auth/device/ar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ar;->o:Lcom/amazon/identity/auth/device/ed;

    .line 64
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ed;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ar;->w:Lcom/amazon/identity/auth/device/gc;

    .line 66
    new-instance p1, Lcom/amazon/identity/auth/device/aq;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/ar;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/aq;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ar;->dB:Lcom/amazon/identity/auth/device/aq;

    .line 68
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ar;->dC:Ljava/util/Map;

    .line 70
    new-instance p1, Lcom/amazon/identity/auth/device/eh;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/eh;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ar;->F:Lcom/amazon/identity/auth/device/eh;

    .line 72
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ar;->dD:Ljava/util/Random;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/amazon/identity/auth/device/z;)V
    .locals 2

    .line 517
    sget-object v0, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const-string v0, "com.amazon.dcp.sso.broadcast.CORPFMHasChanged"

    .line 520
    invoke-static {v0}, Lcom/amazon/identity/auth/device/iw;->dx(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "new.account.property.changed"

    .line 521
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.amazon.dcp.sso.permission.MANAGE_COR_PFM"

    .line 525
    invoke-interface {p1, p0, v0, v1}, Lcom/amazon/identity/auth/device/z;->a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/amazon/identity/auth/attributes/CORPFMResponse;Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/attributes/CORPFMResponse;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 336
    sget-object v0, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    .line 338
    invoke-virtual {p2}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->ah()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 339
    invoke-virtual {p2}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->aj()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 340
    invoke-virtual {p2}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->am()Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 341
    invoke-virtual {p2}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->am()Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "Trying to save COR/PFM response : %nCoR: %s %nPFM:%s %n Computation Confidence Value: %s"

    .line 337
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    sget-object v0, Lcom/amazon/identity/auth/device/ar$2;->dF:[I

    invoke-virtual {p2}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->am()Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v5, :cond_3

    if-eq v0, v6, :cond_2

    if-ne v0, v1, :cond_1

    .line 354
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/ar;->b(Lcom/amazon/identity/auth/attributes/CORPFMResponse;)Z

    move-result p1

    goto :goto_1

    .line 357
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array p3, v5, [Ljava/lang/Object;

    .line 358
    invoke-virtual {p2}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->am()Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v4

    const-string p2, "Cor Pfm value type %s is not supported"

    .line 357
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    .line 347
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/ar;->b(Ljava/lang/String;Lcom/amazon/identity/auth/attributes/CORPFMResponse;Ljava/util/Map;)Z

    move-result p1

    .line 362
    :goto_1
    invoke-virtual {p2}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->al()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 365
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "last_updated_cor_pfm"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v0, "is_cor_pfm_set"

    const-string/jumbo v1, "true"

    .line 369
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    invoke-virtual {p2}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->ah()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 372
    sget-object p3, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    const-string v0, "COR is empty."

    invoke-static {p3, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    new-array p3, v4, [Ljava/lang/String;

    const-string v0, "CorIsEmpty"

    .line 374
    invoke-static {v0, p3}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    .line 378
    :cond_5
    sget-object p3, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    const-string v0, "COR is not empty."

    invoke-static {p3, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :goto_2
    invoke-virtual {p2}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->aj()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 383
    sget-object p2, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    const-string p3, "PFM is empty."

    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    new-array p2, v4, [Ljava/lang/String;

    const-string p3, "PfmIsEmpty"

    .line 385
    invoke-static {p3, p2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 389
    :cond_6
    sget-object p2, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    const-string p3, "PFM is not empty."

    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return p1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private ao(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ar;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 446
    sget-object v1, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Error calling Secure Settings for resource "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private ap(Ljava/lang/String;)Lcom/amazon/identity/auth/attributes/CORPFMResponse;
    .locals 6

    .line 500
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ar;->w:Lcom/amazon/identity/auth/device/gc;

    const-string v1, "com.amazon.dcp.sso.property.account.cor"

    invoke-virtual {v0, p1, v1}, Lcom/amazon/identity/auth/device/gc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ar;->w:Lcom/amazon/identity/auth/device/gc;

    const-string v2, "com.amazon.dcp.sso.property.account.pfm"

    invoke-virtual {v1, p1, v2}, Lcom/amazon/identity/auth/device/gc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 502
    sget-object v2, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 503
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 504
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "COR is empty: %b, PFM is empty: %b"

    .line 502
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ar;->w:Lcom/amazon/identity/auth/device/gc;

    const-string v3, "last_updated_cor_pfm"

    invoke-virtual {v2, p1, v3}, Lcom/amazon/identity/auth/device/gc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 507
    invoke-static {p1}, Lcom/amazon/identity/auth/device/jb;->dA(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    .line 509
    new-instance v2, Lcom/amazon/identity/auth/attributes/CORPFMResponse;

    sget-object v3, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;->CUSTOMER_PROVIDED:Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    invoke-direct {v2, v0, v1, v3, p1}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;Ljava/lang/Long;)V

    return-object v2
.end method

.method private b(Lcom/amazon/identity/auth/attributes/CORPFMResponse;)Z
    .locals 2

    .line 396
    sget-object v0, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    const-string v1, "Saving device defaults COR/PFM"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ar;->dB:Lcom/amazon/identity/auth/device/aq;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/aq;->au()Lcom/amazon/identity/auth/attributes/CORPFMResponse;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ar;->dB:Lcom/amazon/identity/auth/device/aq;

    invoke-virtual {v1, p1}, Lcom/amazon/identity/auth/device/aq;->a(Lcom/amazon/identity/auth/attributes/CORPFMResponse;)V

    .line 401
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 403
    sget-object p1, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    const-string v0, "Default COR/PFM has not changed."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private b(Ljava/lang/String;Lcom/amazon/identity/auth/attributes/CORPFMResponse;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/attributes/CORPFMResponse;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 414
    sget-object v0, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    const-string v1, "Saving user backed COR/PFM"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 418
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ar;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/gc;->D(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 420
    sget-object p1, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    const-string p2, "Could not save COR/PFM values because the given account does not exist"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 424
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ar;->ap(Ljava/lang/String;)Lcom/amazon/identity/auth/attributes/CORPFMResponse;

    move-result-object p1

    .line 425
    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 427
    sget-object p1, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    const-string p2, "User COR PFM has not changed."

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 432
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->ah()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.amazon.dcp.sso.property.account.cor"

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    invoke-virtual {p2}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->aj()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.amazon.dcp.sso.property.account.pfm"

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static generateNewInstance(Landroid/content/Context;)V
    .locals 1

    .line 101
    new-instance v0, Lcom/amazon/identity/auth/device/ar;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/ar;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amazon/identity/auth/device/ar;->dA:Lcom/amazon/identity/auth/device/ar;

    return-void
.end method

.method public static declared-synchronized h(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ar;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/ar;

    monitor-enter v0

    .line 91
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/ar;->dA:Lcom/amazon/identity/auth/device/ar;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    :cond_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ar;->generateNewInstance(Landroid/content/Context;)V

    .line 96
    :cond_1
    sget-object p0, Lcom/amazon/identity/auth/device/ar;->dA:Lcom/amazon/identity/auth/device/ar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/attributes/CORPFMResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 1175
    iget-object v3, p0, Lcom/amazon/identity/auth/device/ar;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v3, p1}, Lcom/amazon/identity/auth/device/gc;->D(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 2530
    :cond_0
    iget-object v3, p0, Lcom/amazon/identity/auth/device/ar;->w:Lcom/amazon/identity/auth/device/gc;

    const-string v4, "is_cor_pfm_set"

    invoke-virtual {v3, p1, v4}, Lcom/amazon/identity/auth/device/gc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    .line 2491
    sget-object v1, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    const-string v2, "MAP has not set PRM/COR yet."

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2495
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ar;->ap(Ljava/lang/String;)Lcom/amazon/identity/auth/attributes/CORPFMResponse;

    move-result-object v0

    goto :goto_2

    .line 1177
    :cond_3
    :goto_0
    sget-object v3, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    const-string v4, "Account is empty or not registered."

    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string v4, "Account %s not registered. Getting default COR/PFM from secure settings or device default"

    .line 1178
    invoke-static {v4, v3}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2453
    sget-object v3, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    const-string v4, "getting Cor/Pfm from Secure Settings"

    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "DEFAULT_COR"

    .line 2455
    invoke-direct {p0, v3}, Lcom/amazon/identity/auth/device/ar;->ao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEFAULT_PFM"

    .line 2456
    invoke-direct {p0, v4}, Lcom/amazon/identity/auth/device/ar;->ao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2458
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2460
    sget-object v5, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v1

    aput-object v4, v6, v2

    const-string v1, "Returning Cor/Pfm from Secure Settings. Cor: %s, Pfm: %s"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 2462
    new-instance v1, Lcom/amazon/identity/auth/attributes/CORPFMResponse;

    sget-object v2, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;->CUSTOMER_PROVIDED:Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    const-wide/16 v5, -0x1

    .line 2465
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;Ljava/lang/Long;)V

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_5

    move-object v0, v1

    goto :goto_2

    .line 1479
    :cond_5
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ar;->dB:Lcom/amazon/identity/auth/device/aq;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/aq;->ar()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1481
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ar;->dB:Lcom/amazon/identity/auth/device/aq;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/aq;->au()Lcom/amazon/identity/auth/attributes/CORPFMResponse;

    move-result-object v0

    :cond_6
    :goto_2
    if-eqz v0, :cond_8

    .line 144
    sget-wide v1, Lcom/amazon/identity/auth/device/ar;->dy:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/auth/device/ar;->a(Lcom/amazon/identity/auth/attributes/CORPFMResponse;Ljava/lang/Long;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 146
    sget-object v1, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    const-string v2, "COR/PFM expires, refreshing it."

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v1, Lcom/amazon/identity/auth/device/ar$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/identity/auth/device/ar$1;-><init>(Lcom/amazon/identity/auth/device/ar;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)V

    invoke-static {v1}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V

    .line 164
    :cond_7
    sget-object p1, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    const-string p2, "COR PFM has already been fetched. Returning current COR/PFM"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 168
    :cond_8
    sget-object v0, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    const-string v1, "CoR/PFM is not currently set. Waiting to fetch CoR/PFM"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/ar;->b(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/attributes/CORPFMResponse;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazon/identity/auth/attributes/CORPFMResponse;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/attributes/CORPFMResponse;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 298
    sget-object p1, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    const-string p2, "Cor/PFM response given to set is null. Not setting."

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 302
    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/identity/auth/device/ar;->a(Ljava/lang/String;Lcom/amazon/identity/auth/attributes/CORPFMResponse;Ljava/util/Map;)Z

    return-void
.end method

.method a(Lcom/amazon/identity/auth/attributes/CORPFMResponse;Ljava/lang/Long;)Z
    .locals 13

    .line 191
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-wide v2, Lcom/amazon/identity/auth/device/ar;->dz:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 192
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/identity/auth/attributes/CORPFMResponse;->al()Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    return p2

    .line 199
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    cmp-long v7, v0, v4

    if-nez v7, :cond_2

    return v6

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ar;->F:Lcom/amazon/identity/auth/device/eh;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eh;->currentTimeMillis()J

    move-result-wide v0

    .line 210
    iget-object v4, p0, Lcom/amazon/identity/auth/device/ar;->dD:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextBoolean()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, -0x1

    :goto_0
    int-to-double v4, v4

    .line 211
    iget-object v7, p0, Lcom/amazon/identity/auth/device/ar;->dD:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    mul-double v4, v4, v7

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double v4, v4, v7

    long-to-double v7, v2

    mul-double v4, v4, v7

    .line 213
    sget-object v7, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    .line 214
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v6

    aput-object p1, v9, p2

    const/4 v10, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    double-to-long v11, v4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const-string v10, "Current time: %d %n cor/pfm last updated time: %d %n TTL: %d %n Jitter: %d"

    .line 213
    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    long-to-double v0, v0

    .line 216
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v7, v2

    long-to-double v2, v7

    add-double/2addr v2, v4

    cmpg-double p1, v0, v2

    if-gez p1, :cond_4

    .line 218
    sget-object p1, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    const-string p2, "COR or PFM isn\'t expired."

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    .line 221
    :cond_4
    sget-object p1, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    const-string v0, "COR or PFM is expired."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method

.method public b(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/attributes/CORPFMResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ar;->dC:Ljava/util/Map;

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ar;->dC:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/ar$a;

    if-nez v1, :cond_0

    .line 236
    new-instance v1, Lcom/amazon/identity/auth/device/ar$a;

    invoke-direct {v1}, Lcom/amazon/identity/auth/device/ar$a;-><init>()V

    .line 237
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ar;->dC:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 245
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v0, 0x0

    if-eqz v2, :cond_4

    .line 250
    sget-object v2, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    const-string v3, "No outstanding request to fetch cor/pfm. Calling DCAS."

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :try_start_1
    new-instance v2, Lcom/amazon/identity/auth/device/ap;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/ar;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v2, v3, p1, p2}, Lcom/amazon/identity/auth/device/ap;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)V

    .line 255
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/ap;->ap()Lcom/amazon/identity/auth/attributes/CORPFMResponse;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p2, :cond_3

    .line 3313
    :try_start_2
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3314
    invoke-direct {p0, p1, p2, v2}, Lcom/amazon/identity/auth/device/ar;->a(Ljava/lang/String;Lcom/amazon/identity/auth/attributes/CORPFMResponse;Ljava/util/Map;)Z

    move-result v3

    if-eqz p1, :cond_1

    .line 3318
    iget-object v4, p0, Lcom/amazon/identity/auth/device/ar;->w:Lcom/amazon/identity/auth/device/gc;

    .line 4140
    new-instance v5, Lcom/amazon/identity/auth/device/fv;

    invoke-direct {v5, p1, v2, v0}, Lcom/amazon/identity/auth/device/fv;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v4, v5}, Lcom/amazon/identity/auth/device/gc;->a(Lcom/amazon/identity/auth/device/fv;)V

    :cond_1
    if-eqz v3, :cond_2

    .line 3323
    sget-object v0, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    const-string v2, "COR/PFM value has changed. Sending notifications."

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 3324
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ar;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/aa;->f(Landroid/content/Context;)Lcom/amazon/identity/auth/device/z;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/ar;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/z;)V

    goto :goto_1

    .line 3328
    :cond_2
    sget-object v0, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    const-string v2, "COR/PFM values are not different. Not firing the changed broadcast"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 261
    :cond_3
    :goto_1
    iput-object p2, v1, Lcom/amazon/identity/auth/device/ar$a;->dH:Lcom/amazon/identity/auth/attributes/CORPFMResponse;

    .line 262
    iget-object v0, v1, Lcom/amazon/identity/auth/device/ar$a;->dG:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 265
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ar;->dC:Ljava/util/Map;

    monitor-enter v2

    .line 267
    :try_start_3
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ar;->dC:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    monitor-exit v2

    move-object v0, p2

    goto :goto_3

    :catchall_1
    move-exception p1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p2

    move-object v6, v0

    move-object v0, p2

    move-object p2, v6

    .line 261
    :goto_2
    iput-object p2, v1, Lcom/amazon/identity/auth/device/ar$a;->dH:Lcom/amazon/identity/auth/attributes/CORPFMResponse;

    .line 262
    iget-object p2, v1, Lcom/amazon/identity/auth/device/ar$a;->dG:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 265
    iget-object p2, p0, Lcom/amazon/identity/auth/device/ar;->dC:Ljava/util/Map;

    monitor-enter p2

    .line 267
    :try_start_4
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ar;->dC:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 269
    throw v0

    :catchall_3
    move-exception p1

    .line 268
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1

    .line 273
    :cond_4
    sget-object p1, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 276
    :try_start_6
    iget-object p1, v1, Lcom/amazon/identity/auth/device/ar$a;->dG:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x5

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 278
    iget-object v0, v1, Lcom/amazon/identity/auth/device/ar$a;->dH:Lcom/amazon/identity/auth/attributes/CORPFMResponse;

    goto :goto_3

    .line 282
    :cond_5
    sget-object p1, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    const-string p2, "Timed out waiting for cor/pfm response"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 287
    sget-object p2, Lcom/amazon/identity/auth/device/ar;->TAG:Ljava/lang/String;

    const-string v1, "Interrupted waiting for cor/pfm response"

    invoke-static {p2, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-object v0

    :catchall_4
    move-exception p1

    .line 245
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p1
.end method
