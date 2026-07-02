.class public Lcom/amazon/identity/auth/device/gp;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/gp$a;
    }
.end annotation


# instance fields
.field private final dp:Lcom/amazon/identity/auth/device/ec;

.field private final mContext:Landroid/content/Context;

.field private final oF:Lcom/amazon/identity/auth/device/du;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/du;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gp;->mContext:Landroid/content/Context;

    .line 116
    new-instance v0, Lcom/amazon/identity/auth/device/ec;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/ec;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/gp;->dp:Lcom/amazon/identity/auth/device/ec;

    .line 118
    iput-object p2, p0, Lcom/amazon/identity/auth/device/gp;->oF:Lcom/amazon/identity/auth/device/du;

    return-void
.end method

.method private c(Landroid/net/Uri;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/framework/RemoteMAPException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gp;->dp:Lcom/amazon/identity/auth/device/ec;

    new-instance v1, Lcom/amazon/identity/auth/device/gp$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/identity/auth/device/gp$1;-><init>(Lcom/amazon/identity/auth/device/gp;Landroid/net/Uri;)V

    invoke-virtual {v0, p1, v1}, Lcom/amazon/identity/auth/device/ec;->a(Landroid/net/Uri;Lcom/amazon/identity/auth/device/dj;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Ljava/util/Date;)Z
    .locals 6

    .line 271
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/fv;->getDirectedId()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    if-nez p3, :cond_0

    goto/16 :goto_3

    .line 277
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "display_name"

    .line 280
    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "directedId"

    .line 281
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/fv;->eQ()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 286
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "userdata_account"

    .line 287
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "userdata_key"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v4, "userdata_value"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/fv;->eP()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 295
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "token_account"

    .line 296
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "token_key"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v3, "token_value"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 304
    :cond_2
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 306
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    const-string/jumbo v0, "timestamp_key"

    .line 308
    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deleted_key"

    const-string v2, "false"

    .line 309
    invoke-interface {p3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 315
    :cond_3
    invoke-virtual {p0, v1}, Lcom/amazon/identity/auth/device/gp;->d(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_4
    :goto_3
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Z
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gp;->oF:Lcom/amazon/identity/auth/device/du;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/du;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/gn;->cx(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 347
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "directedId"

    .line 348
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key"

    .line 349
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "value"

    .line 350
    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 353
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo p2, "timestamp_key"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 356
    :cond_0
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gp;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string p4, "RemoteAmazonDataStorage"

    if-eqz p1, :cond_2

    new-array p2, p2, [Ljava/lang/Object;

    .line 361
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gp;->oF:Lcom/amazon/identity/auth/device/du;

    .line 362
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    const-string/jumbo p3, "set userdata was successful with package %s."

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 361
    invoke-static {p4}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-array p2, p2, [Ljava/lang/Object;

    .line 367
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gp;->oF:Lcom/amazon/identity/auth/device/du;

    .line 368
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    const-string/jumbo p3, "set userdata was not successful with package %s."

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 367
    invoke-static {p4, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Z
    .locals 3

    .line 376
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gp;->oF:Lcom/amazon/identity/auth/device/du;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/du;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/gn;->cy(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 378
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "directedId"

    .line 379
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key"

    .line 380
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "value"

    .line 381
    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 384
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo p2, "timestamp_key"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 387
    :cond_0
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gp;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string p4, "RemoteAmazonDataStorage"

    if-eqz p1, :cond_2

    new-array p2, p2, [Ljava/lang/Object;

    .line 392
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gp;->oF:Lcom/amazon/identity/auth/device/du;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    const-string/jumbo p3, "set token was successful with package %s."

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p4}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-array p2, p2, [Ljava/lang/Object;

    .line 396
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gp;->oF:Lcom/amazon/identity/auth/device/du;

    .line 397
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    const-string/jumbo p3, "set token was not successful with package %s."

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 396
    invoke-static {p4, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Z
    .locals 3

    .line 447
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gp;->oF:Lcom/amazon/identity/auth/device/du;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/du;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/gn;->cz(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 449
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "namespace"

    .line 450
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key"

    .line 451
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "value"

    .line 452
    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 455
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo p2, "timestamp_key"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 458
    :cond_0
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gp;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string p4, "RemoteAmazonDataStorage"

    if-eqz p1, :cond_2

    new-array p2, p2, [Ljava/lang/Object;

    .line 463
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gp;->oF:Lcom/amazon/identity/auth/device/du;

    .line 464
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    const-string/jumbo p3, "set device data was successful with package %s."

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 463
    invoke-static {p4}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-array p2, p2, [Ljava/lang/Object;

    .line 468
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gp;->oF:Lcom/amazon/identity/auth/device/du;

    .line 470
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    const-string/jumbo p3, "set device data was not successful with package %s."

    .line 469
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 468
    invoke-static {p4, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return p1
.end method

.method public c(Ljava/lang/String;Ljava/util/Date;)Z
    .locals 5

    const-string v0, "RemoteAmazonDataStorage"

    .line 320
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gp;->oF:Lcom/amazon/identity/auth/device/du;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/du;->getProviderAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/identity/auth/device/gn;->cw(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 323
    invoke-static {p1, v2, v2, p2}, Lcom/amazon/identity/auth/device/gp$a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lcom/amazon/identity/auth/device/gp$a;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v2, 0x0

    .line 328
    :try_start_0
    iget-object v3, p0, Lcom/amazon/identity/auth/device/gp;->dp:Lcom/amazon/identity/auth/device/ec;

    iget-object v4, p1, Lcom/amazon/identity/auth/device/gp$a;->selection:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/identity/auth/device/gp$a;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v3, v1, v4, p1}, Lcom/amazon/identity/auth/device/ec;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 338
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v3, p0, Lcom/amazon/identity/auth/device/gp;->oF:Lcom/amazon/identity/auth/device/du;

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, p2

    const-string v3, "Removed %d accounts from package %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    return p2

    :cond_0
    return v2

    :catch_0
    move-exception p1

    new-array p2, p2, [Ljava/lang/Object;

    .line 332
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gp;->oF:Lcom/amazon/identity/auth/device/du;

    .line 333
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v2

    const-string v1, "Failed to remove accounts from package %s"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 332
    invoke-static {v0, p2, p1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public d(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    const-string/jumbo v0, "set bulk data was not successful with package %s."

    const-string v1, "RemoteAmazonDataStorage"

    .line 198
    iget-object v2, p0, Lcom/amazon/identity/auth/device/gp;->oF:Lcom/amazon/identity/auth/device/du;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/du;->getProviderAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/identity/auth/device/gn;->cD(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 200
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 201
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ir;->g(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "bulk_data"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v4, 0x0

    .line 206
    :try_start_0
    iget-object v5, p0, Lcom/amazon/identity/auth/device/gp;->dp:Lcom/amazon/identity/auth/device/ec;

    invoke-virtual {v5, v2, v3}, Lcom/amazon/identity/auth/device/ec;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    new-array p1, p1, [Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gp;->oF:Lcom/amazon/identity/auth/device/du;

    .line 220
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    const-string/jumbo v0, "set bulk data was successful with package %s."

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 219
    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-array p1, p1, [Ljava/lang/Object;

    .line 225
    iget-object v3, p0, Lcom/amazon/identity/auth/device/gp;->oF:Lcom/amazon/identity/auth/device/du;

    .line 226
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v4

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v2

    :catch_0
    move-exception v2

    new-array p1, p1, [Ljava/lang/Object;

    .line 210
    iget-object v3, p0, Lcom/amazon/identity/auth/device/gp;->oF:Lcom/amazon/identity/auth/device/du;

    .line 211
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v4

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-static {v1, p1, v2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v4
.end method

.method public e(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    const-string v0, "clear bulk data was not successful with package %s."

    const-string v1, "RemoteAmazonDataStorage"

    .line 234
    iget-object v2, p0, Lcom/amazon/identity/auth/device/gp;->oF:Lcom/amazon/identity/auth/device/du;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/du;->getProviderAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/identity/auth/device/gn;->cD(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1070
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1071
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1076
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ir;->g(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "bulk_data"

    .line 1073
    invoke-static {v3, v4, v5, p1}, Lcom/amazon/identity/auth/device/gp$a;->a(Ljava/util/LinkedHashMap;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    new-instance p1, Lcom/amazon/identity/auth/device/gp$a;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/ih;->k(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    .line 1079
    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-direct {p1, v3, v4}, Lcom/amazon/identity/auth/device/gp$a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 241
    :try_start_0
    iget-object v4, p0, Lcom/amazon/identity/auth/device/gp;->dp:Lcom/amazon/identity/auth/device/ec;

    iget-object v6, p1, Lcom/amazon/identity/auth/device/gp$a;->selection:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/identity/auth/device/gp$a;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v4, v2, v6, p1}, Lcom/amazon/identity/auth/device/ec;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    .line 255
    iget-object v2, p0, Lcom/amazon/identity/auth/device/gp;->oF:Lcom/amazon/identity/auth/device/du;

    .line 256
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    const-string v2, "clear bulk data was successful with package %s."

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 255
    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    .line 261
    iget-object v3, p0, Lcom/amazon/identity/auth/device/gp;->oF:Lcom/amazon/identity/auth/device/du;

    .line 263
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 262
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return p1

    :catch_0
    move-exception p1

    new-array v2, v3, [Ljava/lang/Object;

    .line 245
    iget-object v3, p0, Lcom/amazon/identity/auth/device/gp;->oF:Lcom/amazon/identity/auth/device/du;

    .line 247
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 246
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v1, v0, p1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v5
.end method

.method public fH()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/framework/RemoteMAPException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gp;->oF:Lcom/amazon/identity/auth/device/du;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/du;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/gn;->cB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 124
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/gp;->c(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public fI()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/framework/RemoteMAPException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gp;->oF:Lcom/amazon/identity/auth/device/du;

    .line 130
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/du;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/gn;->cC(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 131
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/gp;->c(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Z
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gp;->oF:Lcom/amazon/identity/auth/device/du;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/du;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/gn;->cy(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    .line 408
    invoke-static {p1, p2, v1, p3}, Lcom/amazon/identity/auth/device/gp$a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lcom/amazon/identity/auth/device/gp$a;

    move-result-object p1

    .line 410
    iget-object p2, p0, Lcom/amazon/identity/auth/device/gp;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p3, p1, Lcom/amazon/identity/auth/device/gp$a;->selection:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/identity/auth/device/gp$a;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {p2, v0, p3, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 412
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    iget-object p3, p0, Lcom/amazon/identity/auth/device/gp;->oF:Lcom/amazon/identity/auth/device/du;

    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    aput-object p3, p2, v1

    const-string p3, "Expired %d tokens from package %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const-string p2, "RemoteAmazonDataStorage"

    invoke-static {p2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string/jumbo v0, "value"

    .line 419
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gp;->oF:Lcom/amazon/identity/auth/device/du;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/du;->getProviderAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/identity/auth/device/gn;->cz(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v1, 0x0

    .line 421
    invoke-static {v1, p2, p1, v1}, Lcom/amazon/identity/auth/device/gp$a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lcom/amazon/identity/auth/device/gp$a;

    move-result-object p1

    .line 425
    :try_start_0
    iget-object p2, p0, Lcom/amazon/identity/auth/device/gp;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/amazon/identity/auth/device/gp$a;->selection:Ljava/lang/String;

    iget-object v6, p1, Lcom/amazon/identity/auth/device/gp$a;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    .line 430
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 434
    :cond_0
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/hy;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "RemoteAmazonDataStorage"

    const-string v1, "Fetch remote device data: "

    .line 435
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    return-object p2

    :catchall_0
    move-exception p2

    move-object v1, p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    return-object v1

    :catchall_1
    move-exception p2

    :goto_1
    invoke-static {v1}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    .line 441
    throw p2
.end method
