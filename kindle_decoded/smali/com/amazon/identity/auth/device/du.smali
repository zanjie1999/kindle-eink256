.class public Lcom/amazon/identity/auth/device/du;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.du"


# instance fields
.field private bi:Ljava/lang/String;

.field private final kA:Ljava/lang/String;

.field private kB:Ljava/lang/Integer;

.field private kC:Ljava/lang/Integer;

.field private kD:Ljava/lang/Integer;

.field private kE:Ljava/lang/String;

.field private kF:Ljava/lang/Long;

.field private kG:Ljava/lang/Integer;

.field private kH:Ljava/lang/String;

.field private kI:Z

.field private kJ:Lcom/amazon/identity/auth/device/framework/RemoteMAPException;

.field private volatile kK:Z

.field private final mContext:Landroid/content/Context;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/du;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/du;->mPackageName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lcom/amazon/identity/auth/device/du;->kA:Ljava/lang/String;

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/du;->kI:Z

    .line 61
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/du;->kK:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/du;->mContext:Landroid/content/Context;

    .line 49
    iget-object p1, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/du;->mPackageName:Ljava/lang/String;

    .line 50
    iget-object p1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/du;->kA:Ljava/lang/String;

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/du;->kI:Z

    .line 52
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/du;->kK:Z

    return-void
.end method

