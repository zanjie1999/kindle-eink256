.class public Lcom/amazon/identity/auth/device/bg;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.bg"


# instance fields
.field private final gQ:Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    new-instance v0, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/bg;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/identity/auth/device/bg;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/amazon/identity/auth/device/bg;->gQ:Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;

    return-void
.end method

.method private a(Lcom/amazon/identity/auth/device/api/Callback;ILjava/lang/String;)V
    .locals 2

    .line 159
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.amazon.dcp.sso.ErrorCode"

    .line 160
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "com.amazon.dcp.sso.ErrorMessage"

    .line 161
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-interface {p1, v0}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public static o(Landroid/content/Context;)Z
    .locals 2

    .line 119
    new-instance v0, Lcom/amazon/identity/auth/device/gm;

    const-string v1, "authority.signature.expiry.store"

    invoke-direct {v0, p0, v1}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    new-instance p0, Ljava/util/Date;

    const-string v1, "authority.signature.expiry.key"

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/gm;->cu(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 123
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/bf;Lcom/amazon/identity/auth/device/ej;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/bf;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bg;->gQ:Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;

    invoke-virtual {v1, p1, p2}, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;->b(Lcom/amazon/identity/auth/device/bf;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;->bF()Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "authoritySignatures"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v1, 0x0

    .line 134
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 136
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_0
    new-instance p2, Lcom/amazon/identity/auth/device/gm;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/bg;->mContext:Landroid/content/Context;

    const-string v2, "authority.signature.expiry.store"

    invoke-direct {p2, v1, v2}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "authority.signature.expiry.key"

    .line 140
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;->bG()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p2, v1, v2, v3}, Lcom/amazon/identity/auth/device/gm;->a(Ljava/lang/String;J)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$PandaServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 152
    sget-object p2, Lcom/amazon/identity/auth/device/bg;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "service exception when calling panda"

    invoke-static {p2, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 148
    sget-object p2, Lcom/amazon/identity/auth/device/bg;->TAG:Ljava/lang/String;

    const-string v1, "i/o exception when calling panda"

    invoke-static {p2, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 144
    sget-object p2, Lcom/amazon/identity/auth/device/bg;->TAG:Ljava/lang/String;

    const-string v1, "Json exception when calling panda"

    invoke-static {p2, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/device/bh;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 11

    const-string/jumbo v0, "ssoCode"

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bg;->gQ:Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;

    invoke-virtual {v1, p1, p2, p4}, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/bh;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$a;->bF()Lorg/json/JSONObject;

    move-result-object p1

    .line 55
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v1, "expiresIn"

    .line 57
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "listOfAccounts"

    .line 59
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    .line 67
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "directedId"

    .line 68
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "loginName"

    .line 69
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "customerName"

    .line 70
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 72
    invoke-static {v7}, Lcom/amazon/identity/auth/device/jd;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v8}, Lcom/amazon/identity/auth/device/jd;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v6}, Lcom/amazon/identity/auth/device/jd;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v10, "accountDirectedId"

    .line 79
    invoke-virtual {v9, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "accountLoginName"

    .line 80
    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "accountCustomerName"

    .line 81
    invoke-virtual {v9, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 74
    :cond_1
    :goto_1
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->value()I

    move-result p1

    const-string p2, "Response contains empty fields"

    invoke-direct {p0, p3, p1, p2}, Lcom/amazon/identity/auth/device/bg;->a(Lcom/amazon/identity/auth/device/api/Callback;ILjava/lang/String;)V

    return-void

    .line 87
    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 88
    invoke-virtual {p1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p4, "ssoCodeExpiresIn"

    .line 89
    invoke-virtual {p1, p4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo p4, "ssoAccountsList"

    .line 90
    invoke-virtual {p1, p4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p4, "bootstrapHostDeviceType"

    .line 95
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/bh;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "bootstrapHostDSN"

    .line 96
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/bh;->bp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-interface {p3, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$PandaServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 112
    sget-object p2, Lcom/amazon/identity/auth/device/bg;->TAG:Ljava/lang/String;

    const-string/jumbo p4, "service exception when calling panda"

    invoke-static {p2, p4, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->value()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p2, p1}, Lcom/amazon/identity/auth/device/bg;->a(Lcom/amazon/identity/auth/device/api/Callback;ILjava/lang/String;)V

    return-void

    :catch_1
    move-exception p1

    .line 107
    sget-object p2, Lcom/amazon/identity/auth/device/bg;->TAG:Ljava/lang/String;

    const-string p4, "i/o exception when calling panda"

    invoke-static {p2, p4, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->NETWORK_FAILURE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->value()I

    move-result p2

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p2, p1}, Lcom/amazon/identity/auth/device/bg;->a(Lcom/amazon/identity/auth/device/api/Callback;ILjava/lang/String;)V

    return-void

    :catch_2
    move-exception p1

    .line 102
    sget-object p2, Lcom/amazon/identity/auth/device/bg;->TAG:Ljava/lang/String;

    const-string p4, "Json exception when calling panda"

    invoke-static {p2, p4, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->value()I

    move-result p2

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p2, p1}, Lcom/amazon/identity/auth/device/bg;->a(Lcom/amazon/identity/auth/device/api/Callback;ILjava/lang/String;)V

    return-void
.end method
