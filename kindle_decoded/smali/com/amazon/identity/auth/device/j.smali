.class public Lcom/amazon/identity/auth/device/j;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final w:Lcom/amazon/identity/auth/device/gc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/j;->mContext:Landroid/content/Context;

    const-string v0, "dcp_data_storage_factory"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/gd;

    .line 33
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/gd;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/j;->w:Lcom/amazon/identity/auth/device/gc;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "com.amazon.dcp.sso.token.device.adptoken"

    .line 41
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.amazon.dcp.sso.token.device.privatekey"

    .line 43
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 47
    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 48
    invoke-static {p2}, Lcom/amazon/identity/auth/device/il;->dn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "Setting anonymous credentials adp token: %s, private key: %s"

    .line 46
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccountRegistrarAuthenticator"

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/amazon/identity/auth/device/j;->w:Lcom/amazon/identity/auth/device/gc;

    const-string p2, "com.amazon.identity.auth.device.credentials.AnonymousAccountCredentials.SHARED_PREFS"

    invoke-virtual {p1, p2, v0}, Lcom/amazon/identity/auth/device/gc;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
