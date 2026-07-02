.class public final Lcom/amazon/identity/auth/device/gn;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field public static final oA:[Ljava/lang/String;

.field public static final oB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final oC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final oz:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string/jumbo v0, "value"

    .line 44
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/identity/auth/device/gn;->oz:[Ljava/lang/String;

    const-string v1, "key"

    const-string/jumbo v2, "namespace"

    .line 46
    filled-new-array {v1, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/gn;->oA:[Ljava/lang/String;

    const-string/jumbo v1, "map_major_version"

    const-string/jumbo v2, "map_minor_version"

    const-string v3, "current_device_type"

    const-string v4, "dsn_override"

    const-string/jumbo v5, "map_sw_version"

    const-string/jumbo v6, "map_init_version"

    const-string/jumbo v7, "map_brazil_version"

    .line 48
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/gn;->oB:Ljava/util/List;

    const-string v1, "directedId"

    const-string/jumbo v2, "namespace"

    const-string/jumbo v3, "userdata_account"

    const-string/jumbo v4, "token_account"

    const-string v5, "display_name"

    const-string/jumbo v6, "userdata_key"

    const-string/jumbo v7, "userdata_value"

    const-string/jumbo v8, "token_key"

    const-string/jumbo v9, "token_value"

    const-string v10, "device_data_key"

    const-string v11, "device_data_value"

    const-string/jumbo v12, "timestamp_key"

    const-string v13, "deleted_key"

    const-string v14, "dirty_key"

    .line 56
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/gn;->oC:Ljava/util/List;

    return-void
.end method

.method private static P(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "content://%s%s"

    .line 137
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static cA(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    const-string v0, "/map_info"

    .line 112
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/gn;->P(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static cB(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    const-string v0, "/all_data"

    .line 117
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/gn;->P(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static cC(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    const-string v0, "/all_deleted_data"

    .line 122
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/gn;->P(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static cD(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    const-string v0, "/bulk_data"

    .line 127
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/gn;->P(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static cE(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    const-string v0, "/generate_common_info"

    .line 132
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/gn;->P(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static cw(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    const-string v0, "/accounts"

    .line 92
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/gn;->P(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static cx(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    const-string v0, "/userdata"

    .line 97
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/gn;->P(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static cy(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    const-string v0, "/tokens"

    .line 102
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/gn;->P(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static cz(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    const-string v0, "/device_data"

    .line 107
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/gn;->P(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
