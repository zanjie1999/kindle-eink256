.class public Lcom/amazon/identity/auth/device/gl;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/gl$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.gl"

.field private static os:Lcom/amazon/identity/auth/device/gl;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private op:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final ot:Landroid/database/sqlite/SQLiteOpenHelper;

.field private ou:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/fu;",
            ">;"
        }
    .end annotation
.end field

.field private final ov:Lcom/amazon/identity/auth/device/gm;

.field private ow:Lcom/amazon/identity/auth/device/cr;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "map_data_storage_v2"

    .line 222
    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/gl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    sget-object v0, Lcom/amazon/identity/auth/device/gl;->TAG:Ljava/lang/String;

    const-string v1, "Constructing LocalDataStorageV2"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gl;->mContext:Landroid/content/Context;

    .line 230
    new-instance v0, Lcom/amazon/identity/auth/device/gm;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/gl;->mContext:Landroid/content/Context;

    const-string v2, "com.amazon.identity.auth.device.storage.LocalOnlySQLDB.encryption.namespace"

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/gl;->ov:Lcom/amazon/identity/auth/device/gm;

    .line 232
    new-instance v0, Lcom/amazon/identity/auth/device/gl$a;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/gl;->ov:Lcom/amazon/identity/auth/device/gm;

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/identity/auth/device/gl$a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/identity/auth/device/gm;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/gl;->ot:Landroid/database/sqlite/SQLiteOpenHelper;

    const/4 p1, 0x0

    .line 234
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gl;->ow:Lcom/amazon/identity/auth/device/cr;

    return-void
.end method

