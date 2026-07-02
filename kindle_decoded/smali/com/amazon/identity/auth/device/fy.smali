.class public final Lcom/amazon/identity/auth/device/fy;
.super Lcom/amazon/identity/auth/device/gc;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.fy"

.field private static nw:Lcom/amazon/identity/auth/device/fy;


# instance fields
.field private final nx:Lcom/amazon/identity/auth/device/gl;

.field private final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/gl;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gc;-><init>()V

    .line 35
    sget-object v0, Lcom/amazon/identity/auth/device/fy;->TAG:Ljava/lang/String;

    const-string v1, "Constructing CentralLocalDataStorage"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/fy;->o:Lcom/amazon/identity/auth/device/ed;

    .line 38
    iput-object p2, p0, Lcom/amazon/identity/auth/device/fy;->nx:Lcom/amazon/identity/auth/device/gl;

    return-void
.end method

.method public static declared-synchronized S(Landroid/content/Context;)Lcom/amazon/identity/auth/device/fy;
    .locals 3

    const-class v0, Lcom/amazon/identity/auth/device/fy;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/fy;->nw:Lcom/amazon/identity/auth/device/fy;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p0

    .line 46
    new-instance v1, Lcom/amazon/identity/auth/device/fy;

    .line 47
    invoke-static {p0}, Lcom/amazon/identity/auth/device/gl;->Z(Landroid/content/Context;)Lcom/amazon/identity/auth/device/gl;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/amazon/identity/auth/device/fy;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/gl;)V

    sput-object v1, Lcom/amazon/identity/auth/device/fy;->nw:Lcom/amazon/identity/auth/device/fy;

    .line 50
    :cond_1
    sget-object p0, Lcom/amazon/identity/auth/device/fy;->nw:Lcom/amazon/identity/auth/device/fy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Lcom/amazon/identity/auth/device/ds;Lcom/amazon/identity/auth/device/co;)Z
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ds;->dx()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/amazon/identity/auth/device/features/Feature;->IsolateApplication:Lcom/amazon/identity/auth/device/features/Feature;

    invoke-virtual {p1, p0}, Lcom/amazon/identity/auth/device/co;->a(Lcom/amazon/identity/auth/device/features/Feature;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public G(Ljava/lang/String;)V
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fy;->initialize()V

    .line 133
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fy;->nx:Lcom/amazon/identity/auth/device/gl;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/gl;->co(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 136
    sget-object p1, Lcom/amazon/identity/auth/device/fy;->TAG:Ljava/lang/String;

    const-string v0, "Removing the account was not successful."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 1
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

    .line 217
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fy;->initialize()V

    .line 218
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fy;->nx:Lcom/amazon/identity/auth/device/gl;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gl;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazon/identity/auth/device/fv;)V
    .locals 2

    .line 252
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fy;->initialize()V

    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 255
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->eQ()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 256
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->eP()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 258
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fy;->nx:Lcom/amazon/identity/auth/device/gl;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->getDirectedId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/amazon/identity/auth/device/gl;->f(Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 262
    sget-object p1, Lcom/amazon/identity/auth/device/fy;->TAG:Ljava/lang/String;

    const-string v0, "Setting the data was not successful."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fy;->initialize()V

    .line 154
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fy;->nx:Lcom/amazon/identity/auth/device/gl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gl;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 158
    sget-object p1, Lcom/amazon/identity/auth/device/fy;->TAG:Ljava/lang/String;

    const-string p2, "Setting the userdata was not successful."

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/gc$a;)Z
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fy;->initialize()V

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/fv;->eQ()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 103
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/fv;->eP()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 105
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/fv;->getDirectedId()Ljava/lang/String;

    move-result-object p2

    .line 1120
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fy;->nx:Lcom/amazon/identity/auth/device/gl;

    invoke-virtual {v1, p1, p2, v0}, Lcom/amazon/identity/auth/device/gl;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 111
    invoke-interface {p3}, Lcom/amazon/identity/auth/device/gc$a;->onSuccess()V

    :cond_0
    return p1
.end method

.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/gc$a;Ljava/util/List;)Z
    .locals 2
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

    .line 299
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fy;->initialize()V

    .line 301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 303
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/fv;->eQ()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 305
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/fv;->eP()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 307
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fy;->nx:Lcom/amazon/identity/auth/device/gl;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/fv;->getDirectedId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2, v0, p4}, Lcom/amazon/identity/auth/device/gl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 313
    invoke-interface {p3}, Lcom/amazon/identity/auth/device/gc$a;->onSuccess()V

    :cond_0
    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fy;->initialize()V

    .line 146
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fy;->nx:Lcom/amazon/identity/auth/device/gl;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gl;->M(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fy;->initialize()V

    .line 240
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fy;->nx:Lcom/amazon/identity/auth/device/gl;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gl;->g(Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 244
    sget-object p1, Lcom/amazon/identity/auth/device/fy;->TAG:Ljava/lang/String;

    const-string p2, "Setting device tokens was not successful. "

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ca(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
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

    .line 166
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fy;->initialize()V

    .line 167
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fy;->nx:Lcom/amazon/identity/auth/device/gl;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/gl;->ca(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public cc(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public ce(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
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

    .line 322
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fy;->nx:Lcom/amazon/identity/auth/device/gl;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/gl;->ce(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fy;->initialize()V

    .line 183
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fy;->nx:Lcom/amazon/identity/auth/device/gl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gl;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 187
    sget-object p1, Lcom/amazon/identity/auth/device/fy;->TAG:Ljava/lang/String;

    const-string p2, "Setting the token was not successful."

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public eS()V
    .locals 0

    return-void
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

    .line 88
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fy;->initialize()V

    .line 89
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fy;->nx:Lcom/amazon/identity/auth/device/gl;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gl;->eT()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 224
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fy;->initialize()V

    .line 226
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fy;->nx:Lcom/amazon/identity/auth/device/gl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gl;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 230
    sget-object p1, Lcom/amazon/identity/auth/device/fy;->TAG:Ljava/lang/String;

    const-string p2, "Setting device token was not successful. "

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
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

    .line 81
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fy;->initialize()V

    .line 82
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fy;->nx:Lcom/amazon/identity/auth/device/gl;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gl;->getAccounts()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSnapshot()Ljava/lang/String;
    .locals 2

    .line 284
    sget-object v0, Lcom/amazon/identity/auth/device/fy;->TAG:Ljava/lang/String;

    const-string v1, "getDeviceSnapshot API is only supported on 3P devices."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public declared-synchronized initialize()V
    .locals 0

    monitor-enter p0

    .line 66
    monitor-exit p0

    return-void
.end method

.method public setup()V
    .locals 0

    return-void
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 173
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fy;->initialize()V

    .line 175
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fy;->nx:Lcom/amazon/identity/auth/device/gl;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gl;->M(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 195
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fy;->initialize()V

    .line 197
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fy;->nx:Lcom/amazon/identity/auth/device/gl;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gl;->N(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 201
    sget-object p1, Lcom/amazon/identity/auth/device/fy;->TAG:Ljava/lang/String;

    const-string p2, "Expiring the token was not successful. "

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fy;->initialize()V

    .line 211
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fy;->nx:Lcom/amazon/identity/auth/device/gl;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gl;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
