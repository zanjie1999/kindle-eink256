.class abstract Lcom/amazon/identity/auth/device/ab$d;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "d"
.end annotation


# instance fields
.field private final be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

.field protected final cp:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

.field private final cq:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

.field protected final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ab$d;->o:Lcom/amazon/identity/auth/device/ed;

    .line 252
    iput-object p3, p0, Lcom/amazon/identity/auth/device/ab$d;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    .line 254
    new-instance p1, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    iget-object p3, p0, Lcom/amazon/identity/auth/device/ab$d;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p1, p3}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ab$d;->cq:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    .line 256
    iput-object p2, p0, Lcom/amazon/identity/auth/device/ab$d;->cp:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    return-void
.end method

.method private W(Ljava/lang/String;)Z
    .locals 8

    .line 392
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$d;->cp:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingType()Ljava/lang/String;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab$d;->cp:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingValue()Ljava/lang/String;

    move-result-object v1

    .line 395
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ab$d;->cq:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    invoke-static {v2, p1, v0}, Lcom/amazon/identity/auth/device/ab$d;->a(Lcom/amazon/identity/auth/device/gc;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 396
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    const-string v6, "Current values of %s before remove are %s"

    invoke-static {v6, v4}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 400
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v5

    aput-object v0, v2, v7

    const-string v0, "Cannot remove %s for type %s from account"

    invoke-static {p1, v0, v2}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    .line 404
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 406
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    const-string v3, "Current values of %s after remove are %s"

    invoke-static {v3, v1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab$d;->cq:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    invoke-direct {p0, v2}, Lcom/amazon/identity/auth/device/ab$d;->b(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v7
.end method

.method public static a(Lcom/amazon/identity/auth/device/gc;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/gc;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 283
    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/gc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 284
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 285
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    const-string p2, ","

    .line 290
    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 291
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method private b(Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, ","

    .line 420
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected abstract S()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/ab$e;",
            ">;"
        }
    .end annotation
.end method

.method public S(Ljava/lang/String;)Z
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$d;->cq:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab$d;->cp:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    .line 266
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/amazon/identity/auth/device/ab$d;->a(Lcom/amazon/identity/auth/device/gc;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 269
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Looking for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ab$d;->cp:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in metadata values"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 271
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 273
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Metadata found in list: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$d;->cp:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public T(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/ab$e;",
            ">;"
        }
    .end annotation

    .line 1349
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ab$d;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v0

    .line 1351
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1353
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1368
    iget-object v6, p0, Lcom/amazon/identity/auth/device/ab$d;->cp:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    invoke-virtual {v6}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingType()Ljava/lang/String;

    move-result-object v6

    .line 1369
    iget-object v7, p0, Lcom/amazon/identity/auth/device/ab$d;->cp:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    invoke-virtual {v7}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingValue()Ljava/lang/String;

    move-result-object v7

    .line 1371
    iget-object v8, p0, Lcom/amazon/identity/auth/device/ab$d;->cq:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    invoke-static {v8, v3, v6}, Lcom/amazon/identity/auth/device/ab$d;->a(Lcom/amazon/identity/auth/device/gc;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    .line 1373
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v6, v9, v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    const-string v10, "Current values for type %s before add are %s"

    invoke-static {v10, v9}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1375
    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1377
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v1

    aput-object v7, v4, v5

    const-string v5, "Cannot create mapping of type with value %s to account"

    invoke-static {v3, v5, v4}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    goto :goto_1

    .line 1381
    :cond_0
    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1383
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const-string v7, "Current values for %s after add are %s"

    invoke-static {v7, v4}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1385
    iget-object v4, p0, Lcom/amazon/identity/auth/device/ab$d;->cq:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    invoke-direct {p0, v8}, Lcom/amazon/identity/auth/device/ab$d;->b(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v3, v6, v7}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    or-int/2addr v2, v5

    goto :goto_0

    .line 1359
    :cond_1
    invoke-direct {p0, v3}, Lcom/amazon/identity/auth/device/ab$d;->W(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 302
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ab$d;->cp:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    .line 304
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab$d;->cp:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    .line 305
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "Notifying of user change of type %s set. Account for profile %s changed."

    .line 302
    invoke-static {p1, v1, v0}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ab$d;->S()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 310
    :cond_3
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ab$d;->cp:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    .line 312
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab$d;->cp:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    .line 313
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "Setting mapping type %s for key %s did not change. Not notifing."

    .line 310
    invoke-static {p1, v1, v0}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public U(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/ab$e;",
            ">;"
        }
    .end annotation

    .line 321
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ab$d;->W(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    .line 324
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/ab$d;->cp:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    .line 326
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab$d;->cp:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    .line 327
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "Notifying of user change of type %s removed. Account for profile %s changed."

    .line 324
    invoke-static {p1, v0, v2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ab$d;->S()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 332
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/ab;->access$000()Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/ab$d;->cp:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    .line 334
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ab$d;->cp:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    .line 335
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "Cannot remove mapping type %s for key %s did not change. Not notifing."

    .line 332
    invoke-static {p1, v0, v2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public V(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/ab$e;",
            ">;"
        }
    .end annotation

    .line 344
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/ab$d;->U(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
