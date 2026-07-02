.class public Lcom/amazon/identity/auth/device/di;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.di"

.field private static final jx:J

.field private static jy:Lcom/amazon/identity/auth/device/di;


# instance fields
.field private final dG:Ljava/util/concurrent/CountDownLatch;

.field private final jz:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final o:Lcom/amazon/identity/auth/device/ed;

.field private final w:Lcom/amazon/identity/auth/device/gc;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 21
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/identity/auth/device/di;->jx:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/di;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "dcp_data_storage_factory"

    .line 37
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/gd;

    .line 38
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/gd;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/di;->w:Lcom/amazon/identity/auth/device/gc;

    .line 40
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/di;->dG:Ljava/util/concurrent/CountDownLatch;

    .line 41
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/di;->jz:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static declared-synchronized A(Landroid/content/Context;)Lcom/amazon/identity/auth/device/di;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/di;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/di;->jy:Lcom/amazon/identity/auth/device/di;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/amazon/identity/auth/device/di;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/di;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/identity/auth/device/di;->jy:Lcom/amazon/identity/auth/device/di;

    .line 51
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/di;->jy:Lcom/amazon/identity/auth/device/di;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static B(Landroid/content/Context;)Z
    .locals 1

    .line 56
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hu;->am(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/amazon/identity/auth/device/hu;->al(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 58
    sget-object p0, Lcom/amazon/identity/auth/device/di;->TAG:Ljava/lang/String;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/di;)V
    .locals 5

    .line 1146
    iget-object v0, p0, Lcom/amazon/identity/auth/device/di;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/hu;->am(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1151
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v0, :cond_0

    .line 1148
    iget-object p0, p0, Lcom/amazon/identity/auth/device/di;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/dh;->z(Landroid/content/Context;)Lcom/amazon/identity/auth/device/dh;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/dh;->cL()I

    .line 1149
    sget-object p0, Lcom/amazon/identity/auth/device/di;->TAG:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v3, v0, v1

    const-string v1, "Central model has no race conditions in terms of common info and hence can be generated locally. Generated version %d"

    .line 1150
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1149
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1155
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/di;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/dh;->d(Lcom/amazon/identity/auth/device/gc;)I

    move-result v0

    const/4 v4, 0x2

    if-lez v0, :cond_1

    .line 1159
    sget-object p0, Lcom/amazon/identity/auth/device/di;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    .line 1162
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "No need to generate more common info. Our needed version is %d and currently we have version %d"

    .line 1160
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1159
    invoke-static {p0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void

    .line 1166
    :cond_1
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/di;->cQ()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1167
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_4

    .line 1169
    :cond_2
    sget-object v0, Lcom/amazon/identity/auth/device/di;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    if-eqz p0, :cond_3

    .line 1172
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-string p0, "<Not Found>"

    :goto_0
    aput-object p0, v4, v2

    const-string p0, "The main MAP app cannot generate version high enough to function properly. We need version %d or higher, but got %s."

    .line 1170
    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1169
    invoke-static {v0, p0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/di;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/identity/auth/device/di;->dG:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private cP()V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/amazon/identity/auth/device/di;->jz:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    sget-object v0, Lcom/amazon/identity/auth/device/di;->TAG:Ljava/lang/String;

    const-string v1, "Common Info Generator not initialized yet, starting init"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/di;->init()V

    .line 133
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/di;->dG:Ljava/util/concurrent/CountDownLatch;

    sget-wide v1, Lcom/amazon/identity/auth/device/di;->jx:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    sget-object v0, Lcom/amazon/identity/auth/device/di;->TAG:Ljava/lang/String;

    const-string v1, "We timed out waiting for common info to be generated"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 140
    sget-object v1, Lcom/amazon/identity/auth/device/di;->TAG:Ljava/lang/String;

    const-string v2, "We were interrupted waiting for common info to be generated"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private cQ()Ljava/lang/Integer;
    .locals 8

    .line 178
    sget-object v0, Lcom/amazon/identity/auth/device/di;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/di;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s now do generateCommonInfo"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/amazon/identity/auth/device/di;->o:Lcom/amazon/identity/auth/device/ed;

    .line 180
    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->cX()Ljava/util/List;

    move-result-object v0

    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/du;

    new-array v3, v1, [Ljava/lang/Object;

    .line 184
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v5, "Calling Package %s to generate common info"

    invoke-static {v5, v3}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :try_start_0
    sget-object v3, Lcom/amazon/identity/auth/device/di;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CommonInfoGetter.generateCommonInfo sync: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/du;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/du;->cL()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v3

    .line 193
    sget-object v5, Lcom/amazon/identity/auth/device/di;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to initialize common info from "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v3}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    iget-object v2, p0, Lcom/amazon/identity/auth/device/di;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->O()V

    goto :goto_0

    .line 200
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/di;->TAG:Ljava/lang/String;

    const-string v1, "Cannot find other package to generate common info from."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public cN()Ljava/lang/String;
    .locals 4

    .line 101
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/di;->cP()V

    .line 102
    iget-object v0, p0, Lcom/amazon/identity/auth/device/di;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/dh;->c(Lcom/amazon/identity/auth/device/gc;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 105
    sget-object v1, Lcom/amazon/identity/auth/device/di;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "Cannot generate the dsn"

    invoke-static {v1, v3, v2}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method

.method public cO()Ljava/lang/String;
    .locals 4

    .line 113
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/di;->cP()V

    .line 114
    iget-object v0, p0, Lcom/amazon/identity/auth/device/di;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/dh;->b(Lcom/amazon/identity/auth/device/gc;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 117
    sget-object v1, Lcom/amazon/identity/auth/device/di;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "Cannot generate the token key"

    invoke-static {v1, v3, v2}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method

.method public init()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/amazon/identity/auth/device/di;->jz:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/amazon/identity/auth/device/di;->TAG:Ljava/lang/String;

    const-string v1, "Common Data has already been initialized"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/di;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/di;->B(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    sget-object v0, Lcom/amazon/identity/auth/device/di;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void

    .line 79
    :cond_1
    sget-object v0, Lcom/amazon/identity/auth/device/di;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/amazon/identity/auth/device/di$1;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/di$1;-><init>(Lcom/amazon/identity/auth/device/di;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V

    return-void
.end method
