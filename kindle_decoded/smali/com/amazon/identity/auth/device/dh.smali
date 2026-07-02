.class public Lcom/amazon/identity/auth/device/dh;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.dh"

.field private static jv:Lcom/amazon/identity/auth/device/dh;


# instance fields
.field private final jw:Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

.field private final o:Lcom/amazon/identity/auth/device/ed;

.field private final w:Lcom/amazon/identity/auth/device/gc;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/dh;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "dcp_data_storage_factory"

    .line 48
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/gd;

    .line 49
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/gd;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/dh;->w:Lcom/amazon/identity/auth/device/gc;

    .line 50
    iget-object p1, p0, Lcom/amazon/identity/auth/device/dh;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/dh;->jw:Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    return-void
.end method

.method public static b(Lcom/amazon/identity/auth/device/gc;)Ljava/lang/String;
    .locals 2

    const-string v0, "dcp.only.protected.store"

    const-string v1, "dcp.only.encrypt.key"

    .line 95
    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/auth/device/gc;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/amazon/identity/auth/device/gc;)Ljava/lang/String;
    .locals 2

    const-string v0, "dcp.third.party.device.state"

    const-string/jumbo v1, "serial.number"

    .line 155
    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/auth/device/gc;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private cM()Ljava/lang/String;
    .locals 4

    .line 109
    sget-object v0, Lcom/amazon/identity/auth/device/dh;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "pkg %s is generating DSN"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dh;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dh;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/dh;->c(Lcom/amazon/identity/auth/device/gc;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 118
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dh;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/mw;->f(Lcom/amazon/identity/auth/device/ed;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dh;->jw:Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dh;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->bn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dh;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/mw;->bj(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    :try_start_0
    new-instance v1, Lcom/amazon/identity/auth/device/ec;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dh;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v1, v2}, Lcom/amazon/identity/auth/device/ec;-><init>(Landroid/content/Context;)V

    const-string v2, "dsn"

    .line 127
    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/cd;->a(Lcom/amazon/identity/auth/device/ec;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    sget-object v1, Lcom/amazon/identity/auth/device/dh;->TAG:Ljava/lang/String;

    const-string v2, "MAP retrieved serial number from Amazon Device Information Component: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 134
    sget-object v2, Lcom/amazon/identity/auth/device/dh;->TAG:Ljava/lang/String;

    const-string v3, "Unable to retrieve Device Serial Number from Amazon Device Information Component, which is present. Falling back to generating 3P value."

    invoke-static {v2, v3, v1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dh;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/iq;->aE(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 144
    sget-object v1, Lcom/amazon/identity/auth/device/dh;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Generating UUID serial number for third party: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 146
    :cond_2
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dh;->w:Lcom/amazon/identity/auth/device/gc;

    const-string v2, "dcp.third.party.device.state"

    const-string/jumbo v3, "serial.number"

    invoke-virtual {v1, v2, v3, v0}, Lcom/amazon/identity/auth/device/gc;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget-object v1, Lcom/amazon/identity/auth/device/dh;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MAP generated serial number: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method public static d(Lcom/amazon/identity/auth/device/gc;)I
    .locals 3

    const-string v0, "dcp.third.party.device.state"

    const-string v1, "info.version"

    .line 167
    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/auth/device/gc;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 168
    sget-object v0, Lcom/amazon/identity/auth/device/dh;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Get commonInfoVersion: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 169
    invoke-static {p0}, Lcom/amazon/identity/auth/device/jb;->dy(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized z(Landroid/content/Context;)Lcom/amazon/identity/auth/device/dh;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/dh;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/dh;->jv:Lcom/amazon/identity/auth/device/dh;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/amazon/identity/auth/device/dh;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/dh;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/identity/auth/device/dh;->jv:Lcom/amazon/identity/auth/device/dh;

    .line 60
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/dh;->jv:Lcom/amazon/identity/auth/device/dh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized cL()I
    .locals 6

    monitor-enter p0

    .line 65
    :try_start_0
    sget-object v0, Lcom/amazon/identity/auth/device/dh;->TAG:Ljava/lang/String;

    const-string v1, "Generating common info for version %d"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    sget-object v0, Lcom/amazon/identity/auth/device/dh;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "pkg %s is generating token key"

    aput-object v3, v1, v5

    iget-object v3, p0, Lcom/amazon/identity/auth/device/dh;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 1081
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dh;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/dh;->b(Lcom/amazon/identity/auth/device/gc;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dh;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/iq;->aE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    sget-object v0, Lcom/amazon/identity/auth/device/dh;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 1085
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dh;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/dl;->C(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ea;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/cr;->a(Lcom/amazon/identity/auth/device/ea;)Ljava/lang/String;

    move-result-object v0

    .line 1086
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dh;->w:Lcom/amazon/identity/auth/device/gc;

    const-string v3, "dcp.only.protected.store"

    const-string v4, "dcp.only.encrypt.key"

    invoke-virtual {v1, v3, v4, v0}, Lcom/amazon/identity/auth/device/gc;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    sget-object v0, Lcom/amazon/identity/auth/device/dh;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 1089
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/dh;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/dh;->cM()Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dh;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gc;->eS()V

    .line 1160
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1162
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dh;->w:Lcom/amazon/identity/auth/device/gc;

    const-string v3, "dcp.third.party.device.state"

    const-string v4, "info.version"

    invoke-virtual {v1, v3, v4, v0}, Lcom/amazon/identity/auth/device/gc;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