.method static declared-synchronized Z(Landroid/content/Context;)Lcom/amazon/identity/auth/device/gl;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/gl;

    monitor-enter v0

    .line 249
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/gl;->os:Lcom/amazon/identity/auth/device/gl;

    if-nez v1, :cond_0

    .line 251
    new-instance v1, Lcom/amazon/identity/auth/device/gl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/gl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/identity/auth/device/gl;->os:Lcom/amazon/identity/auth/device/gl;

    .line 254
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/gl;->os:Lcom/amazon/identity/auth/device/gl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
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

    .line 1318
    invoke-static {p2, p3, p4}, Lcom/amazon/identity/auth/device/hy;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 0

    .line 860
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/gl;->d(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;

    move-result-object p1

    .line 862
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/fu;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-nez p3, :cond_0

    goto :goto_0

    .line 755
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/gl;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 760
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/gl;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    .line 767
    :cond_2
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/gl;->cp(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fu;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 770
    iget-object p1, p1, Lcom/amazon/identity/auth/device/fu;->nd:Ljava/util/Map;

    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 823
    :cond_0
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/amazon/identity/auth/device/gl;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/identity/auth/device/fu;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 830
    :cond_1
    iget-object p2, p0, Lcom/amazon/identity/auth/device/gl;->ou:Ljava/util/Map;

    if-eqz p2, :cond_2

    .line 832
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/amazon/identity/auth/device/gl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/identity/auth/device/fu;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/identity/auth/device/fu;"
        }
    .end annotation

    .line 882
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "directed_id"

    .line 883
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "display_name"

    .line 884
    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "%s = ?"

    .line 886
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v4

    const-string v3, "accounts"

    .line 889
    invoke-static {p1, v3, v0, v1, v2}, Lcom/amazon/identity/auth/device/hy;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 893
    sget-object p1, Lcom/amazon/identity/auth/device/gl;->TAG:Ljava/lang/String;

    const-string p2, "Failed to add account"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 897
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/gl;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz p4, :cond_2

    .line 900
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 902
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, p1, p2, v3, v4}, Lcom/amazon/identity/auth/device/gl;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 906
    sget-object p1, Lcom/amazon/identity/auth/device/gl;->TAG:Ljava/lang/String;

    const-string p2, "Failed to save account because saving token was unsuccessful"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 910
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 914
    :cond_2
    new-instance p1, Lcom/amazon/identity/auth/device/fu;

    invoke-direct {p1, p2, p3, v0}, Lcom/amazon/identity/auth/device/fu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object p1
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 845
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/gl;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 851
    :cond_1
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gl;->ou:Ljava/util/Map;

    if-eqz p1, :cond_2

    .line 853
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 943
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "account_data_directed_id"

    .line 944
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "account_data_key"

    .line 945
    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    invoke-direct {p0, p4}, Lcom/amazon/identity/auth/device/gl;->cq(Ljava/lang/String;)[B

    move-result-object p4

    const-string v3, "account_data_value"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 p4, 0x2

    new-array v3, p4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v2, "%s = ? and %s = ?"

    .line 952
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array p4, p4, [Ljava/lang/String;

    aput-object p2, p4, v4

    aput-object p3, p4, v1

    const-string p2, "account_data"

    .line 949
    invoke-static {p1, p2, v0, v2, p4}, Lcom/amazon/identity/auth/device/hy;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "directed_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s = ?"

    .line 920
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/String;

    aput-object p2, v2, v3

    const-string v4, "accounts"

    .line 923
    invoke-virtual {p1, v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 926
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/gl;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return v0
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 964
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "device_data_namespace"

    .line 965
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "device_data_key"

    .line 966
    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    invoke-direct {p0, p4}, Lcom/amazon/identity/auth/device/gl;->cq(Ljava/lang/String;)[B

    move-result-object p4

    const-string v3, "device_data_value"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 p4, 0x2

    new-array v3, p4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v2, "%s = ? and %s = ?"

    .line 972
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array p4, p4, [Ljava/lang/String;

    aput-object p2, p4, v4

    aput-object p3, p4, v1

    const-string p2, "device_data"

    .line 969
    invoke-static {p1, p2, v0, v2, p4}, Lcom/amazon/identity/auth/device/hy;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private cp(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fu;
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gl;->ou:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 874
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/fu;

    return-object p1
.end method

.method private cq(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    .line 987
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v1, 0x0

    .line 4016
    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/gl;->i(Z)Lcom/amazon/identity/auth/device/cr;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 4022
    :cond_1
    invoke-virtual {v1, p1}, Lcom/amazon/identity/auth/device/cr;->d([B)[B

    move-result-object p1

    if-nez p1, :cond_2

    .line 4025
    sget-object v0, Lcom/amazon/identity/auth/device/gl;->TAG:Ljava/lang/String;

    const-string v1, "The encrypt result is null. This should not happen!"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "EncryptionFailure"

    const-string v1, "encryptCBCModeReturnNull"

    .line 4026
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    return-object v0

    :catch_0
    move-exception p1

    .line 992
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/fu;",
            ">;"
        }
    .end annotation

    .line 700
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gl;->ou:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 702
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/gl;->e(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gl;->ou:Ljava/util/Map;

    .line 705
    :cond_0
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gl;->ou:Ljava/util/Map;

    return-object p1
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "account_data_directed_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s = ?"

    .line 934
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p2, v0, v3

    const-string p2, "account_data"

    .line 933
    invoke-virtual {p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private e(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/fu;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "_id"

    const-string v2, "account_data_value"

    const-string v3, "account_data_key"

    const-string v4, "display_name"

    const-string v5, "account_data"

    const-string v6, "directed_id"

    const-string v7, "accounts"

    .line 1236
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v9, 0x0

    .line 6281
    :try_start_0
    new-instance v10, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v10}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 6304
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 6305
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " LEFT OUTER JOIN account_data ON ("

    .line 6306
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6307
    invoke-static {v7, v6}, Lcom/amazon/identity/auth/device/hy;->ak(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "account_data_directed_id"

    .line 6308
    invoke-static {v5, v12}, Lcom/amazon/identity/auth/device/hy;->ak(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6310
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 6282
    invoke-virtual {v10, v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 6284
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 6285
    invoke-direct {v1, v11, v7, v0, v0}, Lcom/amazon/identity/auth/device/gl;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6287
    invoke-direct {v1, v11, v7, v6, v6}, Lcom/amazon/identity/auth/device/gl;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6288
    invoke-direct {v1, v11, v7, v4, v4}, Lcom/amazon/identity/auth/device/gl;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6290
    invoke-direct {v1, v11, v5, v3, v3}, Lcom/amazon/identity/auth/device/gl;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6291
    invoke-direct {v1, v11, v5, v2, v2}, Lcom/amazon/identity/auth/device/gl;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6296
    invoke-virtual {v10, v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 6298
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 6299
    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, p1

    .line 1241
    invoke-virtual {v5, v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 1242
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1247
    :cond_0
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1248
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 1249
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 1250
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1254
    :cond_1
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1255
    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/identity/auth/device/fu;

    if-nez v6, :cond_2

    .line 1258
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1259
    new-instance v7, Lcom/amazon/identity/auth/device/fu;

    invoke-direct {v7, v5, v6}, Lcom/amazon/identity/auth/device/fu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    invoke-interface {v8, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v7

    .line 1264
    :cond_2
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1267
    iget-object v6, v6, Lcom/amazon/identity/auth/device/fu;->nd:Ljava/util/Map;

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/amazon/identity/auth/device/gl;->g([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 1275
    invoke-static {v9}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    return-object v8

    :cond_4
    :goto_0
    invoke-static {v9}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    return-object v8

    :catchall_0
    move-exception v0

    invoke-static {v9}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    .line 1276
    throw v0
.end method

.method private e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "account_data_value"

    const-string v1, "account_data_key"

    const-string v2, "account_data_directed_id"

    .line 1120
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    const-string v6, "account_data"

    .line 1125
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v7

    const-string v5, "%s = ?"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    .line 1130
    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v9, v8, [Ljava/lang/String;

    aput-object p2, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p1

    move-object v8, v2

    .line 1126
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1136
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1141
    :cond_0
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 1142
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 1146
    :cond_1
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1149
    invoke-interface {v4, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/gl;->g([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1157
    invoke-static {v4}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    return-object v3

    :cond_3
    :goto_0
    invoke-static {v4}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    return-object v3

    :catchall_0
    move-exception p1

    invoke-static {v4}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    .line 1159
    throw p1
.end method

.method private f(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1327
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1329
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1338
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gl;->ot:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1334
    :try_start_1
    sget-object v0, Lcom/amazon/identity/auth/device/gl;->TAG:Ljava/lang/String;

    const-string v1, "Database exception, it shouldn\'t happen, might be a bug in OS"

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1338
    :goto_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gl;->ot:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 1339
    throw p1

    :cond_1
    return-void
.end method

.method static f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 6

    const-string v0, "key_encryption_secret"

    const-string v1, "encryption_data_key"

    const/4 v2, 0x0

    .line 1356
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1357
    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "encryption_data_value"

    .line 1358
    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "encryption_data"

    const-string v4, "%s = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    .line 1364
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1361
    invoke-static {p0, p1, v3, v1, v0}, Lcom/amazon/identity/auth/device/hy;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1370
    sget-object p0, Lcom/amazon/identity/auth/device/gl;->TAG:Ljava/lang/String;

    const-string p1, "Encryption key prepared."

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1374
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/gl;->TAG:Ljava/lang/String;

    const-string p1, "Failed to set encryption key. This should never happen!"

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-array p1, v2, [Ljava/lang/String;

    const-string v0, "MAPFailedSetEncryptionKeyToDB"

    .line 1379
    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1380
    sget-object p1, Lcom/amazon/identity/auth/device/gl;->TAG:Ljava/lang/String;

    const-string v0, "Failed to set encryption key in db"

    invoke-static {p1, v0, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private fA()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "device_data_value"

    const-string v1, "device_data_key"

    const-string v2, "device_data_namespace"

    .line 1178
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    .line 1184
    :try_start_0
    iget-object v5, p0, Lcom/amazon/identity/auth/device/gl;->ot:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "device_data"

    .line 1186
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1187
    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1197
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 1202
    :cond_0
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1203
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1204
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1208
    :cond_1
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1209
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-nez v6, :cond_2

    .line 1212
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1213
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    :cond_2
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1220
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/amazon/identity/auth/device/gl;->g([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 1229
    :cond_4
    :goto_0
    invoke-static {v4}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    .line 1230
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gl;->ot:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-object v3

    :catchall_0
    move-exception v0

    .line 1229
    invoke-static {v4}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    .line 1230
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gl;->ot:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 1231
    throw v0
.end method

.method private fC()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/fu;",
            ">;"
        }
    .end annotation

    .line 690
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gl;->ou:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 692
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gl;->fE()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/gl;->ou:Ljava/util/Map;

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gl;->ou:Ljava/util/Map;

    return-object v0
.end method

.method private fD()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 710
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gl;->op:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 712
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gl;->fA()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/gl;->op:Ljava/util/Map;

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gl;->op:Ljava/util/Map;

    return-object v0
.end method

.method private fE()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/fu;",
            ">;"
        }
    .end annotation

    .line 1167
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gl;->ot:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1168
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/gl;->e(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1172
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gl;->ot:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/gl;->ot:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 1173
    throw v0
.end method

.method static g(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 12

    const-string v0, "encryption_data_value"

    const-string v1, "encryption_data_key"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v5, "encryption_data"

    .line 1390
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v4, "%s = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v2

    .line 1394
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "key_encryption_secret"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p0

    .line 1391
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 1400
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1405
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1406
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1416
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p0, v3

    :goto_1
    :try_start_2
    const-string v1, "MAPFailedGetEncryptionKeyFromDB"

    new-array v2, v2, [Ljava/lang/String;

    .line 1410
    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1411
    sget-object v1, Lcom/amazon/identity/auth/device/gl;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get encryption key from db"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1416
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    return-object v3

    :catchall_1
    move-exception v0

    move-object v3, p0

    :goto_2
    invoke-static {v3}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;)V

    .line 1417
    throw v0
.end method

.method private g([B)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1005
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/gl;->h([B)[B

    move-result-object p1

    .line 1006
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 1010
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private h([B)[B
    .locals 2

    const/4 v0, 0x1

    .line 1034
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/gl;->i(Z)Lcom/amazon/identity/auth/device/cr;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 1043
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/cr;->e([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1047
    :catch_0
    sget-object p1, Lcom/amazon/identity/auth/device/gl;->TAG:Ljava/lang/String;

    const-string v0, "The decrypt throw BadPaddingException. This should not happen in LocalDataStorageV2!"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_1

    return-object v1

    .line 1052
    :cond_1
    sget-object p1, Lcom/amazon/identity/auth/device/gl;->TAG:Ljava/lang/String;

    const-string v0, "The decrypt result is null. This should not happen!"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "decryptCBCModeReturnNull"

    .line 1053
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "DecryptionFailure"

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1054
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "map_data_storage_v2"

    .line 4422
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/gl;->k(Landroid/content/Context;Ljava/lang/String;)V

    .line 1055
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "decryptCBCMode returns null. Something wrong with the decryption"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-object v1
.end method

.method private declared-synchronized i(Z)Lcom/amazon/identity/auth/device/cr;
    .locals 2

    monitor-enter p0

    .line 1063
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gl;->ow:Lcom/amazon/identity/auth/device/cr;

    if-nez v0, :cond_3

    .line 1065
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gl;->ov:Lcom/amazon/identity/auth/device/gm;

    const-string v1, "com.amazon.identity.auth.device.storage.LocalOnlySQLDB.encrypt.key"

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/gm;->cr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    .line 1079
    sget-object p1, Lcom/amazon/identity/auth/device/gl;->TAG:Ljava/lang/String;

    const-string v0, "Cannot get the encryption key from SharedPreferences before encrypt. Gonna create a new key. This should not happen!"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "EncryptionFailure"

    const-string v0, "EncryptionKeyNotFound"

    .line 1081
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1085
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gl;->ov:Lcom/amazon/identity/auth/device/gm;

    const-string v0, "com.amazon.identity.auth.device.storage.LocalOnlySQLDB.encrypt.key"

    .line 1086
    invoke-static {}, Lcom/amazon/identity/auth/device/cr;->co()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/identity/auth/device/gm;->O(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1089
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gl;->ov:Lcom/amazon/identity/auth/device/gm;

    const-string v0, "com.amazon.identity.auth.device.storage.LocalOnlySQLDB.encrypt.key"

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/gm;->cr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1094
    :cond_0
    sget-object p1, Lcom/amazon/identity/auth/device/gl;->TAG:Ljava/lang/String;

    const-string v0, "Try to re-generate the encryption key and save it into shared preferences failed!"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "EncryptionFailure"

    const-string v0, "TryToRegenerateEncryptionKeyFailure"

    .line 1096
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 1097
    monitor-exit p0

    return-object p1

    .line 1070
    :cond_1
    :try_start_1
    sget-object p1, Lcom/amazon/identity/auth/device/gl;->TAG:Ljava/lang/String;

    const-string v0, "Cannot get the encryption key from SharedPreferences before decrypt. This should not happen!"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DecryptionFailure"

    const-string v0, "EncryptionKeyNotFound"

    .line 1072
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1074
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "map_data_storage_v2"

    .line 5422
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/gl;->k(Landroid/content/Context;Ljava/lang/String;)V

    .line 1075
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The encryption key is null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 1101
    invoke-static {v0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 1102
    new-instance v0, Lcom/amazon/identity/auth/device/cr;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/cr;-><init>([B)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/gl;->ow:Lcom/amazon/identity/auth/device/cr;

    .line 1104
    :cond_3
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gl;->ow:Lcom/amazon/identity/auth/device/cr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1432
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".db"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "successful"

    goto :goto_0

    :cond_1
    const-string p0, "failed"

    .line 1434
    :goto_0
    sget-object p1, Lcom/amazon/identity/auth/device/gl;->TAG:Ljava/lang/String;

    const-string v0, "cleanDb "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 800
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gl;->op:Ljava/util/Map;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 802
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 805
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 806
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gl;->op:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    :cond_0
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized M(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gl;->fC()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/fu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 386
    monitor-exit p0

    return-object v0

    .line 389
    :cond_1
    :try_start_1
    iget-object p1, p1, Lcom/amazon/identity/auth/device/fu;->nd:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 380
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized N(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    .line 600
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gl;->ot:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/gk;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 601
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 2725
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/amazon/identity/auth/device/gl;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "%s = ? and %s = ?"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "account_data_directed_id"

    aput-object v6, v5, v2

    const-string v6, "account_data_key"

    aput-object v6, v5, v1

    .line 3110
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    const-string v5, "account_data"

    .line 3113
    invoke-virtual {v0, v5, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    goto :goto_1

    .line 2737
    :cond_3
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/gl;->cp(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fu;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2740
    iget-object p1, p1, Lcom/amazon/identity/auth/device/fu;->nd:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x0

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 606
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    :cond_6
    :try_start_1
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/gl;->f(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 609
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 613
    :try_start_2
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/gl;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 614
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 435
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 437
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 442
    :cond_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gl;->fD()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 446
    monitor-exit p0

    return-object v0

    .line 449
    :cond_1
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 451
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 454
    :cond_2
    monitor-exit p0

    return-object v0

    .line 439
    :cond_3
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 623
    :try_start_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/gl;->ot:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/gk;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 624
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 628
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 630
    invoke-direct {p0, v1, v2}, Lcom/amazon/identity/auth/device/gl;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 650
    :try_start_1
    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/gl;->f(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 633
    monitor-exit p0

    return v0

    .line 636
    :cond_1
    :try_start_2
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/amazon/identity/auth/device/gl;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 639
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 650
    :cond_2
    :try_start_3
    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/gl;->f(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 642
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 646
    :try_start_4
    sget-object p2, Lcom/amazon/identity/auth/device/gl;->TAG:Ljava/lang/String;

    const-string p3, "Cannot replace accounts due to "

    invoke-static {p2, p3, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 650
    :try_start_5
    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/gl;->f(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 653
    monitor-exit p0

    return v0

    .line 650
    :goto_0
    :try_start_6
    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/gl;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 651
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gl;->ot:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/gk;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 333
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gl;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 336
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/gl;->f(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 339
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 343
    :try_start_2
    sget-object p2, Lcom/amazon/identity/auth/device/gl;->TAG:Ljava/lang/String;

    const-string p3, "Cannot add account due to "

    invoke-static {p2, p3, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    :try_start_3
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/gl;->f(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p1, 0x0

    .line 350
    monitor-exit p0

    return p1

    .line 347
    :goto_0
    :try_start_4
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/gl;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 348
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
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

    .line 394
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 397
    monitor-exit p0

    return-object v0

    .line 399
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gl;->fC()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/fu;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 402
    monitor-exit p0

    return-object v0

    .line 404
    :cond_1
    :try_start_2
    iget-object p1, p1, Lcom/amazon/identity/auth/device/fu;->nd:Ljava/util/Map;

    .line 405
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

    .line 407
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "actor/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 409
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 412
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public ce(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
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

    .line 662
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 663
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 668
    :cond_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gl;->fC()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/fu;

    if-nez p1, :cond_1

    return-object v0

    .line 674
    :cond_1
    iget-object p1, p1, Lcom/amazon/identity/auth/device/fu;->nd:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "token"

    .line 676
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "cookie"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 678
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public declared-synchronized co(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gl;->ot:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/gk;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 362
    invoke-direct {p0, v0, p1}, Lcom/amazon/identity/auth/device/gl;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 365
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/gl;->f(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 368
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 372
    :try_start_2
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/gl;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 373
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized eT()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 271
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gl;->fC()Ljava/util/Map;

    move-result-object v0

    .line 273
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 274
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/fu;

    .line 276
    iget-object v2, v2, Lcom/amazon/identity/auth/device/fu;->displayName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 278
    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 490
    :try_start_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/gl;->ot:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/gk;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 491
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v2, 0x1

    .line 494
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 496
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v1, p1, v4, v3}, Lcom/amazon/identity/auth/device/gl;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :cond_1
    if-eqz v2, :cond_2

    .line 505
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    :cond_2
    :try_start_1
    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/gl;->f(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 508
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 512
    :try_start_2
    sget-object p2, Lcom/amazon/identity/auth/device/gl;->TAG:Ljava/lang/String;

    const-string v2, "Cannot set data due to: "

    invoke-static {p2, v2, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 516
    :try_start_3
    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/gl;->f(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 519
    monitor-exit p0

    return v0

    .line 516
    :goto_0
    :try_start_4
    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/gl;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 517
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized g(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 552
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 560
    :try_start_1
    iget-object v2, p0, Lcom/amazon/identity/auth/device/gl;->ot:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/gk;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 561
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 564
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 566
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v0, p1, v4, v3}, Lcom/amazon/identity/auth/device/gl;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 568
    :cond_1
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    const-string p2, "Failed to update db!"

    invoke-direct {p1, p2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 573
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 576
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 578
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p1, v3, v2}, Lcom/amazon/identity/auth/device/gl;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 589
    :cond_3
    :try_start_2
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/gl;->f(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p1, 0x1

    .line 581
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 585
    :try_start_3
    sget-object p2, Lcom/amazon/identity/auth/device/gl;->TAG:Ljava/lang/String;

    const-string v2, "Cannot set device data!"

    invoke-static {p2, v2, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 589
    :try_start_4
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/gl;->f(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 592
    monitor-exit p0

    return v1

    .line 589
    :goto_2
    :try_start_5
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/gl;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 590
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 554
    :cond_4
    :goto_3
    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAccounts()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 259
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gl;->fC()Ljava/util/Map;

    move-result-object v0

    .line 261
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 262
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 264
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 266
    :cond_0
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

.method public declared-synchronized o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gl;->ot:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/gk;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 465
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gl;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 468
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/gl;->f(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 471
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 475
    :try_start_2
    sget-object p2, Lcom/amazon/identity/auth/device/gl;->TAG:Ljava/lang/String;

    const-string p3, "Cannot set data due to: "

    invoke-static {p2, p3, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 479
    :try_start_3
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/gl;->f(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p1, 0x0

    .line 482
    monitor-exit p0

    return p1

    .line 479
    :goto_0
    :try_start_4
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/gl;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 480
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 527
    :try_start_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/gl;->ot:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/gk;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 528
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1786
    :cond_0
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/amazon/identity/auth/device/gl;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1793
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gl;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 533
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    :cond_3
    :try_start_1
    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/gl;->f(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 536
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 540
    :catch_0
    :try_start_2
    sget-object p1, Lcom/amazon/identity/auth/device/gl;->TAG:Ljava/lang/String;

    const-string p2, "Cannot set device data since it violated a uniqueness constraint"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 544
    :try_start_3
    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/gl;->f(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 547
    monitor-exit p0

    return v0

    .line 544
    :goto_2
    :try_start_4
    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/gl;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 545
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 422
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gl;->fD()Ljava/util/Map;

    move-result-object v1

    .line 423
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 427
    monitor-exit p0

    return-object v0

    .line 430
    :cond_1
    :try_start_1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 419
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0
.end method
