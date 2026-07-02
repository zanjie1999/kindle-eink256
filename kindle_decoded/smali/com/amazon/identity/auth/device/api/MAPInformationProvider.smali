.class public abstract Lcom/amazon/identity/auth/device/api/MAPInformationProvider;
.super Landroid/content/ContentProvider;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TOKEN_PROVIDER_AUTHORITY_PREFIX:Ljava/lang/String; = "com.amazon.identity.auth.device.MapInfoProvider."
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field


# instance fields
.field volatile gs:Lcom/amazon/identity/auth/device/hs;

.field private gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

.field private gu:Lcom/amazon/identity/auth/device/storage/LambortishClock;

.field private mContext:Landroid/content/Context;

.field private mInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 212
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mInitialized:Z

    return-void
.end method

.method private varargs a([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 609
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 611
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v5, "value"

    .line 612
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 616
    :cond_0
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/hy;->a([Ljava/lang/String;Ljava/util/Collection;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;
    .locals 0

    .line 546
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->a(Landroid/net/Uri;)V

    .line 548
    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->parseSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 551
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid selection"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/net/Uri;)V
    .locals 3

    .line 572
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ix;->aF(Landroid/content/Context;)V

    .line 574
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.identity.auth.device.MapInfoProvider."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 576
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown supported authority "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 537
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v1, "timestamp_key"

    .line 539
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jg;->dF(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 540
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->gu:Lcom/amazon/identity/auth/device/storage/LambortishClock;

    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->d(Ljava/util/Date;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 7

    .line 483
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->b(Landroid/net/Uri;Landroid/content/ContentValues;)Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;

    move-result-object p2

    .line 485
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/accounts"

    .line 486
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object p1, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->displayName:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->directedId:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->timestamp:Ljava/util/Date;

    if-eqz p1, :cond_4

    .line 490
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->gu:Lcom/amazon/identity/auth/device/storage/LambortishClock;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->d(Ljava/util/Date;)Z

    .line 491
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    iget-object v0, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->displayName:Ljava/lang/String;

    new-instance v1, Lcom/amazon/identity/auth/device/fv;

    iget-object v2, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->directedId:Ljava/lang/String;

    iget-object v3, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->userdata:Landroid/os/Bundle;

    .line 493
    invoke-static {v3}, Lcom/amazon/identity/auth/device/ht;->I(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/identity/auth/device/fv;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    iget-object p2, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->timestamp:Ljava/util/Date;

    const/4 v2, 0x1

    .line 491
    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Ljava/util/Date;Z)Z

    move-result p1

    return p1

    :cond_0
    const-string v0, "/userdata"

    .line 499
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    iget-object p1, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->directedId:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->key:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->timestamp:Ljava/util/Date;

    if-eqz p1, :cond_4

    .line 503
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->gu:Lcom/amazon/identity/auth/device/storage/LambortishClock;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->d(Ljava/util/Date;)Z

    .line 504
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    iget-object v2, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->directedId:Ljava/lang/String;

    iget-object v3, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->key:Ljava/lang/String;

    iget-object v4, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->value:Ljava/lang/String;

    iget-object v5, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->timestamp:Ljava/util/Date;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Z

    move-result p1

    return p1

    :cond_1
    const-string v0, "/tokens"

    .line 507
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 509
    iget-object p1, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->directedId:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->key:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->timestamp:Ljava/util/Date;

    if-eqz p1, :cond_4

    .line 511
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->gu:Lcom/amazon/identity/auth/device/storage/LambortishClock;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->d(Ljava/util/Date;)Z

    .line 512
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    iget-object v2, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->directedId:Ljava/lang/String;

    iget-object v3, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->key:Ljava/lang/String;

    iget-object v4, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->value:Ljava/lang/String;

    iget-object v5, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->timestamp:Ljava/util/Date;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Z

    move-result p1

    return p1

    :cond_2
    const-string v0, "/device_data"

    .line 515
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 517
    iget-object p1, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->namespace:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->key:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->timestamp:Ljava/util/Date;

    if-eqz p1, :cond_4

    .line 519
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->gu:Lcom/amazon/identity/auth/device/storage/LambortishClock;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->d(Ljava/util/Date;)Z

    .line 520
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    iget-object v2, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->namespace:Ljava/lang/String;

    iget-object v3, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->key:Ljava/lang/String;

    iget-object v4, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->value:Ljava/lang/String;

    iget-object v5, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->timestamp:Ljava/util/Date;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Z

    move-result p1

    return p1

    :cond_3
    const-string v0, "/bulk_data"

    .line 523
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 525
    iget-object p1, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->bulkData:Ljava/util/Collection;

    if-eqz p1, :cond_4

    .line 527
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->a(Ljava/util/Collection;)V

    .line 528
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    iget-object p2, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->bulkData:Ljava/util/Collection;

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->d(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/net/Uri;Landroid/content/ContentValues;)Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;
    .locals 0

    .line 559
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->a(Landroid/net/Uri;)V

    .line 561
    invoke-static {p2}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->parseSelection(Landroid/content/ContentValues;)Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 564
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid selection"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private declared-synchronized bi()V
    .locals 2

    monitor-enter p0

    .line 235
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 237
    monitor-exit p0

    return-void

    .line 240
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/MAPInit;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MAPInit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPInit;->initialize()V

    .line 242
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sso_local_datastorage"

    .line 244
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    iput-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    .line 246
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->V(Landroid/content/Context;)Lcom/amazon/identity/auth/device/storage/LambortishClock;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->gu:Lcom/amazon/identity/auth/device/storage/LambortishClock;

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ix;->aF(Landroid/content/Context;)V

    .line 257
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->bi()V

    .line 259
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;

    move-result-object p2

    .line 261
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p3, "/accounts"

    .line 263
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 265
    iget-object p1, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->directedId:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->timestamp:Ljava/util/Date;

    if-eqz p1, :cond_2

    .line 267
    iget-object p3, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->gu:Lcom/amazon/identity/auth/device/storage/LambortishClock;

    invoke-virtual {p3, p1}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->d(Ljava/util/Date;)Z

    .line 268
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    iget-object p3, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->directedId:Ljava/lang/String;

    iget-object p2, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->timestamp:Ljava/util/Date;

    invoke-virtual {p1, p3, p2, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/lang/String;Ljava/util/Date;Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    const-string p3, "/tokens"

    .line 271
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 273
    iget-object p1, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->directedId:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->key:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->timestamp:Ljava/util/Date;

    if-eqz p1, :cond_2

    .line 275
    iget-object p3, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->gu:Lcom/amazon/identity/auth/device/storage/LambortishClock;

    invoke-virtual {p3, p1}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->d(Ljava/util/Date;)Z

    .line 276
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    iget-object p3, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->directedId:Ljava/lang/String;

    iget-object v1, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->key:Ljava/lang/String;

    iget-object p2, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->timestamp:Ljava/util/Date;

    invoke-virtual {p1, p3, v1, p2, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Z

    move-result p1

    goto :goto_0

    :cond_1
    const-string p3, "/bulk_data"

    .line 282
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 284
    iget-object p1, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->bulkData:Ljava/util/Collection;

    if-eqz p1, :cond_2

    .line 286
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->a(Ljava/util/Collection;)V

    .line 287
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    iget-object p2, p2, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->bulkData:Ljava/util/Collection;

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->e(Ljava/util/Collection;)Z

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 290
    :goto_0
    iget-object p2, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mContext:Landroid/content/Context;

    new-instance p3, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/fk;->i(Landroid/content/Context;Ljava/lang/String;)V

    return p1
.end method

.method public getDsnOverrideForChildDeviceType()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 458
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOverrideChildDeviceType()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 477
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 412
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getType currently not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ix;->aF(Landroid/content/Context;)V

    .line 305
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->bi()V

    .line 307
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result p2

    .line 309
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/fk;->i(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mContext:Landroid/content/Context;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 321
    iget-object p5, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mContext:Landroid/content/Context;

    invoke-static {p5}, Lcom/amazon/identity/auth/device/ix;->aF(Landroid/content/Context;)V

    .line 323
    invoke-direct {p0, p1, p3, p4}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;

    move-result-object p3

    .line 325
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p4, "/map_info"

    .line 328
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 p5, 0x0

    if-eqz p4, :cond_4

    .line 330
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/MAPInit;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MAPInit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPInit;->initialize()V

    .line 4582
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->gs:Lcom/amazon/identity/auth/device/hs;

    if-nez p1, :cond_0

    .line 4585
    invoke-static {}, Lcom/amazon/identity/auth/device/hs;->gu()Lcom/amazon/identity/auth/device/hs;

    move-result-object p1

    .line 4586
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->gs:Lcom/amazon/identity/auth/device/hs;

    .line 4589
    :cond_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 4591
    iget p4, p1, Lcom/amazon/identity/auth/device/hs;->qD:I

    .line 4592
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    const-string/jumbo v0, "map_major_version"

    .line 4591
    invoke-interface {p3, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4593
    iget p4, p1, Lcom/amazon/identity/auth/device/hs;->qE:I

    .line 4594
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    const-string/jumbo v0, "map_minor_version"

    .line 4593
    invoke-interface {p3, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4627
    iget-object p4, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/amazon/identity/auth/device/p;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 4629
    sget-object p4, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->TAG:Ljava/lang/String;

    invoke-static {p4}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 4630
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->getOverrideChildDeviceType()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 4634
    :cond_1
    sget-object p4, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->TAG:Ljava/lang/String;

    invoke-static {p4}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    move-object p4, p5

    .line 4637
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4639
    iget-object p4, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/amazon/identity/auth/device/ib;->az(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    :cond_2
    const-string v0, "current_device_type"

    .line 4595
    invoke-interface {p3, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4651
    iget-object p4, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/amazon/identity/auth/device/p;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 4653
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->getDsnOverrideForChildDeviceType()Ljava/lang/String;

    move-result-object p5

    :cond_3
    const-string p4, "dsn_override"

    .line 4596
    invoke-interface {p3, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4597
    iget p4, p1, Lcom/amazon/identity/auth/device/hs;->qF:I

    .line 4598
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    const-string/jumbo p5, "map_sw_version"

    .line 4597
    invoke-interface {p3, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4599
    iget-object p1, p1, Lcom/amazon/identity/auth/device/hs;->kH:Ljava/lang/String;

    const-string/jumbo p4, "map_brazil_version"

    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4600
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mContext:Landroid/content/Context;

    .line 4601
    invoke-static {p1}, Lcom/amazon/identity/auth/device/dq;->G(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p4, "map_init_version"

    .line 4600
    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4603
    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/hy;->a([Ljava/lang/String;Ljava/util/Map;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 334
    :cond_4
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->bi()V

    const-string p4, "/accounts"

    .line 336
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 338
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->getAccounts()Ljava/util/Set;

    move-result-object p1

    .line 339
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p3

    new-array p3, p3, [Ljava/lang/String;

    invoke-interface {p1, p3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->a([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p5

    goto/16 :goto_1

    :cond_5
    const-string p4, "/userdata"

    .line 341
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_6

    .line 343
    iget-object p1, p3, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->directedId:Ljava/lang/String;

    if-eqz p1, :cond_c

    iget-object p3, p3, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->key:Ljava/lang/String;

    if-eqz p3, :cond_c

    .line 345
    iget-object p4, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    invoke-virtual {p4, p1, p3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v1, [Ljava/lang/String;

    aput-object p1, p3, v0

    .line 346
    invoke-direct {p0, p2, p3}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->a([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p5

    goto/16 :goto_1

    :cond_6
    const-string p4, "/tokens"

    .line 349
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    .line 351
    iget-object p1, p3, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->directedId:Ljava/lang/String;

    if-eqz p1, :cond_c

    iget-object p3, p3, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->key:Ljava/lang/String;

    if-eqz p3, :cond_c

    .line 353
    iget-object p4, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    invoke-virtual {p4, p1, p3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v1, [Ljava/lang/String;

    aput-object p1, p3, v0

    .line 354
    invoke-direct {p0, p2, p3}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->a([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p5

    goto/16 :goto_1

    :cond_7
    const-string p4, "/device_data"

    .line 357
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    .line 359
    iget-object p1, p3, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->namespace:Ljava/lang/String;

    if-eqz p1, :cond_c

    iget-object p1, p3, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->key:Ljava/lang/String;

    if-eqz p1, :cond_c

    .line 361
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/dh;->z(Landroid/content/Context;)Lcom/amazon/identity/auth/device/dh;

    move-result-object p1

    .line 362
    iget-object p4, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    iget-object p5, p3, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->namespace:Ljava/lang/String;

    iget-object v2, p3, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->key:Ljava/lang/String;

    invoke-virtual {p4, p5, v2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_8

    .line 364
    sget-object p4, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->TAG:Ljava/lang/String;

    sget-object p5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p3, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->key:Ljava/lang/String;

    aput-object v3, v2, v0

    const-string v3, "Device data for %s is empty, generate or fetch it."

    invoke-static {p5, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dh;->cL()I

    .line 367
    :cond_8
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    iget-object p4, p3, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->namespace:Ljava/lang/String;

    iget-object p3, p3, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, p4, p3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v1, [Ljava/lang/String;

    aput-object p1, p3, v0

    .line 368
    invoke-direct {p0, p2, p3}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->a([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p5

    goto :goto_1

    :cond_9
    const-string p3, "/all_data"

    .line 371
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 373
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->ft()Ljava/util/Collection;

    move-result-object p1

    .line 374
    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/hy;->a([Ljava/lang/String;Ljava/util/Collection;)Landroid/database/Cursor;

    move-result-object p5

    goto :goto_1

    :cond_a
    const-string p3, "/all_deleted_data"

    .line 376
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 378
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->fu()Ljava/util/Collection;

    move-result-object p1

    .line 379
    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/hy;->a([Ljava/lang/String;Ljava/util/Collection;)Landroid/database/Cursor;

    move-result-object p5

    goto :goto_1

    :cond_b
    const-string p3, "/generate_common_info"

    .line 381
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 383
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/dh;->z(Landroid/content/Context;)Lcom/amazon/identity/auth/device/dh;

    move-result-object p1

    .line 384
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dh;->cL()I

    new-array p1, v1, [Ljava/lang/String;

    .line 385
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v0

    invoke-direct {p0, p2, p1}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->a([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p5

    .line 387
    :cond_c
    :goto_1
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iget-object p3, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/fk;->i(Landroid/content/Context;Ljava/lang/String;)V

    return-object p5
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 398
    iget-object p3, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/amazon/identity/auth/device/ix;->aF(Landroid/content/Context;)V

    .line 400
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->bi()V

    .line 402
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result p1

    .line 404
    iget-object p2, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mContext:Landroid/content/Context;

    new-instance p3, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iget-object p4, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->mContext:Landroid/content/Context;

    invoke-direct {p3, p4}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/fk;->i(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
