.class public Lcom/amazon/identity/auth/device/bv;
.super Lcom/amazon/identity/auth/device/br;
.source "DCP"


# instance fields
.field private final be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

.field private hC:Lcom/amazon/identity/auth/device/a;

.field private final mContext:Landroid/content/Context;

.field private final w:Lcom/amazon/identity/auth/device/gc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/br;-><init>()V

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/bv;->mContext:Landroid/content/Context;

    const-string v0, "dcp_amazon_account_man"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/bv;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    .line 46
    iget-object p1, p0, Lcom/amazon/identity/auth/device/bv;->mContext:Landroid/content/Context;

    const-string v0, "dcp_data_storage_factory"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/gd;

    .line 48
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/gd;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/bv;->w:Lcom/amazon/identity/auth/device/gc;

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static a(Lcom/amazon/identity/auth/device/gc;)Lcom/amazon/identity/auth/device/a;
    .locals 11

    .line 90
    sget-object v0, Lcom/amazon/identity/auth/device/utils/AccountConstants;->TOKEN_TYPE_DEVICE_ADP_TOKEN_AND_PRIVATE_KEY_LIST:Ljava/util/List;

    const-string v1, "com.amazon.identity.auth.device.b.e.SHARED_PREFS"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/identity/auth/device/gc;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "com.amazon.dcp.sso.token.device.adptoken"

    .line 93
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "com.amazon.dcp.sso.token.device.privatekey"

    .line 94
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 98
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    const-string v8, "AnonymousAccountCredentials"

    const-string v9, "com.amazon.identity.auth.device.credentials.AnonymousAccountCredentials.SHARED_PREFS"

    if-nez v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "Migrating anonymous credentials from legacy name space to new one."

    .line 100
    invoke-static {v8, v6}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    new-array v6, v7, [Ljava/lang/String;

    const-string/jumbo v10, "obfuscated_ANONYMOUS_CREDENTIALS_NAMESPACE"

    .line 101
    invoke-static {v10, v6}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, v9, v0}, Lcom/amazon/identity/auth/device/gc;->c(Ljava/lang/String;Ljava/util/Map;)V

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v6, ""

    .line 105
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {p0, v1, v0}, Lcom/amazon/identity/auth/device/gc;->c(Ljava/lang/String;Ljava/util/Map;)V

    .line 110
    new-instance p0, Lcom/amazon/identity/auth/device/a;

    invoke-direct {p0, v3, v5}, Lcom/amazon/identity/auth/device/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/utils/AccountConstants;->TOKEN_TYPE_DEVICE_ADP_TOKEN_AND_PRIVATE_KEY_LIST:Ljava/util/List;

    invoke-virtual {p0, v9, v0}, Lcom/amazon/identity/auth/device/gc;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    .line 117
    new-instance v0, Lcom/amazon/identity/auth/device/a;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 118
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/amazon/identity/auth/device/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 122
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/a;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x1

    .line 123
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Returning adp token: %s, private key: %s"

    .line 121
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method protected bx()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bv;->hC:Lcom/amazon/identity/auth/device/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/identity/auth/device/bv;->hC:Lcom/amazon/identity/auth/device/a;

    .line 78
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/a;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bv;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/bv;->a(Lcom/amazon/identity/auth/device/gc;)Lcom/amazon/identity/auth/device/a;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/bv;->hC:Lcom/amazon/identity/auth/device/a;

    :cond_1
    return-void
.end method

.method public x()Lcom/amazon/identity/auth/device/a;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/bv;->bx()V

    .line 55
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bv;->hC:Lcom/amazon/identity/auth/device/a;

    return-object v0
.end method

.method public y()Z
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bv;->be:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->m()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bv;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/bv;->a(Lcom/amazon/identity/auth/device/gc;)Lcom/amazon/identity/auth/device/a;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/bv;->x()Lcom/amazon/identity/auth/device/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/a;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/bv;->x()Lcom/amazon/identity/auth/device/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/bv;->x()Lcom/amazon/identity/auth/device/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/a;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/a;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/bv;->x()Lcom/amazon/identity/auth/device/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method
