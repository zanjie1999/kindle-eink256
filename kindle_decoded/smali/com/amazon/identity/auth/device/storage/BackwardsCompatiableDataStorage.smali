.class public Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;
.super Lcom/amazon/identity/auth/device/gc;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$BackwardsCompatibleDataStorageException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.storage.BackwardsCompatiableDataStorage"

.field private static ng:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final aZ:Lcom/amazon/identity/auth/device/ds;

.field private final nh:Lcom/amazon/identity/auth/device/gc;

.field private final ni:Lcom/amazon/identity/auth/device/fs;

.field private final nj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->ng:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;)V
    .locals 1

    .line 51
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ed;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/gc;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/gc;)V
    .locals 2

    const-string/jumbo v0, "sso_platform"

    .line 57
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/ds;

    new-instance v1, Lcom/amazon/identity/auth/device/dk;

    invoke-direct {v1, p1}, Lcom/amazon/identity/auth/device/dk;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-direct {p0, p2, v0, v1}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;-><init>(Lcom/amazon/identity/auth/device/gc;Lcom/amazon/identity/auth/device/ds;Lcom/amazon/identity/auth/device/fs;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/identity/auth/device/gc;Lcom/amazon/identity/auth/device/ds;Lcom/amazon/identity/auth/device/fs;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gc;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    .line 66
    iput-object p2, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->aZ:Lcom/amazon/identity/auth/device/ds;

    .line 67
    iput-object p3, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->ni:Lcom/amazon/identity/auth/device/fs;

    .line 1508
    instance-of p1, p1, Lcom/amazon/identity/auth/device/fy;

    .line 68
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nj:Z

    return-void
.end method

.method private a(Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/fs;)Lcom/amazon/identity/auth/device/fv;
    .locals 6

    .line 430
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->eQ()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 431
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 434
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->eP()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 436
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->cb(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 438
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 442
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 451
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 453
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, p2, v4, v5}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->a(Lcom/amazon/identity/auth/device/fs;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 456
    :cond_2
    new-instance p2, Lcom/amazon/identity/auth/device/fv;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->getDirectedId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0, v1}, Lcom/amazon/identity/auth/device/fv;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-object p2
.end method

.method private a(Lcom/amazon/identity/auth/device/fs;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 483
    invoke-static {p2}, Lcom/amazon/identity/auth/device/hr;->da(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {p1, p3}, Lcom/amazon/identity/auth/device/fs;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 488
    :cond_0
    invoke-static {p2}, Lcom/amazon/identity/auth/device/hr;->db(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 490
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->ni:Lcom/amazon/identity/auth/device/fs;

    invoke-virtual {p1, p3}, Lcom/amazon/identity/auth/device/fs;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p3
.end method

.method private cb(Ljava/lang/String;)Z
    .locals 1

    .line 500
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hr;->db(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 501
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hr;->da(Ljava/lang/String;)Z

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

.method static cd(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    .line 549
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method static declared-synchronized eU()V
    .locals 3

    const-class v0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    monitor-enter v0

    .line 545
    :try_start_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->ng:Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$BackwardsCompatibleDataStorageException;
        }
    .end annotation

    .line 172
    sget-object v0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Get user data for: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 177
    sget-object p1, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    const-string p2, "Value for %s is empty"

    invoke-static {v1, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-object v0

    .line 183
    :cond_0
    iget-boolean v1, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nj:Z

    if-eqz v1, :cond_1

    return-object v0

    .line 2283
    :cond_1
    :try_start_0
    invoke-static {p2}, Lcom/amazon/identity/auth/device/hr;->db(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2285
    sget-object v1, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2291
    iget-object v1, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ds;->dg()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2293
    new-instance v1, Lcom/amazon/identity/auth/device/cv;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-direct {v1, v3, p1}, Lcom/amazon/identity/auth/device/cv;-><init>(Lcom/amazon/identity/auth/device/gc;Ljava/lang/String;)V

    goto :goto_0

    .line 2297
    :cond_2
    iget-object v1, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->ni:Lcom/amazon/identity/auth/device/fs;

    .line 2300
    :goto_0
    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/fs;->bW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2304
    sget-object v3, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->TAG:Ljava/lang/String;

    const-string v4, "Could not decrypt tokens using expected methods."

    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v1

    .line 2309
    :cond_4
    invoke-static {p2}, Lcom/amazon/identity/auth/device/hr;->da(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2311
    sget-object v1, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2312
    new-instance v1, Lcom/amazon/identity/auth/device/cv;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-direct {v1, v3, p1}, Lcom/amazon/identity/auth/device/cv;-><init>(Lcom/amazon/identity/auth/device/gc;Ljava/lang/String;)V

    .line 2313
    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/fs;->bW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2317
    :cond_5
    sget-object v1, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    nop

    .line 193
    sget-object v1, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->TAG:Ljava/lang/String;

    const-string v3, "BadPaddingException occurs."

    invoke-static {v1, v3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-object v1, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->ng:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    const/4 v3, 0x5

    if-ge v1, v3, :cond_a

    .line 197
    iget-object v1, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    .line 3222
    instance-of v3, v1, Lcom/amazon/identity/auth/device/gg;

    const/4 v4, 0x0

    if-nez v3, :cond_6

    .line 3224
    sget-object p2, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->TAG:Ljava/lang/String;

    const-string v0, "DataStorage is not DistributedDataStorage. That db should never be corrupted"

    invoke-static {p2, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3229
    :cond_6
    invoke-static {p2}, Lcom/amazon/identity/auth/device/hr;->db(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3231
    sget-object p2, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->TAG:Ljava/lang/String;

    const-string v0, "Token other than DMS token corrupted. This should never happen."

    invoke-static {p2, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3235
    :cond_7
    sget-object v3, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "Trying to recover corrupted key locally for key: "

    invoke-virtual {v4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 3236
    check-cast v1, Lcom/amazon/identity/auth/device/gg;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gg;->fk()Ljava/util/Set;

    move-result-object p2

    .line 3237
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3238
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3240
    new-instance v5, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$2;

    invoke-direct {v5, p0, v4}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$2;-><init>(Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;Ljava/lang/String;)V

    .line 3248
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3250
    :cond_8
    invoke-virtual {p0, v0, v3, v1}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->a(Ljava/lang/String;Ljava/util/List;Lcom/amazon/identity/auth/device/gg;)Ljava/lang/String;

    move-result-object v4

    .line 198
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 200
    sget-object p1, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->eU()V

    new-array p1, v2, [Ljava/lang/String;

    const-string/jumbo p2, "map_badpadding_locally_recover_success"

    .line 202
    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v4

    .line 205
    :cond_9
    sget-object p2, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->TAG:Ljava/lang/String;

    const-string v0, "Failed to recover account in device"

    invoke-static {p2, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    new-array p2, v2, [Ljava/lang/String;

    const-string/jumbo v0, "map_badpadding_locally_recover_failure"

    .line 206
    invoke-static {v0, p2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 210
    :cond_a
    sget-object p2, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->TAG:Ljava/lang/String;

    const-string v0, "Exceed local recovery retry upper-bound. Going to return account recovery bundle."

    invoke-static {p2, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_3
    invoke-static {}, Lcom/amazon/identity/auth/device/fl;->eB()Lcom/amazon/identity/auth/device/fl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/fl;->bR(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fl;

    move-result-object p1

    const-string p2, "BackwardsCompatiableDataStorage:BadPaddingException"

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/fl;->bS(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fl;

    move-result-object p1

    .line 213
    new-instance p2, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$BackwardsCompatibleDataStorageException;

    invoke-direct {p2, p1}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$BackwardsCompatibleDataStorageException;-><init>(Lcom/amazon/identity/auth/device/fl;)V

    throw p2
.end method


# virtual methods
.method public G(Ljava/lang/String;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/gc;->G(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/util/List;Lcom/amazon/identity/auth/device/gg;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/fs;",
            ">;",
            "Lcom/amazon/identity/auth/device/gg;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 258
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/fs;

    .line 260
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/fs;->cp()[B

    move-result-object v1

    const/4 v2, 0x2

    .line 3554
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 263
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/fs;->bW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 266
    invoke-virtual {p3, v1}, Lcom/amazon/identity/auth/device/gg;->ck(Ljava/lang/String;)V

    .line 267
    sget-object v1, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->TAG:Ljava/lang/String;

    const-string v2, "Successfully recovered locally!"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 273
    :catch_0
    sget-object v0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->TAG:Ljava/lang/String;

    const-string v1, "This key didn\'t match, retry!"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/amazon/identity/auth/device/fv;)V
    .locals 3

    .line 405
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nj:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 411
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/cv;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->getDirectedId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/cv;-><init>(Lcom/amazon/identity/auth/device/gc;Ljava/lang/String;)V

    .line 413
    :goto_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->a(Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/fs;)Lcom/amazon/identity/auth/device/fv;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/identity/auth/device/gc;->a(Lcom/amazon/identity/auth/device/fv;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 327
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nj:Z

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 332
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/cv;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-direct {v0, v1, p1}, Lcom/amazon/identity/auth/device/cv;-><init>(Lcom/amazon/identity/auth/device/gc;Ljava/lang/String;)V

    .line 333
    invoke-direct {p0, v0, p2, p3}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->a(Lcom/amazon/identity/auth/device/fs;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 335
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/gc$a;)Z
    .locals 3

    .line 110
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nj:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 112
    invoke-static {}, Lcom/amazon/identity/auth/device/cr;->co()Ljava/lang/String;

    move-result-object v1

    .line 113
    new-instance v0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$1;

    invoke-direct {v0, p0, v1}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$1;-><init>(Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;Ljava/lang/String;)V

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 128
    :goto_0
    invoke-direct {p0, p2, v1}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->a(Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/fs;)Lcom/amazon/identity/auth/device/fv;

    move-result-object p2

    if-eqz v0, :cond_1

    const-string v1, "com.amazon.dcp.sso.property.encryptKey"

    .line 131
    invoke-virtual {p2, v1, v0}, Lcom/amazon/identity/auth/device/fv;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gc;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/gc$a;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/gc$a;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/fv;",
            "Lcom/amazon/identity/auth/device/gc$a;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/gc;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/gc$a;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 153
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$BackwardsCompatibleDataStorageException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 158
    sget-object p2, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->TAG:Ljava/lang/String;

    const-string v0, "BadPaddingException occurs. Swallow this exception here."

    invoke-static {p2, v0, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public ca(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/gc;->ca(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public cc(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/gc;->cc(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p1

    return-object p1
.end method

.method public ce(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/gc;->ce(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 365
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->cb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public eS()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gc;->eS()V

    return-void
.end method

.method public eT()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gc;->eT()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gc;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    .line 92
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gc;->getAccounts()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSnapshot()Ljava/lang/String;
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gc;->getDeviceSnapshot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gc;->initialize()V

    return-void
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setup()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gc;->setup()V

    return-void
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 341
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->cb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gc;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$BackwardsCompatibleDataStorageException;
        }
    .end annotation

    .line 353
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->cb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gc;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 379
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->cb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 381
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gc;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->nh:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gc;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
