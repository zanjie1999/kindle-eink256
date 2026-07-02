.class public final Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;
.super Lcom/amazon/identity/auth/device/gc;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage$GetTokenAction;,
        Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage$GetUserDataAction;,
        Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage$GetAccountsAction;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.storage.NonCanonicalDataStorage"


# instance fields
.field private final o:Lcom/amazon/identity/auth/device/ed;

.field private final oD:Lcom/amazon/identity/auth/device/as;

.field private final oj:Lcom/amazon/identity/auth/device/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gc;-><init>()V

    .line 146
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;->o:Lcom/amazon/identity/auth/device/ed;

    .line 147
    invoke-static {p1}, Lcom/amazon/identity/auth/device/g;->a(Landroid/content/Context;)Lcom/amazon/identity/auth/device/f;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;->oj:Lcom/amazon/identity/auth/device/f;

    .line 148
    iget-object p1, p0, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/at;->i(Landroid/content/Context;)Lcom/amazon/identity/auth/device/as;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;->oD:Lcom/amazon/identity/auth/device/as;

    return-void
.end method

.method public static aa(Landroid/content/Context;)Z
    .locals 1

    .line 166
    sget-object v0, Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;->CentralAPK:Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/it;->d(Landroid/content/Context;Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hu;->al(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->bf(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic ab(Landroid/content/Context;)Lcom/amazon/identity/auth/device/gc;
    .locals 1

    .line 1173
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p0

    const-string v0, "dcp_data_storage_factory"

    .line 1176
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/gd;

    .line 1177
    invoke-interface {p0}, Lcom/amazon/identity/auth/device/gd;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object p0

    .line 1179
    instance-of v0, p0, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;

    if-nez v0, :cond_0

    return-object p0

    .line 1181
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid datastorage"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private cF(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 1

    .line 302
    sget-object v0, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public G(Ljava/lang/String;)V
    .locals 0

    const-string p1, "Cannot call write operations on data storage in non-canonical process"

    .line 228
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;->cF(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public a(Lcom/amazon/identity/auth/device/fv;)V
    .locals 0

    const-string p1, "Cannot call write operations on data storage in non-canonical process"

    .line 309
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;->cF(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "Cannot call write operations on data storage in non-canonical process"

    .line 261
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;->cF(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/gc$a;)Z
    .locals 0

    const-string p1, "Cannot call write operations on data storage in non-canonical process"

    .line 222
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;->cF(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/gc$a;Ljava/util/List;)Z
    .locals 0
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

    .line 341
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "replaceAccounts not supported on NonCanonicalDataStorage."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.amazon.dcp.sso.property.account.UUID"

    .line 242
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.amazon.dcp.sso.property.secondary"

    .line 243
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.amazon.dcp.sso.property.account.ACCOUNT_STATUS"

    .line 244
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Cannot call getUserData on NonCanonicalDataStorage for: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;->cF(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 247
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;->oD:Lcom/amazon/identity/auth/device/as;

    invoke-interface {v0, p1, p2}, Lcom/amazon/identity/auth/device/as;->peekAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 248
    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->getValueOrAttributeDefault(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ca(Ljava/lang/String;)Ljava/util/Set;
    .locals 0
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

    const-string p1, "Cannot call getActors on NonCanonicalStorage."

    .line 267
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;->cF(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public cc(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 1

    .line 334
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getAccountForDirectedId not supported on NonCanonicalDataStorage."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ce(Ljava/lang/String;)Ljava/util/Set;
    .locals 0
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

    const-string p1, "Cannot get all token keys in non-canonical process"

    .line 347
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;->cF(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "Cannot call write operations on data storage in non-canonical process"

    .line 279
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;->cF(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public eS()V
    .locals 1

    const-string v0, "Cannot call sync dirty data on data storage in non-canonical process"

    .line 202
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;->cF(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
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

    const-string v0, "getAccountNames not supported in non-canonical process"

    .line 214
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;->cF(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "Cannot call device data operations on data storage in non-canonical process"

    .line 297
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;->cF(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
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

    .line 208
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;->oj:Lcom/amazon/identity/auth/device/f;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/f;->getAccounts()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSnapshot()Ljava/lang/String;
    .locals 2

    .line 327
    sget-object v0, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;->TAG:Ljava/lang/String;

    const-string v1, "getDeviceSnapshot API is only supported on 3P devices."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

.method public setup()V
    .locals 0

    return-void
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "Cannot call getToken on NonCanonicalStorage. Please use MAP\'s API instead."

    .line 273
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;->cF(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "Cannot call write operations on data storage in non-canonical process"

    .line 285
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;->cF(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "Cannot call device data operations on data storage in non-canonical process"

    .line 291
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/storage/NonCanonicalDataStorage;->cF(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