.method public static a(Lcom/amazon/identity/auth/device/du;Lcom/amazon/identity/auth/device/du;)I
    .locals 0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 211
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/du;->a(Lcom/amazon/identity/auth/device/du;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/du;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/amazon/identity/auth/device/du;->kB:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/du;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/amazon/identity/auth/device/du;->kH:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 388
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/identity/auth/device/du;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/du;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/amazon/identity/auth/device/du;->kC:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/du;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/identity/auth/device/du;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/du;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/amazon/identity/auth/device/du;->bi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/amazon/identity/auth/device/du;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/amazon/identity/auth/device/du;->kD:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic c(Lcom/amazon/identity/auth/device/du;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/identity/auth/device/du;->bi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/amazon/identity/auth/device/du;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/amazon/identity/auth/device/du;->kE:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/amazon/identity/auth/device/du;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/identity/auth/device/du;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/amazon/identity/auth/device/du;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/amazon/identity/auth/device/du;->kG:Ljava/lang/Integer;

    return-object p1
.end method

.method private declared-synchronized dK()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/framework/RemoteMAPException;
        }
    .end annotation

    monitor-enter p0

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/du;->kJ:Lcom/amazon/identity/auth/device/framework/RemoteMAPException;

    if-nez v0, :cond_1

    .line 221
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/du;->kI:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 223
    monitor-exit p0

    return-void

    .line 226
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/du;->dL()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    .line 218
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/amazon/identity/auth/device/du;->kJ:Lcom/amazon/identity/auth/device/framework/RemoteMAPException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized dL()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/framework/RemoteMAPException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 234
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/du;->kI:Z

    .line 236
    iget-object v0, p0, Lcom/amazon/identity/auth/device/du;->kA:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/gn;->cA(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 237
    new-instance v1, Lcom/amazon/identity/auth/device/ec;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/du;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/amazon/identity/auth/device/ec;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :try_start_1
    new-instance v2, Lcom/amazon/identity/auth/device/du$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/identity/auth/device/du$1;-><init>(Lcom/amazon/identity/auth/device/du;Landroid/net/Uri;)V

    invoke-virtual {v1, v0, v2}, Lcom/amazon/identity/auth/device/ec;->a(Landroid/net/Uri;Lcom/amazon/identity/auth/device/dj;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lcom/amazon/identity/auth/device/du;->kJ:Lcom/amazon/identity/auth/device/framework/RemoteMAPException;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 324
    :try_start_2
    sget-object v1, Lcom/amazon/identity/auth/device/du;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to query "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RemoteMapInfoFailure:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 326
    new-instance v1, Lcom/amazon/identity/auth/device/framework/RemoteMAPException;

    invoke-direct {v1, v0}, Lcom/amazon/identity/auth/device/framework/RemoteMAPException;-><init>(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/amazon/identity/auth/device/du;->kJ:Lcom/amazon/identity/auth/device/framework/RemoteMAPException;

    .line 327
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/du;)I
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 171
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/du;->dK()V
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :catch_0
    :try_start_1
    invoke-direct {p1}, Lcom/amazon/identity/auth/device/du;->dK()V
    :try_end_1
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    .line 189
    :goto_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/du;->kB:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/amazon/identity/auth/device/du;->kB:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/ie;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/amazon/identity/auth/device/du;->kC:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/amazon/identity/auth/device/du;->kC:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/ie;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v1

    if-eqz v1, :cond_2

    return v1

    .line 201
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_4

    if-eqz p1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    if-nez p1, :cond_5

    return v0

    .line 1076
    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public cL()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/framework/RemoteMAPException;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/amazon/identity/auth/device/du;->kA:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 335
    sget-object v0, Lcom/amazon/identity/auth/device/du;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/amazon/identity/auth/device/du;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/dh;->z(Landroid/content/Context;)Lcom/amazon/identity/auth/device/dh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dh;->cL()I

    move-result v0

    return v0

    .line 339
    :cond_0
    invoke-static {v0}, Lcom/amazon/identity/auth/device/gn;->cE(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 340
    sget-object v1, Lcom/amazon/identity/auth/device/du;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Querying content provider URI : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from app : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/du;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 342
    new-instance v1, Lcom/amazon/identity/auth/device/ec;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/du;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/amazon/identity/auth/device/ec;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "value"

    .line 343
    invoke-static {v1, v0, v2}, Lcom/amazon/identity/auth/device/hy;->a(Lcom/amazon/identity/auth/device/ec;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {v0}, Lcom/amazon/identity/auth/device/jb;->dz(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 352
    :cond_1
    new-instance v0, Lcom/amazon/identity/auth/device/framework/RemoteMAPException;

    const-string v1, "Common info version String not a valid integer."

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/framework/RemoteMAPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dA()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/du;->kK:Z

    return v0
.end method

.method public dB()V
    .locals 1

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/du;->kK:Z

    return-void
.end method

.method public declared-synchronized dC()Ljava/lang/Long;
    .locals 2

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/du;->kF:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/amazon/identity/auth/device/du;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/iq;->x(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/du;->kF:Ljava/lang/Long;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/du;->kF:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dD()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/framework/RemoteMAPException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/amazon/identity/auth/device/du;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/p;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    monitor-enter p0

    .line 118
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/du;->dK()V

    .line 119
    iget-object v0, p0, Lcom/amazon/identity/auth/device/du;->kE:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 120
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 123
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/du;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public dE()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/framework/RemoteMAPException;
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/du;->dK()V

    .line 130
    iget-object v0, p0, Lcom/amazon/identity/auth/device/du;->kB:Ljava/lang/Integer;

    return-object v0
.end method

.method public dF()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/framework/RemoteMAPException;
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/du;->dK()V

    .line 136
    iget-object v0, p0, Lcom/amazon/identity/auth/device/du;->kC:Ljava/lang/Integer;

    return-object v0
.end method

.method public dG()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/framework/RemoteMAPException;
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/du;->dK()V

    .line 142
    iget-object v0, p0, Lcom/amazon/identity/auth/device/du;->kD:Ljava/lang/Integer;

    return-object v0
.end method

.method public dH()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/framework/RemoteMAPException;
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/du;->dL()V

    .line 148
    iget-object v0, p0, Lcom/amazon/identity/auth/device/du;->kG:Ljava/lang/Integer;

    return-object v0
.end method

.method public dI()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/framework/RemoteMAPException;
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/du;->dK()V

    .line 154
    iget-object v0, p0, Lcom/amazon/identity/auth/device/du;->kH:Ljava/lang/String;

    return-object v0
.end method

.method public dJ()Z
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/amazon/identity/auth/device/du;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getDeviceType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/framework/RemoteMAPException;
        }
    .end annotation

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/du;->bi:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/amazon/identity/auth/device/du;->bi:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 101
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/du;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/p;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/du;->dK()V

    .line 104
    iget-object v0, p0, Lcom/amazon/identity/auth/device/du;->bi:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 107
    :cond_1
    :try_start_2
    sget-object v0, Lcom/amazon/identity/auth/device/du;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/amazon/identity/auth/device/du;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/ib;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/du;->bi:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/identity/auth/device/du;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderAuthority()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/identity/auth/device/du;->kA:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageName"

    invoke-direct {p0, v0, v2, v1}, Lcom/amazon/identity/auth/device/du;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    const-string v1, "DeviceType"

    .line 365
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/du;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/identity/auth/device/du;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "MajorVersion"

    .line 366
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/du;->dE()Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/identity/auth/device/du;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "MinorVersion"

    .line 367
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/du;->dF()Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/identity/auth/device/du;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "SWVersion"

    .line 368
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/du;->dG()Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/identity/auth/device/du;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "BrazilVersion"

    .line 369
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/du;->dI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/identity/auth/device/du;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "DeviceSerialNumber"

    .line 370
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/du;->dD()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/identity/auth/device/du;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 374
    sget-object v2, Lcom/amazon/identity/auth/device/du;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to query "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 376
    :goto_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/du;->kG:Ljava/lang/Integer;

    const-string v2, "MAPInitVersion"

    invoke-direct {p0, v0, v2, v1}, Lcom/amazon/identity/auth/device/du;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "]"

    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
