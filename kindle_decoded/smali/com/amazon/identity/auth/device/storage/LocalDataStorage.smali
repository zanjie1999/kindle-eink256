.class public Lcom/amazon/identity/auth/device/storage/LocalDataStorage;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;,
        Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;
    }
.end annotation


# static fields
.field private static final om:[Ljava/lang/String;

.field private static on:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;


# instance fields
.field private final gu:Lcom/amazon/identity/auth/device/storage/LambortishClock;

.field private final mContext:Landroid/content/Context;

.field private final oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

.field private op:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/gf<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private oq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/gf<",
            "Lcom/amazon/identity/auth/device/ft;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.amazon.dcp.sso.property.account.ACCOUNT_STATUS"

    const-string v1, "has.notified.server.of.deregister"

    .line 96
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->om:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 208
    new-instance v0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    const-string/jumbo v1, "map_data_storage"

    invoke-direct {v0, p1, v1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    invoke-static {p1}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->V(Landroid/content/Context;)Lcom/amazon/identity/auth/device/storage/LambortishClock;

    move-result-object v1

    .line 208
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;Lcom/amazon/identity/auth/device/storage/LambortishClock;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;Lcom/amazon/identity/auth/device/storage/LambortishClock;)V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->mContext:Landroid/content/Context;

    .line 219
    iput-object p2, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    .line 220
    iput-object p3, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->gu:Lcom/amazon/identity/auth/device/storage/LambortishClock;

    return-void
.end method

.method public static declared-synchronized Y(Landroid/content/Context;)Lcom/amazon/identity/auth/device/storage/LocalDataStorage;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    monitor-enter v0

    .line 225
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->on:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    if-nez v1, :cond_0

    .line 227
    new-instance v1, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->on:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    .line 230
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->on:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Ljava/util/Date;Ljava/util/EnumSet;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 974
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 976
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->fx()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 978
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/gf;

    .line 979
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/identity/auth/device/ft;

    .line 981
    invoke-direct {p0, p2, p1, v2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/EnumSet;Ljava/util/Date;Lcom/amazon/identity/auth/device/gf;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 983
    invoke-direct {p0, v2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Lcom/amazon/identity/auth/device/gf;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 986
    :cond_1
    iget-object v2, v3, Lcom/amazon/identity/auth/device/ft;->nc:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 988
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/identity/auth/device/gf;

    invoke-direct {p0, p2, p1, v5}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/EnumSet;Ljava/util/Date;Lcom/amazon/identity/auth/device/gf;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 990
    iget-object v5, v3, Lcom/amazon/identity/auth/device/ft;->directedId:Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/identity/auth/device/gf;

    invoke-direct {p0, v5, v6, v4}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/gf;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 994
    :cond_3
    iget-object v2, v3, Lcom/amazon/identity/auth/device/ft;->tokens:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 996
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/identity/auth/device/gf;

    invoke-direct {p0, p2, p1, v5}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/EnumSet;Ljava/util/Date;Lcom/amazon/identity/auth/device/gf;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 998
    iget-object v5, v3, Lcom/amazon/identity/auth/device/ft;->directedId:Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/identity/auth/device/gf;

    invoke-direct {p0, v5, v6, v4}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->b(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/gf;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1003
    :cond_5
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->fy()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1005
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1007
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/identity/auth/device/gf;

    invoke-direct {p0, p2, p1, v5}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/EnumSet;Ljava/util/Date;Lcom/amazon/identity/auth/device/gf;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1009
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1010
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1011
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/identity/auth/device/gf;

    .line 1009
    invoke-direct {p0, v5, v6, v4}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/gf;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1016
    :cond_8
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/gf<",
            "Lcom/amazon/identity/auth/device/ft;",
            ">;>;"
        }
    .end annotation

    .line 1593
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oq:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1595
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->b(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oq:Ljava/util/Map;

    .line 1598
    :cond_0
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oq:Ljava/util/Map;

    return-object p1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/gf<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v3, "userdata"

    const-string/jumbo v4, "userdata_account_id"

    const-string/jumbo v5, "userdata_key"

    const-string/jumbo v6, "userdata_value"

    const-string/jumbo v7, "userdata_timestamp"

    const-string/jumbo v8, "userdata_deleted"

    const-string/jumbo v9, "userdata_dirty"

    .line 2308
    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v4

    const-string v2, "%s = ? and %s >= ? and %s = 0"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "userdata_account_id"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string/jumbo v6, "userdata_timestamp"

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-string/jumbo v6, "userdata_deleted"

    const/4 v9, 0x2

    aput-object v6, v5, v9

    .line 2316
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/String;

    aput-object p2, v6, v7

    .line 2320
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v6, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    .line 2309
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2325
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2332
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Landroid/database/Cursor;Ljava/util/Map;)V

    .line 2334
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 2340
    invoke-static {v1}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    return-object v0

    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    .line 2341
    throw p1
.end method

.method private a(Lcom/amazon/identity/auth/device/gf;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/gf<",
            "Lcom/amazon/identity/auth/device/ft;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1063
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1064
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/ft;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/ft;->directedId:Ljava/lang/String;

    const-string v2, "directedId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/ft;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/ft;->displayName:Ljava/lang/String;

    const-string v2, "display_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    invoke-direct {p0, v0, p1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Map;Lcom/amazon/identity/auth/device/gf;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/gf;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/gf<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1074
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "userdata_account"

    .line 1075
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "userdata_key"

    .line 1076
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "userdata_value"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    invoke-direct {p0, v0, p3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Map;Lcom/amazon/identity/auth/device/gf;)V

    return-object v0
.end method

.method private a(Landroid/database/Cursor;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/gf<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "userdata_key"

    .line 2556
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/hy;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "userdata_value"

    .line 2561
    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/hy;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userdata_timestamp"

    .line 2562
    invoke-static {p1, v2}, Lcom/amazon/identity/auth/device/hy;->c(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    const-string/jumbo v3, "userdata_dirty"

    .line 2563
    invoke-static {p1, v3}, Lcom/amazon/identity/auth/device/hy;->d(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v4, "userdata_deleted"

    .line 2564
    invoke-static {p1, v4}, Lcom/amazon/identity/auth/device/hy;->d(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result p1

    .line 2566
    new-instance v4, Lcom/amazon/identity/auth/device/gf;

    invoke-direct {v4, v1, v2, v3, p1}, Lcom/amazon/identity/auth/device/gf;-><init>(Ljava/lang/Object;Ljava/util/Date;ZZ)V

    invoke-interface {p2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 5

    .line 2433
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 2434
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p4, 0x1

    new-array v2, p4, [Ljava/lang/Object;

    aput-object p3, v2, v1

    const-string p3, "%s <= ?"

    .line 2439
    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-array v2, p4, [Ljava/lang/String;

    .line 2440
    invoke-virtual {p5}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p5

    aput-object p5, v2, v1

    .line 2437
    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    .line 2441
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v1

    aput-object p2, p3, p4

    const-string p1, "Update %d items not dirty in table %s."

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const-string p1, "LocalDataStorage"

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 7

    .line 2003
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 2004
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "userdata_dirty"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "userdata_account_id"

    aput-object v4, v2, v1

    const-string/jumbo v4, "userdata_key"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string/jumbo v4, "userdata_timestamp"

    const/4 v6, 0x2

    aput-object v4, v2, v6

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string v3, "%s = ? and %s = ? and %s = ? and %s = 1"

    .line 2008
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    aput-object p2, v3, v1

    aput-object p3, v3, v5

    .line 2013
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v6

    const-string/jumbo p2, "userdata"

    .line 2006
    invoke-virtual {p1, p2, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Lcom/amazon/identity/auth/device/gf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/amazon/identity/auth/device/gf<",
            "*>;)V"
        }
    .end annotation

    .line 2838
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/gf;->fh()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jg;->h(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 2839
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/gf;->fi()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 2840
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/gf;->isDirty()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    const-string p2, "\n"

    .line 2841
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 2846
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ","

    .line 2847
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/gf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/gf<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2819
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 2820
    invoke-direct {p0, p1, p3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 2821
    sget-object p2, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->om:[Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2823
    invoke-virtual {p4}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 2827
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 2830
    :goto_0
    invoke-direct {p0, p1, p4}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/lang/StringBuilder;Lcom/amazon/identity/auth/device/gf;)V

    return-void
.end method

.method private a(Ljava/util/Map;Lcom/amazon/identity/auth/device/gf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/identity/auth/device/gf<",
            "*>;)V"
        }
    .end annotation

    .line 1111
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/gf;->fh()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jg;->h(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "timestamp_key"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/gf;->isDirty()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dirty_key"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/gf;->fi()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "deleted_key"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2690
    invoke-static {p2, p3, p4}, Lcom/amazon/identity/auth/device/hy;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 0

    .line 1557
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;

    move-result-object p1

    .line 1559
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/gf;

    if-eqz p1, :cond_0

    .line 1561
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gf;->fi()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Ljava/util/Date;Z)Z
    .locals 1

    .line 336
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p4, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Ljava/util/Date;Z)Lcom/amazon/identity/auth/device/gf;

    move-result-object p1

    if-nez p1, :cond_1

    return p5

    .line 349
    :cond_1
    iget-object p2, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oq:Ljava/util/Map;

    if-eqz p2, :cond_2

    .line 351
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/fv;->getDirectedId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    xor-int/lit8 v1, p6, 0x1

    if-eqz v1, :cond_1

    .line 678
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 683
    :cond_1
    invoke-direct/range {p0 .. p6}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Lcom/amazon/identity/auth/device/gf;

    move-result-object p1

    if-nez p1, :cond_2

    return p6

    .line 690
    :cond_2
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->cn(Ljava/lang/String;)Lcom/amazon/identity/auth/device/gf;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 693
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/identity/auth/device/ft;

    iget-object p2, p2, Lcom/amazon/identity/auth/device/ft;->tokens:Ljava/util/Map;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    xor-int/lit8 v1, p7, 0x1

    if-eqz v1, :cond_1

    .line 591
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 597
    :cond_1
    invoke-direct/range {p0 .. p7}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Z)Lcom/amazon/identity/auth/device/gf;

    move-result-object p1

    if-nez p1, :cond_2

    return p7

    .line 603
    :cond_2
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->cn(Ljava/lang/String;)Lcom/amazon/identity/auth/device/gf;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 606
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/identity/auth/device/ft;

    iget-object p2, p2, Lcom/amazon/identity/auth/device/ft;->nc:Ljava/util/Map;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Z
    .locals 0

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-nez p4, :cond_0

    goto :goto_0

    .line 778
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Lcom/amazon/identity/auth/device/gf;

    move-result-object p1

    if-nez p1, :cond_1

    return p5

    .line 785
    :cond_1
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->cn(Ljava/lang/String;)Lcom/amazon/identity/auth/device/gf;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 788
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/identity/auth/device/ft;

    iget-object p2, p2, Lcom/amazon/identity/auth/device/ft;->tokens:Ljava/util/Map;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Date;Z)Z
    .locals 0

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Date;Z)Z

    move-result p1

    if-nez p1, :cond_1

    return p4

    .line 425
    :cond_1
    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->b(Ljava/lang/String;Ljava/util/Date;Z)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/util/Date;Lcom/amazon/identity/auth/device/gf;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Lcom/amazon/identity/auth/device/gf<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1058
    :cond_0
    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/gf;->c(Ljava/util/Date;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/util/EnumSet;Lcom/amazon/identity/auth/device/gf;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;",
            ">;",
            "Lcom/amazon/identity/auth/device/gf<",
            "*>;)Z"
        }
    .end annotation

    .line 1028
    sget-object v0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;->DirtyOnly:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/gf;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 1033
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;->NotDirtyOnly:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/gf;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1038
    :cond_1
    sget-object v0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;->Deleted:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/gf;->fi()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 1043
    :cond_2
    sget-object v0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;->NotDeleted:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/gf;->fi()Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private a(Ljava/util/EnumSet;Ljava/util/Date;Lcom/amazon/identity/auth/device/gf;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;",
            ">;",
            "Ljava/util/Date;",
            "Lcom/amazon/identity/auth/device/gf<",
            "*>;)Z"
        }
    .end annotation

    .line 1023
    invoke-direct {p0, p1, p3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/EnumSet;Lcom/amazon/identity/auth/device/gf;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Date;Lcom/amazon/identity/auth/device/gf;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 2855
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 2858
    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Ljava/util/Date;Z)Lcom/amazon/identity/auth/device/gf;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/fv;",
            "Ljava/util/Date;",
            "Z)",
            "Lcom/amazon/identity/auth/device/gf<",
            "Lcom/amazon/identity/auth/device/ft;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move/from16 v12, p5

    .line 1624
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1625
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/identity/auth/device/fv;->getDirectedId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "directed_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "display_name"

    .line 1626
    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    invoke-virtual/range {p4 .. p4}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "account_timestamp"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1628
    invoke-direct {v8, v12}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->h(Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "account_dirty"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v13, 0x0

    .line 1629
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "account_deleted"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v13

    const/4 v14, 0x1

    aput-object v3, v4, v14

    const-string v2, "%s = ? and %s < ?"

    .line 1636
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/String;

    .line 1639
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/identity/auth/device/fv;->getDirectedId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v13

    .line 1640
    invoke-virtual/range {p4 .. p4}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v14

    const-string v3, "accounts"

    .line 1633
    invoke-static {v9, v3, v0, v2, v1}, Lcom/amazon/identity/auth/device/hy;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    const/4 v15, 0x0

    const-string v7, "LocalDataStorage"

    if-nez v0, :cond_0

    const-string v0, "Failed to add account"

    .line 1644
    invoke-static {v7, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v15

    .line 1650
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/identity/auth/device/fv;->getDirectedId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v9, v0, v11}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Map;

    move-result-object v6

    .line 1651
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/identity/auth/device/fv;->eQ()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/util/Map$Entry;

    .line 1655
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/identity/auth/device/fv;->getDirectedId()Ljava/lang/String;

    move-result-object v2

    .line 1656
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 1657
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v13, v6

    move-object/from16 v6, p4

    move-object v14, v7

    move/from16 v7, p5

    .line 1654
    invoke-direct/range {v0 .. v7}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Z)Lcom/amazon/identity/auth/device/gf;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Failed to save account because saving userdata was unsuccessful"

    .line 1664
    invoke-static {v14, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v15

    .line 1668
    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v13, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v13

    move-object v7, v14

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto :goto_0

    :cond_2
    move-object v13, v6

    move-object v14, v7

    .line 1671
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/identity/auth/device/fv;->getDirectedId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v9, v0, v11}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Map;

    move-result-object v7

    .line 1672
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/identity/auth/device/fv;->eP()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/util/Map$Entry;

    .line 1676
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/identity/auth/device/fv;->getDirectedId()Ljava/lang/String;

    move-result-object v2

    .line 1677
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 1678
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p4

    move/from16 v6, p5

    .line 1675
    invoke-direct/range {v0 .. v6}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Lcom/amazon/identity/auth/device/gf;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "Failed to save account because saving token was unsuccessful"

    .line 1684
    invoke-static {v14, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v15

    .line 1688
    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1691
    :cond_4
    new-instance v0, Lcom/amazon/identity/auth/device/ft;

    .line 1692
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/identity/auth/device/fv;->getDirectedId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10, v13, v7}, Lcom/amazon/identity/auth/device/ft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 1693
    new-instance v1, Lcom/amazon/identity/auth/device/gf;

    const/4 v2, 0x1

    xor-int/2addr v2, v12

    const/4 v3, 0x0

    invoke-direct {v1, v0, v11, v2, v3}, Lcom/amazon/identity/auth/device/gf;-><init>(Ljava/lang/Object;Ljava/util/Date;ZZ)V

    return-object v1
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Lcom/amazon/identity/auth/device/gf;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Z)",
            "Lcom/amazon/identity/auth/device/gf<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2023
    invoke-direct {p0, p1, p2, p5}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Date;)Z

    move-result v0

    .line 2025
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "token_account_id"

    .line 2026
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "token_key"

    .line 2027
    invoke-virtual {v1, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "token_value"

    .line 2028
    invoke-virtual {v1, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    invoke-virtual {p5}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, "token_timestamp"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2030
    invoke-direct {p0, p6}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->h(Z)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v6, "token_dirty"

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2031
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v6, "token_deleted"

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v5, v6, v2

    const/4 v5, 0x2

    aput-object v3, v6, v5

    const-string v3, "%s = ? and %s < ? and %s = ?"

    .line 2037
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v7

    .line 2041
    invoke-virtual {p5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v2

    aput-object p3, v4, v5

    const-string/jumbo p2, "tokens"

    .line 2034
    invoke-static {p1, p2, v1, v3, v4}, Lcom/amazon/identity/auth/device/hy;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2048
    :cond_0
    new-instance p1, Lcom/amazon/identity/auth/device/gf;

    xor-int/lit8 p2, p6, 0x1

    invoke-direct {p1, p4, p5, p2, v0}, Lcom/amazon/identity/auth/device/gf;-><init>(Ljava/lang/Object;Ljava/util/Date;ZZ)V

    return-object p1
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Lcom/amazon/identity/auth/device/gf;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Z)",
            "Lcom/amazon/identity/auth/device/gf<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2131
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "token_account_id"

    .line 2132
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "token_key"

    .line 2133
    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "token_value"

    .line 2134
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2135
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "token_timestamp"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v3, 0x1

    .line 2136
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "token_deleted"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2137
    invoke-direct {p0, p5}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->h(Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v7, "token_dirty"

    invoke-virtual {v0, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v5, v7

    aput-object v2, v5, v3

    const/4 v1, 0x2

    aput-object v4, v5, v1

    const/4 v2, 0x3

    aput-object v6, v5, v2

    const-string v4, "%s = ? and %s = ? and %s < ? and %s = 0"

    .line 2140
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v7

    aput-object p3, v2, v3

    .line 2145
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    const-string/jumbo p2, "tokens"

    if-eqz p5, :cond_0

    .line 2150
    invoke-static {p1, p2, v0, v4, v2}, Lcom/amazon/identity/auth/device/hy;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    goto :goto_0

    .line 2155
    :cond_0
    invoke-virtual {p1, p2, v0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 v7, 0x1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    if-nez v7, :cond_2

    return-object p1

    .line 2165
    :cond_2
    new-instance p2, Lcom/amazon/identity/auth/device/gf;

    xor-int/lit8 p3, p5, 0x1

    invoke-direct {p2, p1, p4, p3, v3}, Lcom/amazon/identity/auth/device/gf;-><init>(Ljava/lang/Object;Ljava/util/Date;ZZ)V

    return-object p2
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/gf<",
            "Lcom/amazon/identity/auth/device/ft;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string/jumbo v0, "token_deleted"

    const-string/jumbo v2, "token_dirty"

    const-string/jumbo v3, "token_timestamp"

    const-string/jumbo v4, "token_value"

    const-string/jumbo v5, "token_key"

    const-string/jumbo v6, "userdata_deleted"

    const-string/jumbo v7, "userdata_dirty"

    const-string/jumbo v8, "userdata_timestamp"

    const-string/jumbo v9, "userdata_value"

    const-string/jumbo v10, "userdata_key"

    const-string v11, "_id"

    const-string v12, ")"

    const-string v13, " = "

    const-string v14, "account_deleted"

    const-string v15, "account_dirty"

    move-object/from16 v16, v0

    const-string v0, "account_timestamp"

    move-object/from16 v17, v2

    const-string v2, "display_name"

    move-object/from16 v18, v3

    const-string v3, "directed_id"

    move-object/from16 v19, v4

    const-string/jumbo v4, "tokens"

    move-object/from16 v20, v5

    const-string/jumbo v5, "userdata"

    move-object/from16 v21, v6

    const-string v6, "accounts"

    move-object/from16 v22, v7

    .line 2460
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v23, v7

    .line 19655
    :try_start_0
    new-instance v7, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v7}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    move-object/from16 v24, v8

    .line 19695
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v9

    const-string v9, "accounts LEFT OUTER JOIN "

    .line 19696
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19697
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ON ("

    .line 19698
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19699
    invoke-static {v6, v3}, Lcom/amazon/identity/auth/device/hy;->ak(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "userdata_account_id"

    .line 19700
    invoke-static {v5, v9}, Lcom/amazon/identity/auth/device/hy;->ak(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " LEFT OUTER JOIN tokens ON ("

    .line 19701
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19702
    invoke-static {v6, v3}, Lcom/amazon/identity/auth/device/hy;->ak(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "token_account_id"

    .line 19703
    invoke-static {v4, v9}, Lcom/amazon/identity/auth/device/hy;->ak(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19705
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 19656
    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 19658
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 19659
    invoke-direct {v1, v8, v6, v11, v11}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19661
    invoke-direct {v1, v8, v6, v3, v3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19662
    invoke-direct {v1, v8, v6, v2, v2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19663
    invoke-direct {v1, v8, v6, v0, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19664
    invoke-direct {v1, v8, v6, v15, v15}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19665
    invoke-direct {v1, v8, v6, v14, v14}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19667
    invoke-direct {v1, v8, v5, v10, v10}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v25

    .line 19668
    invoke-direct {v1, v8, v5, v6, v6}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v24

    .line 19669
    invoke-direct {v1, v8, v5, v6, v6}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v22

    .line 19670
    invoke-direct {v1, v8, v5, v6, v6}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v21

    .line 19671
    invoke-direct {v1, v8, v5, v6, v6}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v20

    .line 19673
    invoke-direct {v1, v8, v4, v5, v5}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v19

    .line 19674
    invoke-direct {v1, v8, v4, v5, v5}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v18

    .line 19675
    invoke-direct {v1, v8, v4, v5, v5}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v17

    .line 19676
    invoke-direct {v1, v8, v4, v5, v5}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v16

    .line 19677
    invoke-direct {v1, v8, v4, v5, v5}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19679
    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 19681
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v25, v4

    check-cast v25, [Ljava/lang/String;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v24, v7

    .line 19682
    invoke-virtual/range {v24 .. v31}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v5, p1

    const/4 v6, 0x0

    .line 2465
    :try_start_1
    invoke-virtual {v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_4

    .line 2466
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 2473
    :cond_0
    :goto_0
    invoke-static {v7, v3}, Lcom/amazon/identity/auth/device/hy;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v23

    .line 2474
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/identity/auth/device/gf;

    if-nez v6, :cond_1

    .line 2477
    invoke-static {v7, v2}, Lcom/amazon/identity/auth/device/hy;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2478
    invoke-static {v7, v0}, Lcom/amazon/identity/auth/device/hy;->c(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    .line 2479
    invoke-static {v7, v15}, Lcom/amazon/identity/auth/device/hy;->d(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v9

    .line 2480
    invoke-static {v7, v14}, Lcom/amazon/identity/auth/device/hy;->d(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v10

    .line 2482
    new-instance v11, Lcom/amazon/identity/auth/device/ft;

    invoke-direct {v11, v4, v6}, Lcom/amazon/identity/auth/device/ft;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    new-instance v6, Lcom/amazon/identity/auth/device/gf;

    invoke-direct {v6, v11, v8, v9, v10}, Lcom/amazon/identity/auth/device/gf;-><init>(Ljava/lang/Object;Ljava/util/Date;ZZ)V

    .line 2488
    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2491
    :cond_1
    invoke-virtual {v6}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/identity/auth/device/ft;

    iget-object v4, v4, Lcom/amazon/identity/auth/device/ft;->nc:Ljava/util/Map;

    invoke-direct {v1, v7, v4}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Landroid/database/Cursor;Ljava/util/Map;)V

    .line 2492
    invoke-virtual {v6}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/identity/auth/device/ft;

    iget-object v4, v4, Lcom/amazon/identity/auth/device/ft;->tokens:Ljava/util/Map;

    invoke-direct {v1, v7, v4}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->b(Landroid/database/Cursor;Ljava/util/Map;)V

    .line 2494
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2498
    invoke-virtual {v1, v5}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->i(Ljava/util/Map;)Ljava/util/Date;

    move-result-object v0

    .line 2499
    iget-object v2, v1, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->gu:Lcom/amazon/identity/auth/device/storage/LambortishClock;

    invoke-virtual {v2, v0}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->d(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "LamportTimestampUpdatedBasedOnDBSnapshot"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 2502
    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2509
    :cond_2
    invoke-static {v7}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    return-object v5

    :cond_3
    move-object/from16 v23, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_4
    :goto_1
    move-object/from16 v5, v23

    invoke-static {v7}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    return-object v5

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    const/4 v6, 0x0

    :goto_2
    move-object v7, v6

    :goto_3
    invoke-static {v7}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    .line 2510
    throw v0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/gf<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2348
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v3, "tokens"

    const-string/jumbo v4, "token_account_id"

    const-string/jumbo v5, "token_key"

    const-string/jumbo v6, "token_value"

    const-string/jumbo v7, "token_timestamp"

    const-string/jumbo v8, "token_deleted"

    const-string/jumbo v9, "token_dirty"

    .line 2353
    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v4

    const-string v2, "%s = ? and %s >= ? and %s = 0"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "token_account_id"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string/jumbo v6, "token_timestamp"

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-string/jumbo v6, "token_deleted"

    const/4 v9, 0x2

    aput-object v6, v5, v9

    .line 2361
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/String;

    aput-object p2, v6, v7

    .line 2365
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v6, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    .line 2354
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2370
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2377
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->b(Landroid/database/Cursor;Ljava/util/Map;)V

    .line 2379
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 2385
    invoke-static {v1}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    return-object v0

    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    .line 2386
    throw p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/gf;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/gf<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1087
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "token_account"

    .line 1088
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "token_key"

    .line 1089
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "token_value"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    invoke-direct {p0, v0, p3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Map;Lcom/amazon/identity/auth/device/gf;)V

    return-object v0
.end method

.method private b(Landroid/database/Cursor;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/gf<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "token_key"

    .line 2574
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/hy;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "token_value"

    .line 2580
    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/hy;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "token_timestamp"

    .line 2581
    invoke-static {p1, v2}, Lcom/amazon/identity/auth/device/hy;->c(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    const-string/jumbo v3, "token_dirty"

    .line 2582
    invoke-static {p1, v3}, Lcom/amazon/identity/auth/device/hy;->d(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v4, "token_deleted"

    .line 2583
    invoke-static {p1, v4}, Lcom/amazon/identity/auth/device/hy;->d(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result p1

    .line 2585
    new-instance v4, Lcom/amazon/identity/auth/device/gf;

    invoke-direct {v4, v1, v2, v3, p1}, Lcom/amazon/identity/auth/device/gf;-><init>(Ljava/lang/Object;Ljava/util/Date;ZZ)V

    invoke-interface {p2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 8

    .line 2071
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 2072
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "token_dirty"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "token_account_id"

    aput-object v4, v2, v1

    const-string/jumbo v4, "token_key"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string/jumbo v4, "token_timestamp"

    const/4 v6, 0x2

    aput-object v4, v2, v6

    const-string/jumbo v4, "token_deleted"

    const/4 v7, 0x3

    aput-object v4, v2, v7

    const/4 v4, 0x4

    aput-object v3, v2, v4

    const-string v3, "%s = ? and %s = ? and %s = ? and %s = 0 and %s = 1"

    .line 2076
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    aput-object p2, v3, v1

    aput-object p3, v3, v5

    .line 2082
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v6

    const-string/jumbo p2, "tokens"

    .line 2074
    invoke-virtual {p1, p2, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized b(Lcom/amazon/identity/auth/device/fv;Ljava/util/Date;)V
    .locals 10

    monitor-enter p0

    const/4 v0, 0x0

    .line 1701
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/gk;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1702
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1704
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "account_dirty"

    const/4 v3, 0x0

    .line 1705
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "accounts"

    const-string v4, "%s = ? and %s = ? and %s = 1 and %s = 0"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "directed_id"

    aput-object v6, v5, v3

    const-string v6, "account_timestamp"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string v6, "account_dirty"

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const/4 v6, 0x3

    const-string v9, "account_deleted"

    aput-object v9, v5, v6

    .line 1709
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    .line 1714
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->getDirectedId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v7

    .line 1707
    invoke-virtual {v0, v2, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1716
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->eQ()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1718
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->getDirectedId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v3, v2, p2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_0

    .line 1721
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->eP()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1723
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->getDirectedId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v3, v2, p2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_1

    .line 1725
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1726
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/gj;->W(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 1732
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1733
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    .line 1736
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_3

    .line 1732
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1733
    iget-object p2, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 1735
    :cond_3
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/util/Date;)V
    .locals 13

    monitor-enter p0

    const/4 v0, 0x0

    .line 1854
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/gk;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1855
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1857
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "account_dirty"

    const/4 v3, 0x0

    .line 1858
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "accounts"

    const-string v4, "%s = ? and %s = ? and %s = 1 and %s = 1"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "directed_id"

    aput-object v7, v6, v3

    const-string v7, "account_timestamp"

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-string v7, "account_deleted"

    const/4 v9, 0x2

    aput-object v7, v6, v9

    const-string v7, "account_dirty"

    const/4 v10, 0x3

    aput-object v7, v6, v10

    .line 1863
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v6, v9, [Ljava/lang/String;

    aput-object p1, v6, v3

    .line 1868
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 1861
    invoke-virtual {v0, v2, v1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1870
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "userdata_dirty"

    .line 1871
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "userdata"

    const-string v4, "%s = ? and %s = ? and %s = 1 and %s = 1"

    new-array v6, v5, [Ljava/lang/Object;

    const-string/jumbo v7, "userdata_account_id"

    aput-object v7, v6, v3

    const-string/jumbo v7, "userdata_timestamp"

    aput-object v7, v6, v8

    const-string/jumbo v7, "userdata_deleted"

    aput-object v7, v6, v9

    const-string/jumbo v7, "userdata_dirty"

    aput-object v7, v6, v10

    .line 1876
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v6, v9, [Ljava/lang/String;

    aput-object p1, v6, v3

    .line 1881
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 1874
    invoke-virtual {v0, v2, v1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1883
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "token_dirty"

    .line 1884
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "tokens"

    const-string v4, "%s = ? and %s = ? and %s = 1 and %s = 1"

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "token_account_id"

    aput-object v6, v5, v3

    const-string/jumbo v6, "token_timestamp"

    aput-object v6, v5, v8

    const-string/jumbo v6, "token_deleted"

    aput-object v6, v5, v9

    const-string/jumbo v6, "token_dirty"

    aput-object v6, v5, v10

    .line 1889
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/String;

    aput-object p1, v5, v3

    .line 1894
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v8

    .line 1887
    invoke-virtual {v0, v2, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1895
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1896
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/gj;->W(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1902
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1903
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    .line 1906
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    .line 1902
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1903
    iget-object p2, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 1905
    :cond_1
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b(Ljava/lang/String;Ljava/util/Date;Z)V
    .locals 9

    const/4 v0, 0x1

    xor-int/2addr p3, v0

    .line 432
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->cn(Ljava/lang/String;)Lcom/amazon/identity/auth/device/gf;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 435
    new-instance v2, Lcom/amazon/identity/auth/device/ft;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/identity/auth/device/ft;

    iget-object v3, v3, Lcom/amazon/identity/auth/device/ft;->directedId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/amazon/identity/auth/device/ft;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    new-instance v3, Lcom/amazon/identity/auth/device/gf;

    invoke-direct {v3, v2, p2, p3, v0}, Lcom/amazon/identity/auth/device/gf;-><init>(Ljava/lang/Object;Ljava/util/Date;ZZ)V

    .line 439
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/identity/auth/device/ft;

    iget-object v5, v5, Lcom/amazon/identity/auth/device/ft;->nc:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 441
    iget-object v7, v2, Lcom/amazon/identity/auth/device/ft;->nc:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    new-instance v8, Lcom/amazon/identity/auth/device/gf;

    invoke-direct {v8, v4, p2, p3, v0}, Lcom/amazon/identity/auth/device/gf;-><init>(Ljava/lang/Object;Ljava/util/Date;ZZ)V

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 447
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/ft;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/ft;->tokens:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 449
    iget-object v6, v2, Lcom/amazon/identity/auth/device/ft;->tokens:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    new-instance v7, Lcom/amazon/identity/auth/device/gf;

    invoke-direct {v7, v4, p2, p3, v0}, Lcom/amazon/identity/auth/device/gf;-><init>(Ljava/lang/Object;Ljava/util/Date;ZZ)V

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 452
    :cond_1
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->fx()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Z)Z
    .locals 0

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    if-nez p6, :cond_0

    goto :goto_0

    .line 897
    :cond_0
    invoke-direct/range {p0 .. p7}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Z)Lcom/amazon/identity/auth/device/gf;

    move-result-object p1

    if-nez p1, :cond_1

    return p7

    .line 904
    :cond_1
    iget-object p4, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->op:Ljava/util/Map;

    if-eqz p4, :cond_3

    .line 906
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map;

    if-nez p4, :cond_2

    .line 909
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 910
    iget-object p5, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->op:Ljava/util/Map;

    invoke-interface {p5, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    :cond_2
    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Date;Z)Z
    .locals 7

    .line 1743
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "directed_id"

    .line 1744
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "display_name"

    .line 1745
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1746
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "account_timestamp"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1747
    invoke-direct {p0, p4}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->h(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "account_dirty"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x1

    .line 1748
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "account_deleted"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v4, v6

    aput-object v3, v4, v2

    const/4 v1, 0x2

    aput-object v5, v4, v1

    const-string v3, "%s = ? and %s < ? and %s = 0"

    .line 1751
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v6

    .line 1755
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v4, "accounts"

    if-eqz p4, :cond_0

    .line 1762
    invoke-static {p1, v4, v0, v3, v1}, Lcom/amazon/identity/auth/device/hy;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 1766
    :cond_0
    invoke-virtual {p1, v4, v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1770
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Date;Z)V

    .line 1772
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Date;Z)V

    return v2
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Z)Lcom/amazon/identity/auth/device/gf;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Date;",
            "Z)",
            "Lcom/amazon/identity/auth/device/gf<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p5, :cond_1

    .line 1916
    invoke-direct {p0, p1, p2, p6}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Date;)Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p5, 0x1

    const/4 v5, 0x1

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    move v7, p7

    .line 1918
    invoke-direct/range {v0 .. v7}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Z)Lcom/amazon/identity/auth/device/gf;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/gf;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/gf<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "namespace"

    .line 1101
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "device_data_key"

    .line 1102
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "device_data_value"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    invoke-direct {p0, v0, p3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Map;Lcom/amazon/identity/auth/device/gf;)V

    return-object v0
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Date;Z)V
    .locals 6

    .line 1814
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "userdata_value"

    .line 1815
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1816
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "userdata_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1817
    invoke-direct {p0, p4}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->h(Z)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string/jumbo v1, "userdata_dirty"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p4, 0x1

    .line 1818
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, "userdata_deleted"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "userdata_account_id"

    const/4 v5, 0x0

    aput-object v4, v1, v5

    aput-object v2, v1, p4

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const-string v3, "%s = ? and %s < ? and %s = 0"

    .line 1822
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v5

    .line 1826
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p4

    const-string/jumbo p2, "userdata"

    .line 1820
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Date;)Z
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "directed_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v4, "account_timestamp"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-string v4, "%s = ? and %s > ?"

    .line 2714
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p2, v0, v3

    .line 2717
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v5

    const-string p2, "accounts"

    .line 2711
    invoke-static {p1, p2, v2, v1, v0}, Lcom/amazon/identity/auth/device/hy;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return v5

    :cond_0
    return v3
.end method

.method private cm(Ljava/lang/String;)Lcom/amazon/identity/auth/device/gf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/identity/auth/device/gf<",
            "Lcom/amazon/identity/auth/device/ft;",
            ">;"
        }
    .end annotation

    .line 1566
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->fx()Ljava/util/Map;

    move-result-object v0

    .line 1568
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/gf;

    return-object p1
.end method

.method private cn(Ljava/lang/String;)Lcom/amazon/identity/auth/device/gf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/identity/auth/device/gf<",
            "Lcom/amazon/identity/auth/device/ft;",
            ">;"
        }
    .end annotation

    .line 1573
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oq:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1578
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/gf;

    return-object p1
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Z)Lcom/amazon/identity/auth/device/gf;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Date;",
            "Z)",
            "Lcom/amazon/identity/auth/device/gf<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1929
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "userdata_account_id"

    .line 1930
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "userdata_key"

    .line 1931
    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "userdata_value"

    .line 1932
    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    invoke-virtual {p6}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "userdata_timestamp"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1934
    invoke-direct {p0, p7}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->h(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v5, "userdata_dirty"

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1935
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v5, "userdata_deleted"

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v2, 0x2

    aput-object v4, v5, v2

    const-string v4, "%s = ? and %s = ? and %s < ?"

    .line 1941
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/String;

    aput-object p2, v3, v6

    aput-object p3, v3, v1

    .line 1945
    invoke-virtual {p6}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v2

    const-string/jumbo p2, "userdata"

    .line 1938
    invoke-static {p1, p2, v0, v4, v3}, Lcom/amazon/identity/auth/device/hy;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1952
    :cond_0
    new-instance p1, Lcom/amazon/identity/auth/device/gf;

    xor-int/lit8 p2, p7, 0x1

    invoke-direct {p1, p4, p6, p2, p5}, Lcom/amazon/identity/auth/device/gf;-><init>(Ljava/lang/Object;Ljava/util/Date;ZZ)V

    return-object p1
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Date;Z)V
    .locals 6

    .line 1834
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "token_value"

    .line 1835
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1836
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "token_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1837
    invoke-direct {p0, p4}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->h(Z)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string/jumbo v1, "token_dirty"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p4, 0x1

    .line 1838
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, "token_deleted"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "token_account_id"

    const/4 v5, 0x0

    aput-object v4, v1, v5

    aput-object v2, v1, p4

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const-string v3, "%s = ? and %s < ? and %s = 0"

    .line 1842
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v5

    .line 1846
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p4

    const-string/jumbo p2, "tokens"

    .line 1840
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Z)Lcom/amazon/identity/auth/device/gf;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Date;",
            "Z)",
            "Lcom/amazon/identity/auth/device/gf<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2226
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "device_data_namespace"

    .line 2227
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "device_data_key"

    .line 2228
    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "device_data_value"

    .line 2229
    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    invoke-virtual {p6}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "device_data_timestamp"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2231
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "device_data_deleted"

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2232
    invoke-direct {p0, p7}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->h(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "device_data_dirty"

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v2, 0x2

    aput-object v4, v5, v2

    const-string v4, "%s = ? and %s = ? and %s < ?"

    .line 2238
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/String;

    aput-object p2, v3, v6

    aput-object p3, v3, v1

    .line 2242
    invoke-virtual {p6}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v2

    const-string p2, "device_data"

    .line 2235
    invoke-static {p1, p2, v0, v4, v3}, Lcom/amazon/identity/auth/device/hy;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2249
    :cond_0
    new-instance p1, Lcom/amazon/identity/auth/device/gf;

    xor-int/lit8 p2, p7, 0x1

    invoke-direct {p1, p4, p6, p2, p5}, Lcom/amazon/identity/auth/device/gf;-><init>(Ljava/lang/Object;Ljava/util/Date;ZZ)V

    return-object p1
.end method

.method private declared-synchronized e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1981
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/gk;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1982
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1984
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 1985
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1986
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/gj;->W(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1992
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1993
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    .line 1996
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    .line 1992
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1993
    iget-object p2, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 1995
    :cond_1
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private e(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "directedId"

    .line 1300
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private declared-synchronized f(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 1

    monitor-enter p0

    .line 2056
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/gk;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2058
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2062
    :try_start_1
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2063
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 2062
    :try_start_2
    iget-object p2, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 2063
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private f(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v0, "userdata_account"

    .line 1351
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private fA()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/gf<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 2599
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 2606
    :try_start_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/gk;->b(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "device_data"

    const-string v5, "device_data_namespace"

    const-string v6, "device_data_key"

    const-string v7, "device_data_value"

    const-string v8, "device_data_timestamp"

    const-string v9, "device_data_dirty"

    const-string v10, "device_data_deleted"

    .line 2608
    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 2609
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2616
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "device_data_namespace"

    .line 2623
    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/hy;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2624
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-nez v3, :cond_1

    .line 2627
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2628
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "device_data_key"

    .line 2631
    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/hy;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "device_data_value"

    .line 2632
    invoke-static {v1, v4}, Lcom/amazon/identity/auth/device/hy;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "device_data_timestamp"

    .line 2633
    invoke-static {v1, v5}, Lcom/amazon/identity/auth/device/hy;->c(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    const-string v6, "device_data_dirty"

    .line 2634
    invoke-static {v1, v6}, Lcom/amazon/identity/auth/device/hy;->d(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v6

    const-string v7, "device_data_deleted"

    .line 2635
    invoke-static {v1, v7}, Lcom/amazon/identity/auth/device/hy;->d(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v7

    .line 2637
    new-instance v8, Lcom/amazon/identity/auth/device/gf;

    invoke-direct {v8, v4, v5, v6, v7}, Lcom/amazon/identity/auth/device/gf;-><init>(Ljava/lang/Object;Ljava/util/Date;ZZ)V

    invoke-interface {v3, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2642
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 2648
    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    .line 2649
    iget-object v1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 2648
    invoke-static {v1}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    .line 2649
    iget-object v1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 2650
    throw v0
.end method

.method private fx()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/gf<",
            "Lcom/amazon/identity/auth/device/ft;",
            ">;>;"
        }
    .end annotation

    .line 1583
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oq:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1585
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->fz()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oq:Ljava/util/Map;

    .line 1588
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oq:Ljava/util/Map;

    return-object v0
.end method

.method private fy()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/gf<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 1610
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->op:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1612
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->fA()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->op:Ljava/util/Map;

    .line 1615
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->op:Ljava/util/Map;

    return-object v0
.end method

.method private fz()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/gf<",
            "Lcom/amazon/identity/auth/device/ft;",
            ">;>;"
        }
    .end annotation

    .line 2449
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/gk;->b(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2450
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->b(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2454
    iget-object v1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 2455
    throw v0
.end method

.method private declared-synchronized g(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 11

    monitor-enter p0

    .line 2173
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/gk;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2175
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "token_dirty"

    const/4 v3, 0x0

    .line 2176
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "tokens"

    const-string v4, "%s = ? and %s = ? and %s = ? and %s = 1 and %s = 1"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "token_account_id"

    aput-object v6, v5, v3

    const-string/jumbo v6, "token_key"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string/jumbo v6, "token_timestamp"

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const-string/jumbo v6, "token_deleted"

    const/4 v9, 0x3

    aput-object v6, v5, v9

    const/4 v6, 0x4

    const-string/jumbo v10, "token_dirty"

    aput-object v10, v5, v6

    .line 2180
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/String;

    aput-object p1, v5, v3

    aput-object p2, v5, v7

    .line 2186
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v8

    .line 2178
    invoke-virtual {v0, v2, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2187
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/gj;->W(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2192
    :try_start_1
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2193
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 2192
    :try_start_2
    iget-object p2, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 2193
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized g(Ljava/util/Date;)Z
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    .line 2394
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/gk;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2395
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v4, "accounts"

    const-string v5, "account_timestamp"

    const-string v6, "account_dirty"

    move-object v2, p0

    move-object v3, v0

    move-object v7, p1

    .line 2397
    invoke-direct/range {v2 .. v7}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    const-string/jumbo v4, "userdata"

    const-string/jumbo v5, "userdata_timestamp"

    const-string/jumbo v6, "userdata_dirty"

    move-object v2, p0

    move-object v3, v0

    move-object v7, p1

    .line 2402
    invoke-direct/range {v2 .. v7}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    const-string/jumbo v4, "tokens"

    const-string/jumbo v5, "token_timestamp"

    const-string/jumbo v6, "token_dirty"

    move-object v2, p0

    move-object v3, v0

    move-object v7, p1

    .line 2407
    invoke-direct/range {v2 .. v7}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    const-string v4, "device_data"

    const-string v5, "device_data_timestamp"

    const-string v6, "device_data_dirty"

    move-object v2, p0

    move-object v3, v0

    move-object v7, p1

    .line 2408
    invoke-direct/range {v2 .. v7}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 2413
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 2414
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/gj;->W(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2421
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2422
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    const/4 p1, 0x1

    .line 2415
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    .line 2421
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2422
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 2424
    :cond_1
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private g(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v0, "token_account"

    .line 1408
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private h(Z)I
    .locals 1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private declared-synchronized h(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 11

    monitor-enter p0

    .line 2257
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/gk;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2259
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "device_data_dirty"

    const/4 v3, 0x0

    .line 2260
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "device_data"

    const-string v4, "%s = ? and %s = ? and %s = ? and %s = 0 and %s = 1"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "device_data_namespace"

    aput-object v6, v5, v3

    const-string v6, "device_data_key"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string v6, "device_data_timestamp"

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const-string v6, "device_data_deleted"

    const/4 v9, 0x3

    aput-object v6, v5, v9

    const/4 v6, 0x4

    const-string v10, "device_data_dirty"

    aput-object v10, v5, v6

    .line 2264
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/String;

    aput-object p1, v5, v3

    aput-object p2, v5, v7

    .line 2270
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v8

    .line 2262
    invoke-virtual {v0, v2, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2271
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/gj;->W(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2276
    :try_start_1
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2277
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 2276
    :try_start_2
    iget-object p2, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 2277
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private h(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v0, "namespace"

    .line 1472
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 1

    if-nez p1, :cond_0

    return-object p2

    .line 2547
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    :cond_1
    return-object p1
.end method

.method public declared-synchronized a(Lcom/amazon/identity/auth/device/fv;Ljava/util/Date;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "dateTime"

    .line 359
    invoke-static {p2, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->b(Lcom/amazon/identity/auth/device/fv;Ljava/util/Date;)V

    .line 363
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->getDirectedId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->cn(Ljava/lang/String;)Lcom/amazon/identity/auth/device/gf;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 366
    monitor-exit p0

    return-void

    .line 369
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/gf;->a(Ljava/util/Date;)V

    .line 371
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/ft;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/ft;->nc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 373
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/gf;

    invoke-virtual {v1, p2}, Lcom/amazon/identity/auth/device/gf;->a(Ljava/util/Date;)V

    goto :goto_0

    .line 376
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/ft;

    iget-object p1, p1, Lcom/amazon/identity/auth/device/ft;->tokens:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 378
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/gf;

    invoke-virtual {v0, p2}, Lcom/amazon/identity/auth/device/gf;->a(Ljava/util/Date;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 380
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "directedId"

    .line 614
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    .line 615
    invoke-static {p2, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateTime"

    .line 616
    invoke-static {p3, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 618
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 620
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->cn(Ljava/lang/String;)Lcom/amazon/identity/auth/device/gf;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 623
    monitor-exit p0

    return-void

    .line 626
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/ft;

    iget-object p1, p1, Lcom/amazon/identity/auth/device/ft;->nc:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/gf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 629
    monitor-exit p0

    return-void

    .line 632
    :cond_1
    :try_start_2
    invoke-virtual {p1, p3}, Lcom/amazon/identity/auth/device/gf;->a(Ljava/util/Date;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 633
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/util/Date;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "directedId"

    .line 458
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateTime"

    .line 459
    invoke-static {p2, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->b(Ljava/lang/String;Ljava/util/Date;)V

    .line 463
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->cn(Ljava/lang/String;)Lcom/amazon/identity/auth/device/gf;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 466
    monitor-exit p0

    return-void

    .line 469
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/gf;->a(Ljava/util/Date;)V

    .line 471
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/ft;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/ft;->nc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/gf;

    .line 473
    invoke-virtual {v1, p2}, Lcom/amazon/identity/auth/device/gf;->a(Ljava/util/Date;)V

    goto :goto_0

    .line 476
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/ft;

    iget-object p1, p1, Lcom/amazon/identity/auth/device/ft;->tokens:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/gf;

    .line 478
    invoke-virtual {v0, p2}, Lcom/amazon/identity/auth/device/gf;->a(Ljava/util/Date;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 480
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/amazon/identity/auth/device/fv;Ljava/util/Date;Z)Z
    .locals 12

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 520
    :try_start_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/gk;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 521
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v2, 0x1

    .line 525
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->eQ()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 528
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->getDirectedId()Ljava/lang/String;

    move-result-object v5

    .line 529
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    .line 530
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    move-object v9, p2

    move v10, p3

    .line 527
    invoke-direct/range {v3 .. v10}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Z)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 540
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->eP()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 542
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->getDirectedId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    move-object v3, p0

    move-object v4, v1

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x0

    :cond_3
    if-eqz v2, :cond_4

    .line 551
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 552
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/gj;->W(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz v1, :cond_5

    .line 565
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 566
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 555
    :cond_5
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "LocalDataStorage"

    const-string p2, "Cannot set token since it violated a uniqueness constraint"

    .line 559
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_6

    .line 565
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 566
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 570
    :cond_6
    monitor-exit p0

    return v0

    :goto_0
    if-eqz v1, :cond_7

    .line 565
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 566
    iget-object p2, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 568
    :cond_7
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Ljava/util/Date;Z)Z
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/gk;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    .line 305
    invoke-direct/range {v2 .. v7}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Ljava/util/Date;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 308
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 309
    iget-object p2, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/amazon/identity/auth/device/gj;->W(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    .line 322
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 323
    iget-object p2, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 312
    :cond_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "LocalDataStorage"

    const-string p2, "Cannot add account since it violated a uniqueness constraint"

    .line 316
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 322
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 323
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    const/4 p1, 0x0

    .line 327
    monitor-exit p0

    return p1

    :goto_0
    if-eqz v0, :cond_3

    .line 322
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 323
    iget-object p2, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 325
    :cond_3
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Z
    .locals 1

    monitor-enter p0

    .line 510
    :try_start_0
    new-instance v0, Lcom/amazon/identity/auth/device/fv;

    invoke-static {p2, p3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/fv;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {p0, v0, p4, p5}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Lcom/amazon/identity/auth/device/fv;Ljava/util/Date;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Z
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    .line 745
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/gk;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 746
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    .line 748
    invoke-direct/range {v2 .. v7}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 751
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 752
    iget-object p2, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/amazon/identity/auth/device/gj;->W(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    .line 761
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 762
    iget-object p2, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 755
    :cond_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    .line 761
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 762
    iget-object p2, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 764
    :cond_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/util/Date;Z)Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/gk;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 390
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Date;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 393
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 394
    iget-object p2, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/amazon/identity/auth/device/gj;->W(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    .line 403
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 404
    iget-object p2, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 397
    :cond_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    .line 403
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 404
    iget-object p2, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 406
    :cond_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    .line 489
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->cm(Ljava/lang/String;)Lcom/amazon/identity/auth/device/gf;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 490
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gf;->fi()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 495
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/ft;

    iget-object p1, p1, Lcom/amazon/identity/auth/device/ft;->nc:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/gf;

    if-eqz p1, :cond_3

    .line 496
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gf;->fi()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 501
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 498
    :cond_3
    :goto_0
    monitor-exit p0

    return-object v0

    .line 492
    :cond_4
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 486
    :cond_5
    :goto_2
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "directedId"

    .line 716
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    .line 717
    invoke-static {p2, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateTime"

    .line 718
    invoke-static {p3, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 720
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->f(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 722
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->cn(Ljava/lang/String;)Lcom/amazon/identity/auth/device/gf;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 725
    monitor-exit p0

    return-void

    .line 728
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/ft;

    iget-object p1, p1, Lcom/amazon/identity/auth/device/ft;->tokens:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/gf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 731
    monitor-exit p0

    return-void

    .line 734
    :cond_1
    :try_start_2
    invoke-virtual {p1, p3}, Lcom/amazon/identity/auth/device/gf;->a(Ljava/util/Date;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 735
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Z
    .locals 2

    monitor-enter p0

    .line 663
    :try_start_0
    new-instance v0, Lcom/amazon/identity/auth/device/fv;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {v0, p1, v1, p2}, Lcom/amazon/identity/auth/device/fv;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {p0, v0, p4, p5}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Lcom/amazon/identity/auth/device/fv;Ljava/util/Date;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 2868
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2870
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_0
    return-void
.end method

.method public declared-synchronized c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "directedId"

    .line 795
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    .line 796
    invoke-static {p2, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateTime"

    .line 797
    invoke-static {p3, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 799
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->g(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 801
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->cn(Ljava/lang/String;)Lcom/amazon/identity/auth/device/gf;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 804
    monitor-exit p0

    return-void

    .line 807
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/ft;

    iget-object p1, p1, Lcom/amazon/identity/auth/device/ft;->tokens:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/gf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 810
    monitor-exit p0

    return-void

    .line 813
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_2

    .line 815
    monitor-exit p0

    return-void

    .line 818
    :cond_2
    :try_start_3
    invoke-virtual {p1, p3}, Lcom/amazon/identity/auth/device/gf;->a(Ljava/util/Date;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 819
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Z
    .locals 10

    monitor-enter p0

    const/4 v0, 0x0

    .line 855
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/gk;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 856
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    move v9, p5

    .line 858
    invoke-direct/range {v2 .. v9}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 861
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 862
    iget-object p2, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/amazon/identity/auth/device/gj;->W(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    .line 875
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 876
    iget-object p2, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 865
    :cond_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "LocalDataStorage"

    const-string p2, "Cannot set device data since it violated a uniqueness constraint"

    .line 869
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 875
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 876
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    const/4 p1, 0x0

    .line 880
    monitor-exit p0

    return p1

    :goto_0
    if-eqz v0, :cond_3

    .line 875
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 876
    iget-object p2, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 878
    :cond_3
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/util/Collection;)Z
    .locals 0
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

    monitor-enter p0

    .line 1118
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->fv()V

    .line 1119
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->d(Ljava/util/Collection;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ca(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
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

    monitor-enter p0

    .line 253
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 254
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 256
    monitor-exit p0

    return-object v0

    .line 259
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->cm(Ljava/lang/String;)Lcom/amazon/identity/auth/device/gf;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 260
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gf;->fi()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 265
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/ft;

    iget-object p1, p1, Lcom/amazon/identity/auth/device/ft;->nc:Ljava/util/Map;

    .line 266
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 268
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "actor/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 270
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/gf;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 273
    :cond_3
    monitor-exit p0

    return-object v0

    .line 262
    :cond_4
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ce(Ljava/lang/String;)Ljava/util/Set;
    .locals 11
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

    monitor-enter p0

    .line 2094
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 2099
    :try_start_1
    iget-object v2, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/gk;->b(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v4, "tokens"

    const-string/jumbo v2, "token_account_id"

    const-string/jumbo v5, "token_key"

    const-string/jumbo v6, "token_deleted"

    .line 2101
    filled-new-array {v2, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const-string v2, "%s = ? and %s = 0"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "token_account_id"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string/jumbo v7, "token_deleted"

    const/4 v9, 0x1

    aput-object v7, v6, v9

    .line 2103
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/String;

    aput-object p1, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 2101
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2106
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 2111
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "token_key"

    .line 17590
    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/hy;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17591
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 17593
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2120
    :cond_1
    :try_start_2
    invoke-static {v1}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    .line 2121
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2116
    monitor-exit p0

    return-object v0

    .line 2120
    :cond_2
    :goto_1
    :try_start_3
    invoke-static {v1}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    .line 2121
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2108
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 2120
    :try_start_4
    invoke-static {v1}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    .line 2121
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 2122
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearCache()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1543
    :try_start_0
    iput-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oq:Ljava/util/Map;

    .line 1544
    iput-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->op:Ljava/util/Map;

    const-string v0, "ClearingCache"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 1545
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1546
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "namespace"

    .line 921
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    .line 922
    invoke-static {p2, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateTime"

    .line 923
    invoke-static {p3, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 925
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->h(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 927
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->op:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 929
    monitor-exit p0

    return-void

    .line 932
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->op:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 935
    monitor-exit p0

    return-void

    .line 938
    :cond_1
    :try_start_2
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/gf;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_2

    .line 941
    monitor-exit p0

    return-void

    .line 944
    :cond_2
    :try_start_3
    invoke-virtual {p1, p3}, Lcom/amazon/identity/auth/device/gf;->a(Ljava/util/Date;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 945
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Ljava/util/Collection;)Z
    .locals 13
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

    monitor-enter p0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1126
    monitor-exit p0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 1132
    :try_start_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/gk;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1133
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1136
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v11, 0x1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string/jumbo v4, "timestamp_key"

    .line 1138
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/amazon/identity/auth/device/jg;->dF(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    const-string v4, "deleted_key"

    .line 1139
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 1141
    invoke-direct {p0, v3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->e(Ljava/util/Map;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    const-string v4, "directedId"

    .line 7308
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    if-nez v8, :cond_3

    const-string v5, "display_name"

    .line 7317
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 7318
    new-instance v6, Lcom/amazon/identity/auth/device/fv;

    invoke-direct {v6, v4, v1, v1}, Lcom/amazon/identity/auth/device/fv;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, v2

    move-object v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Ljava/util/Date;Z)Z

    move-result v5

    goto :goto_1

    .line 7322
    :cond_3
    invoke-direct {p0, v2, v4, v9, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Date;Z)Z

    move-result v5

    :goto_1
    and-int/2addr v11, v5

    goto :goto_0

    .line 1147
    :cond_4
    invoke-direct {p0, v3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->f(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "userdata_account"

    .line 7359
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    const-string/jumbo v4, "userdata_key"

    .line 7365
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v4, "userdata_value"

    .line 7366
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/lang/String;

    const/4 v12, 0x1

    move-object v3, p0

    move-object v4, v2

    move-object v5, v6

    move-object v6, v7

    move-object v7, v10

    move v10, v12

    .line 7368
    invoke-direct/range {v3 .. v10}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Z)Z

    move-result v5

    goto :goto_1

    .line 1153
    :cond_6
    invoke-direct {p0, v3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->g(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string/jumbo v4, "token_account"

    .line 7416
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_7

    goto :goto_1

    :cond_7
    const-string/jumbo v4, "token_key"

    .line 7422
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    if-nez v8, :cond_8

    const-string/jumbo v4, "token_value"

    .line 7426
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    const/4 v10, 0x1

    move-object v3, p0

    move-object v4, v2

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    .line 7427
    invoke-direct/range {v3 .. v9}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Z

    move-result v5

    goto :goto_1

    :cond_8
    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, v2

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    .line 7431
    invoke-direct/range {v3 .. v8}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Z

    move-result v5

    goto :goto_1

    .line 1159
    :cond_9
    invoke-direct {p0, v3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->h(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "namespace"

    .line 7480
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_a

    goto/16 :goto_1

    :cond_a
    const-string v4, "device_data_key"

    .line 7486
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    const-string v4, "device_data_value"

    .line 7487
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/lang/String;

    const/4 v12, 0x1

    move-object v3, p0

    move-object v4, v2

    move-object v5, v6

    move-object v6, v7

    move-object v7, v10

    move v10, v12

    .line 7489
    invoke-direct/range {v3 .. v10}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Z)Z

    move-result v5

    goto/16 :goto_1

    .line 1165
    :cond_b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1166
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/gj;->W(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_c

    .line 1174
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1175
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1168
    :cond_c
    monitor-exit p0

    return v11

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v1, :cond_d

    .line 1174
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1175
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 1177
    :cond_d
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Ljava/util/Date;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 963
    :try_start_0
    sget-object v0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;->DirtyOnly:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Date;Ljava/util/EnumSet;)Ljava/util/Collection;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Ljava/util/Collection;)Z
    .locals 12
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

    monitor-enter p0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1188
    monitor-exit p0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 1194
    :try_start_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/gk;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1195
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1198
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string/jumbo v4, "timestamp_key"

    .line 1200
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/amazon/identity/auth/device/jg;->dF(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    const-string v5, "deleted_key"

    .line 1201
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v3, "LocalDataStorage"

    const-string v4, "Given a row that is not marked deleted. Cannot remove from the database!"

    .line 1205
    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1209
    :cond_2
    invoke-direct {p0, v3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->e(Ljava/util/Map;)Z

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v5, :cond_6

    const-string v5, "directedId"

    .line 8331
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v5, "%s = ? and %s = ? and %s = 1"

    new-array v9, v6, [Ljava/lang/Object;

    const-string v10, "directed_id"

    aput-object v10, v9, v8

    const-string v10, "account_timestamp"

    aput-object v10, v9, v0

    const-string v10, "account_deleted"

    aput-object v10, v9, v7

    .line 8783
    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v9, v7, [Ljava/lang/String;

    aput-object v3, v9, v8

    .line 8787
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v0

    const-string v10, "accounts"

    .line 8788
    invoke-virtual {v1, v10, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v5, "%s = ? and %s = ? and %s = 1"

    new-array v9, v6, [Ljava/lang/Object;

    const-string/jumbo v10, "userdata_account_id"

    aput-object v10, v9, v8

    const-string/jumbo v10, "userdata_timestamp"

    aput-object v10, v9, v0

    const-string/jumbo v10, "userdata_deleted"

    aput-object v10, v9, v7

    .line 8791
    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v9, v7, [Ljava/lang/String;

    aput-object v3, v9, v8

    .line 8795
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v0

    const-string/jumbo v10, "userdata"

    .line 8796
    invoke-virtual {v1, v10, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v5, "%s = ? and %s = ? and %s = 1"

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v9, "token_account_id"

    aput-object v9, v6, v8

    const-string/jumbo v9, "token_timestamp"

    aput-object v9, v6, v0

    const-string/jumbo v9, "token_deleted"

    aput-object v9, v6, v7

    .line 8799
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/String;

    aput-object v3, v6, v8

    .line 8803
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v0

    const-string/jumbo v4, "tokens"

    .line 8804
    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8339
    iget-object v4, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oq:Ljava/util/Map;

    if-nez v4, :cond_5

    :cond_4
    :goto_1
    const/4 v8, 0x1

    goto :goto_2

    .line 8344
    :cond_5
    iget-object v4, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oq:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :goto_2
    and-int/2addr v2, v8

    goto/16 :goto_0

    .line 1215
    :cond_6
    invoke-direct {p0, v3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->f(Ljava/util/Map;)Z

    move-result v5

    const/4 v9, 0x4

    if-eqz v5, :cond_8

    const-string/jumbo v5, "userdata_account"

    .line 9376
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    const-string/jumbo v10, "userdata_key"

    .line 9382
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v10, "%s = ? and %s = ? and %s = ? and %s = 1"

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v11, "userdata_account_id"

    aput-object v11, v9, v8

    const-string/jumbo v11, "userdata_key"

    aput-object v11, v9, v0

    const-string/jumbo v11, "userdata_timestamp"

    aput-object v11, v9, v7

    const-string/jumbo v11, "userdata_deleted"

    aput-object v11, v9, v6

    .line 9964
    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v8

    aput-object v3, v6, v0

    .line 9969
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    const-string/jumbo v4, "userdata"

    .line 9971
    invoke-virtual {v1, v4, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 10397
    invoke-direct {p0, v5}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->cn(Ljava/lang/String;)Lcom/amazon/identity/auth/device/gf;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 10403
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/identity/auth/device/ft;

    iget-object v4, v4, Lcom/amazon/identity/auth/device/ft;->nc:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1221
    :cond_8
    invoke-direct {p0, v3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->g(Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string/jumbo v5, "token_account"

    .line 10440
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_9

    goto :goto_2

    :cond_9
    const-string/jumbo v10, "token_key"

    .line 10446
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v10, "%s = ? and %s = ? and %s = ? and %s = 1"

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v11, "token_account_id"

    aput-object v11, v9, v8

    const-string/jumbo v11, "token_key"

    aput-object v11, v9, v0

    const-string/jumbo v11, "token_timestamp"

    aput-object v11, v9, v7

    const-string/jumbo v11, "token_deleted"

    aput-object v11, v9, v6

    .line 11206
    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v8

    aput-object v3, v6, v0

    .line 11211
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    const-string/jumbo v4, "tokens"

    .line 11213
    invoke-virtual {v1, v4, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 11461
    invoke-direct {p0, v5}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->cn(Ljava/lang/String;)Lcom/amazon/identity/auth/device/gf;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 11467
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/identity/auth/device/ft;

    iget-object v4, v4, Lcom/amazon/identity/auth/device/ft;->tokens:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1227
    :cond_a
    invoke-direct {p0, v3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->h(Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "namespace"

    .line 11497
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_b

    goto/16 :goto_2

    :cond_b
    const-string v10, "device_data_key"

    .line 11503
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v10, "%s = ? and %s = ? and %s = ?  and %s = 1"

    new-array v9, v9, [Ljava/lang/Object;

    const-string v11, "device_data_namespace"

    aput-object v11, v9, v8

    const-string v11, "device_data_key"

    aput-object v11, v9, v0

    const-string v11, "device_data_timestamp"

    aput-object v11, v9, v7

    const-string v11, "device_data_deleted"

    aput-object v11, v9, v6

    .line 12286
    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v8

    aput-object v3, v6, v0

    .line 12292
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    const-string v3, "device_data"

    .line 12294
    invoke-virtual {v1, v3, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 12518
    iget-object v3, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->op:Ljava/util/Map;

    if-eqz v3, :cond_4

    .line 12523
    iget-object v3, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->op:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_4

    .line 12529
    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1233
    :cond_c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1234
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/gj;->W(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_d

    .line 1242
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1243
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1236
    :cond_d
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_e

    .line 1242
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1243
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oo:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 1245
    :cond_e
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized eT()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 278
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->fx()Ljava/util/Map;

    move-result-object v0

    .line 280
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 281
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/gf;

    .line 283
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/gf;->fi()Z

    move-result v3

    if-nez v3, :cond_0

    .line 288
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/ft;

    iget-object v2, v2, Lcom/amazon/identity/auth/device/ft;->displayName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 291
    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f(Ljava/util/Date;)Z
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1252
    monitor-exit p0

    return p1

    .line 1255
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->g(Ljava/util/Date;)Z

    .line 13268
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oq:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 13270
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oq:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/gf;

    .line 13272
    invoke-virtual {v1, p1}, Lcom/amazon/identity/auth/device/gf;->b(Ljava/util/Date;)V

    .line 13274
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/ft;

    iget-object v2, v2, Lcom/amazon/identity/auth/device/ft;->nc:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/identity/auth/device/gf;

    .line 13276
    invoke-virtual {v3, p1}, Lcom/amazon/identity/auth/device/gf;->b(Ljava/util/Date;)V

    goto :goto_0

    .line 13279
    :cond_2
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/ft;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/ft;->tokens:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/gf;

    .line 13281
    invoke-virtual {v2, p1}, Lcom/amazon/identity/auth/device/gf;->b(Ljava/util/Date;)V

    goto :goto_1

    .line 13286
    :cond_3
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->op:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 13288
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->op:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 13290
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/gf;

    .line 13292
    invoke-virtual {v2, p1}, Lcom/amazon/identity/auth/device/gf;->b(Ljava/util/Date;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_5
    const/4 p1, 0x1

    .line 1263
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized fB()Ljava/lang/String;
    .locals 9

    monitor-enter p0

    .line 2748
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2750
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2752
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->fx()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2754
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/identity/auth/device/gf;

    .line 2755
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/identity/auth/device/ft;

    .line 2757
    iget-object v5, v4, Lcom/amazon/identity/auth/device/ft;->directedId:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2759
    iget-object v5, v4, Lcom/amazon/identity/auth/device/ft;->directedId:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2761
    :cond_1
    iget-object v5, v4, Lcom/amazon/identity/auth/device/ft;->directedId:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 19803
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v0, v6}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    const-string v6, ""

    .line 19805
    invoke-direct {p0, v0, v6}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 19806
    invoke-direct {p0, v0, v3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/lang/StringBuilder;Lcom/amazon/identity/auth/device/gf;)V

    .line 2765
    iget-object v3, v4, Lcom/amazon/identity/auth/device/ft;->nc:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2768
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 2769
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2770
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/identity/auth/device/gf;

    .line 2767
    invoke-direct {p0, v0, v7, v8, v6}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/gf;)V

    goto :goto_0

    .line 2773
    :cond_2
    iget-object v3, v4, Lcom/amazon/identity/auth/device/ft;->tokens:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2776
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 2777
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2778
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/identity/auth/device/gf;

    .line 2775
    invoke-direct {p0, v0, v6, v7, v4}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/gf;)V

    goto :goto_1

    .line 2782
    :cond_3
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->fy()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2784
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2787
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2788
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2789
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/identity/auth/device/gf;

    .line 2786
    invoke-direct {p0, v0, v5, v6, v4}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/gf;)V

    goto :goto_2

    .line 2793
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ft()Ljava/util/Collection;
    .locals 2
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

    monitor-enter p0

    const/4 v0, 0x0

    .line 953
    :try_start_0
    const-class v1, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Date;Ljava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fu()Ljava/util/Collection;
    .locals 3
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

    monitor-enter p0

    const/4 v0, 0x0

    .line 968
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;->NotDirtyOnly:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

    sget-object v2, Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;->Deleted:Lcom/amazon/identity/auth/device/storage/LocalDataStorage$GetDataOptions;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Date;Ljava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fv()V
    .locals 2

    monitor-enter p0

    .line 1535
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "map_data_storage.db"

    .line 13738
    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    :cond_0
    const/4 v0, 0x0

    .line 1536
    iput-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->oq:Ljava/util/Map;

    .line 1537
    iput-object v0, p0, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->op:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1538
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fw()V
    .locals 2

    monitor-enter p0

    .line 1550
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->fx()Ljava/util/Map;

    .line 1551
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->fy()Ljava/util/Map;

    const-string/jumbo v0, "populatedInMemoryCache"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 1552
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1553
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAccounts()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 235
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->fx()Ljava/util/Map;

    move-result-object v0

    .line 237
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 238
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/identity/auth/device/gf;

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/gf;->fi()Z

    move-result v3

    if-nez v3, :cond_0

    .line 245
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i(Ljava/util/Map;)Ljava/util/Date;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/gf<",
            "Lcom/amazon/identity/auth/device/ft;",
            ">;>;)",
            "Ljava/util/Date;"
        }
    .end annotation

    .line 2516
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/gf;

    .line 2519
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/ft;

    iget-object v2, v2, Lcom/amazon/identity/auth/device/ft;->nc:Ljava/util/Map;

    .line 2520
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/identity/auth/device/gf;

    .line 2522
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/gf;->fh()Ljava/util/Date;

    move-result-object v3

    .line 2523
    invoke-virtual {p0, v0, v3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    goto :goto_1

    .line 2527
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/ft;

    iget-object v2, v2, Lcom/amazon/identity/auth/device/ft;->tokens:Ljava/util/Map;

    .line 2528
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/identity/auth/device/gf;

    .line 2530
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/gf;->fh()Ljava/util/Date;

    move-result-object v3

    .line 2531
    invoke-virtual {p0, v0, v3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    goto :goto_2

    .line 2534
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gf;->fh()Ljava/util/Date;

    move-result-object v1

    .line 2535
    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public declared-synchronized t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    .line 642
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->cm(Ljava/lang/String;)Lcom/amazon/identity/auth/device/gf;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 643
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gf;->fi()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 648
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/ft;

    iget-object p1, p1, Lcom/amazon/identity/auth/device/ft;->tokens:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/gf;

    if-eqz p1, :cond_3

    .line 649
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gf;->fi()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 654
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 651
    :cond_3
    :goto_0
    monitor-exit p0

    return-object v0

    .line 645
    :cond_4
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 639
    :cond_5
    :goto_2
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    const-string v1, "LocalDataStorage"

    .line 827
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "namespace: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 6603
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->fy()Ljava/util/Map;

    move-result-object v1

    .line 6605
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 831
    monitor-exit p0

    return-object v0

    .line 834
    :cond_1
    :try_start_1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/identity/auth/device/gf;

    if-eqz p2, :cond_4

    .line 835
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/gf;->fi()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 839
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v1, "LocalDataStorage"

    .line 841
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/gf;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gf;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_0

    .line 843
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/gf;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 837
    :cond_4
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 825
    :cond_5
    :goto_2
    monitor-exit p0

    return-object v0
.end method
