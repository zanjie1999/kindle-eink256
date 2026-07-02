.class public Lcom/amazon/identity/auth/device/gg;
.super Lcom/amazon/identity/auth/device/gc;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/gg$a;
    }
.end annotation


# static fields
.field private static final nK:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static nL:Lcom/amazon/identity/auth/device/gg;

.field private static final nM:Ljava/util/concurrent/Executor;


# instance fields
.field private final gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

.field private final gu:Lcom/amazon/identity/auth/device/storage/LambortishClock;

.field private final mContext:Landroid/content/Context;

.field private final nN:Lcom/amazon/identity/auth/device/gq;

.field private final nO:Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 56
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "dcp.third.party.device.state"

    const-string/jumbo v3, "serial.number"

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/gg;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "dcp.only.protected.store"

    const-string v3, "dcp.only.encrypt.key"

    .line 57
    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/gg;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 56
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/identity/auth/device/gg;->nK:Ljava/util/Set;

    .line 72
    new-instance v0, Lcom/amazon/identity/auth/device/el;

    .line 73
    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/el;-><init>(Ljava/util/concurrent/ExecutorService;)V

    sput-object v0, Lcom/amazon/identity/auth/device/gg;->nM:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gc;-><init>()V

    .line 86
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gg;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "sso_local_datastorage"

    .line 88
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gg;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    .line 90
    new-instance p1, Lcom/amazon/identity/auth/device/gq;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/gq;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gg;->nN:Lcom/amazon/identity/auth/device/gq;

    .line 92
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gg;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->V(Landroid/content/Context;)Lcom/amazon/identity/auth/device/storage/LambortishClock;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gg;->gu:Lcom/amazon/identity/auth/device/storage/LambortishClock;

    .line 93
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gg;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gg;->nO:Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    return-void
.end method

.method private static A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "DistributedDataStorage"

    .line 146
    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gg;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/iq;->aE(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    new-array p1, v3, [Ljava/lang/Object;

    .line 158
    iget-object p2, p0, Lcom/amazon/identity/auth/device/gg;->mContext:Landroid/content/Context;

    .line 159
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    const-string p2, "Fast return, the current app itself should generate device data: %s"

    .line 158
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-object v2

    :cond_1
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v4

    aput-object p2, v5, v3

    const-string v6, "Distributed storage fetches remote common data for %s, %s"

    .line 163
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v5, p0, Lcom/amazon/identity/auth/device/gg;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->cX()Ljava/util/List;

    move-result-object v5

    .line 167
    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 169
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/identity/auth/device/du;

    .line 171
    invoke-virtual {v6}, Lcom/amazon/identity/auth/device/du;->dJ()Z

    move-result v7

    if-eqz v7, :cond_3

    new-array v7, v3, [Ljava/lang/Object;

    .line 173
    invoke-virtual {v6}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v4

    const-string v6, "Skip current package %s, because it\'s itself"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Fetching data from "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 181
    :try_start_0
    new-instance v7, Lcom/amazon/identity/auth/device/gp;

    iget-object v8, p0, Lcom/amazon/identity/auth/device/gg;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v6}, Lcom/amazon/identity/auth/device/gp;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/du;)V

    .line 182
    invoke-virtual {v7, p1, p2}, Lcom/amazon/identity/auth/device/gp;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 183
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "Value of %s, %s is %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v4

    aput-object p2, v8, v3

    aput-object v6, v8, v1

    .line 185
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception v6

    const-string v7, "Failed to get common info from remote storage, skipping..."

    .line 191
    invoke-static {v0, v7, v6}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    return-object v2

    :cond_5
    :goto_1
    const-string/jumbo p1, "namespace or key is null, just return null"

    .line 149
    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static declared-synchronized U(Landroid/content/Context;)Lcom/amazon/identity/auth/device/gg;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/gg;

    monitor-enter v0

    .line 112
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/gg;->nL:Lcom/amazon/identity/auth/device/gg;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    new-instance v1, Lcom/amazon/identity/auth/device/gg;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/gg;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/identity/auth/device/gg;->nL:Lcom/amazon/identity/auth/device/gg;

    .line 117
    :cond_1
    sget-object p0, Lcom/amazon/identity/auth/device/gg;->nL:Lcom/amazon/identity/auth/device/gg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/gg;)Lcom/amazon/identity/auth/device/storage/LocalDataStorage;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/identity/auth/device/gg;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    return-object p0
.end method

.method private a(Lcom/amazon/identity/auth/device/gg$a;Lcom/amazon/identity/auth/device/gc$a;)V
    .locals 2

    .line 845
    sget-object v0, Lcom/amazon/identity/auth/device/gg;->nM:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/amazon/identity/auth/device/gg$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/identity/auth/device/gg$9;-><init>(Lcom/amazon/identity/auth/device/gg;Lcom/amazon/identity/auth/device/gg$a;Lcom/amazon/identity/auth/device/gc$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/amazon/identity/auth/device/gg$a;)Z
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg;->nN:Lcom/amazon/identity/auth/device/gq;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gq;->fJ()Lcom/amazon/identity/auth/device/gq$a;

    move-result-object v0

    .line 865
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/gg;->b(Lcom/amazon/identity/auth/device/gg$a;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 872
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gq$a;->fK()V

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    .line 874
    throw p1
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/gg;Lcom/amazon/identity/auth/device/gg$a;)Z
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/gg;->a(Lcom/amazon/identity/auth/device/gg$a;)Z

    move-result p0

    return p0
.end method

.method private b(Lcom/amazon/identity/auth/device/gg$a;)Z
    .locals 13

    .line 8943
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg;->nO:Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->cW()Ljava/util/Collection;

    move-result-object v0

    .line 880
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "DistributedDataStorage"

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/identity/auth/device/du;

    .line 882
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/du;->dJ()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 889
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/gg$a;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 890
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v7, p0, Lcom/amazon/identity/auth/device/gg;->mContext:Landroid/content/Context;

    .line 891
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const-string v7, "Propogating action %s to package %s from package %s"

    .line 887
    invoke-static {v7, v6}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 893
    new-instance v6, Lcom/amazon/identity/auth/device/gp;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/gg;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v3}, Lcom/amazon/identity/auth/device/gp;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/du;)V

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :cond_1
    add-int/2addr v3, v1

    .line 903
    :try_start_0
    invoke-interface {p1, v6}, Lcom/amazon/identity/auth/device/gg$a;->a(Lcom/amazon/identity/auth/device/gp;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x1

    goto :goto_1

    :catch_0
    move-exception v10

    new-array v11, v1, [Ljava/lang/Object;

    .line 910
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/gg$a;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v5

    const-string v12, "Package threw runtime exception while propogating action %s"

    .line 909
    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 908
    invoke-static {v4, v11, v10}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-nez v7, :cond_2

    if-lt v3, v8, :cond_1

    :cond_2
    if-nez v9, :cond_3

    new-array v3, v1, [Ljava/lang/Object;

    .line 920
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/gg$a;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v5, "Failed action %s with remote package."

    .line 919
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 918
    invoke-static {v4, v3}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    and-int/2addr v2, v9

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    new-array v0, v1, [Ljava/lang/Object;

    .line 929
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/gg$a;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "Action %s was synced to all other MAP instances successfully"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 928
    invoke-static {v4}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 930
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/gg$a;->fl()V

    :cond_5
    return v2
.end method

.method private ey()V
    .locals 7

    .line 245
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg;->mContext:Landroid/content/Context;

    .line 246
    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->cX()Ljava/util/List;

    move-result-object v0

    .line 249
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "DistributedDataStorage"

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/du;

    .line 251
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/du;->dJ()Z

    move-result v4

    if-nez v4, :cond_0

    .line 261
    :try_start_0
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/du;->dH()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v5, 0x3

    .line 262
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_0 .. :try_end_0} :catch_1

    if-le v5, v6, :cond_1

    goto :goto_1

    .line 281
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Initializing data storage from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The data sync is: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/du;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 283
    new-instance v4, Lcom/amazon/identity/auth/device/gp;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/gg;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v2}, Lcom/amazon/identity/auth/device/gp;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/du;)V

    .line 285
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/gp;->fH()Ljava/util/Collection;

    move-result-object v1
    :try_end_1
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_0

    goto :goto_2

    :catch_0
    const-string v2, "Failed to get all data from the package"

    .line 289
    invoke-static {v3, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v2, p0, Lcom/amazon/identity/auth/device/gg;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->O()V

    goto :goto_0

    .line 264
    :cond_2
    :goto_1
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t initialize from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " because its MAP init version is "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    const-string v2, "Failed to get MAP init version"

    .line 271
    invoke-static {v3, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v2, p0, Lcom/amazon/identity/auth/device/gg;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->O()V

    goto/16 :goto_0

    :cond_3
    :goto_2
    if-nez v1, :cond_4

    const-string v0, "Did not find another MAP application to get initial data from."

    .line 305
    invoke-static {v3, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 309
    :cond_4
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Ljava/util/Collection;)Z

    .line 315
    invoke-virtual {p0, v1}, Lcom/amazon/identity/auth/device/gg;->b(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized G(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 495
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/gg;->initialize()V

    .line 497
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg;->gu:Lcom/amazon/identity/auth/device/storage/LambortishClock;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->fp()Ljava/util/Date;

    move-result-object v0

    .line 498
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gg;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/lang/String;Ljava/util/Date;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "DistributedDataStorage"

    const-string v0, "Removing the account was not successful"

    .line 501
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    monitor-exit p0

    return-void

    .line 505
    :cond_0
    :try_start_1
    new-instance v1, Lcom/amazon/identity/auth/device/gg$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/amazon/identity/auth/device/gg$3;-><init>(Lcom/amazon/identity/auth/device/gg;Ljava/lang/String;Ljava/util/Date;)V

    const/4 p1, 0x0

    .line 3839
    invoke-direct {p0, v1, p1}, Lcom/amazon/identity/auth/device/gg;->a(Lcom/amazon/identity/auth/device/gg$a;Lcom/amazon/identity/auth/device/gc$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/amazon/identity/auth/device/fv;)V
    .locals 9

    .line 639
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/gg;->initialize()V

    .line 641
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->getDirectedId()Ljava/lang/String;

    move-result-object v3

    .line 642
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->eP()Ljava/util/Map;

    move-result-object v2

    .line 643
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fv;->eQ()Ljava/util/Map;

    move-result-object v5

    .line 648
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v1, "DistributedDataStorage"

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 651
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 653
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/amazon/identity/auth/device/gg;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v3, v6}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 662
    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void

    .line 667
    :cond_2
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg;->gu:Lcom/amazon/identity/auth/device/storage/LambortishClock;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->fp()Ljava/util/Date;

    move-result-object v6

    .line 668
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    invoke-virtual {v0, p1, v6, v4}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Lcom/amazon/identity/auth/device/fv;Ljava/util/Date;Z)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "Setting the data was not successful"

    .line 672
    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 676
    :cond_3
    new-instance p1, Lcom/amazon/identity/auth/device/gg$6;

    move-object v0, p1

    move-object v1, p0

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/gg$6;-><init>(Lcom/amazon/identity/auth/device/gg;Ljava/util/Map;Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 6839
    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/gg;->a(Lcom/amazon/identity/auth/device/gg$a;Lcom/amazon/identity/auth/device/gc$a;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    .line 540
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/gg;->initialize()V

    .line 544
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "DistributedDataStorage"

    .line 546
    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    monitor-exit p0

    return-void

    .line 550
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg;->gu:Lcom/amazon/identity/auth/device/storage/LambortishClock;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->fp()Ljava/util/Date;

    move-result-object v0

    .line 551
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gg;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "DistributedDataStorage"

    const-string p2, "Setting the userdata was not successful"

    .line 555
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    monitor-exit p0

    return-void

    .line 559
    :cond_1
    :try_start_2
    new-instance v7, Lcom/amazon/identity/auth/device/gg$4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/gg$4;-><init>(Lcom/amazon/identity/auth/device/gg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    const/4 p1, 0x0

    .line 4839
    invoke-direct {p0, v7, p1}, Lcom/amazon/identity/auth/device/gg;->a(Lcom/amazon/identity/auth/device/gg$a;Lcom/amazon/identity/auth/device/gc$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 581
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/gc$a;)Z
    .locals 3

    monitor-enter p0

    .line 448
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/gg;->initialize()V

    .line 453
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->ft()Ljava/util/Collection;

    move-result-object v0

    .line 454
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/gg;->b(Ljava/util/Collection;)V

    .line 456
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg;->gu:Lcom/amazon/identity/auth/device/storage/LambortishClock;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->fp()Ljava/util/Date;

    move-result-object v0

    .line 458
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gg;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Ljava/util/Date;Z)Z

    move-result v1

    .line 464
    new-instance v2, Lcom/amazon/identity/auth/device/gg$2;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/gg$2;-><init>(Lcom/amazon/identity/auth/device/gg;Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Ljava/util/Date;)V

    invoke-direct {p0, v2, p3}, Lcom/amazon/identity/auth/device/gg;->a(Lcom/amazon/identity/auth/device/gg$a;Lcom/amazon/identity/auth/device/gc$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

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

    const-string p1, "DistributedDataStorage"

    const-string p2, "Replace accounts not supported"

    .line 1000
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 532
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/gg;->initialize()V

    .line 534
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 324
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, -0x1

    move-wide v2, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    :try_start_0
    const-string/jumbo v5, "timestamp_key"

    .line 328
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    move-wide v2, v4

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    cmp-long p1, v2, v0

    if-nez p1, :cond_2

    const-string p1, "DistributedDataStorage"

    const-string v0, "Not able to find a timestamp from the DB snapshot used to initialize the current apps"

    .line 341
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 345
    :cond_2
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 346
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg;->gu:Lcom/amazon/identity/auth/device/storage/LambortishClock;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->d(Ljava/util/Date;)Z

    return-void
.end method

.method public declared-synchronized ca(Ljava/lang/String;)Ljava/util/Set;
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

    monitor-enter p0

    .line 586
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/gg;->initialize()V

    .line 587
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->ca(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public cc(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized ce(Ljava/lang/String;)Ljava/util/Set;
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

    monitor-enter p0

    .line 1012
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/gg;->initialize()V

    .line 1013
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->ce(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public ck(Ljava/lang/String;)V
    .locals 2

    const-string v0, "dcp.only.protected.store"

    const-string v1, "dcp.only.encrypt.key"

    .line 238
    invoke-virtual {p0, v0, v1, p1}, Lcom/amazon/identity/auth/device/gg;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    .line 601
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/gg;->initialize()V

    .line 603
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg;->gu:Lcom/amazon/identity/auth/device/storage/LambortishClock;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->fp()Ljava/util/Date;

    move-result-object v0

    .line 604
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gg;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "DistributedDataStorage"

    const-string p2, "Setting the token was not successful"

    .line 608
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    monitor-exit p0

    return-void

    .line 612
    :cond_0
    :try_start_1
    new-instance v7, Lcom/amazon/identity/auth/device/gg$5;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/gg$5;-><init>(Lcom/amazon/identity/auth/device/gg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    const/4 p1, 0x0

    .line 5839
    invoke-direct {p0, v7, p1}, Lcom/amazon/identity/auth/device/gg;->a(Lcom/amazon/identity/auth/device/gg$a;Lcom/amazon/identity/auth/device/gc$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 634
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized eS()V
    .locals 3

    monitor-enter p0

    .line 384
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/gg;->initialize()V

    .line 390
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg;->gu:Lcom/amazon/identity/auth/device/storage/LambortishClock;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->fp()Ljava/util/Date;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gg;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->e(Ljava/util/Date;)Ljava/util/Collection;

    move-result-object v1

    .line 392
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "DistributedDataStorage"

    .line 394
    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    monitor-exit p0

    return-void

    .line 398
    :cond_0
    :try_start_1
    new-instance v2, Lcom/amazon/identity/auth/device/gg$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/amazon/identity/auth/device/gg$1;-><init>(Lcom/amazon/identity/auth/device/gg;Ljava/util/Collection;Ljava/util/Date;)V

    const/4 v0, 0x0

    .line 2839
    invoke-direct {p0, v2, v0}, Lcom/amazon/identity/auth/device/gg;->a(Lcom/amazon/identity/auth/device/gg$a;Lcom/amazon/identity/auth/device/gc$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

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

    .line 438
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/gg;->initialize()V

    .line 440
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->eT()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    .line 802
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/gg;->initialize()V

    .line 804
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg;->gu:Lcom/amazon/identity/auth/device/storage/LambortishClock;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->fp()Ljava/util/Date;

    move-result-object v0

    .line 805
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gg;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "DistributedDataStorage"

    const-string p2, "Setting the token was not successful"

    .line 809
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    monitor-exit p0

    return-void

    .line 813
    :cond_0
    :try_start_1
    new-instance v7, Lcom/amazon/identity/auth/device/gg$8;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/gg$8;-><init>(Lcom/amazon/identity/auth/device/gg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    const/4 p1, 0x0

    .line 8839
    invoke-direct {p0, v7, p1}, Lcom/amazon/identity/auth/device/gg;->a(Lcom/amazon/identity/auth/device/gg$a;Lcom/amazon/identity/auth/device/gc$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 835
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public fk()Ljava/util/Set;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "dcp.only.protected.store"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v5, "dcp.only.encrypt.key"

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const-string v7, "Distributed storage fetches remote common data for %s, %s"

    .line 204
    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "DistributedDataStorage"

    invoke-static {v7, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v2, p0, Lcom/amazon/identity/auth/device/gg;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->cX()Ljava/util/List;

    move-result-object v2

    .line 208
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/identity/auth/device/du;

    .line 210
    invoke-virtual {v8}, Lcom/amazon/identity/auth/device/du;->dJ()Z

    move-result v9

    if-nez v9, :cond_0

    .line 215
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Fetching encryption key from "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 219
    :try_start_0
    new-instance v9, Lcom/amazon/identity/auth/device/gp;

    iget-object v10, p0, Lcom/amazon/identity/auth/device/gg;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10, v8}, Lcom/amazon/identity/auth/device/gp;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/du;)V

    .line 220
    invoke-virtual {v9, v3, v5}, Lcom/amazon/identity/auth/device/gp;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 221
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "MAP encryption key in package %s is %s"

    new-array v11, v1, [Ljava/lang/Object;

    .line 223
    invoke-virtual {v8}, Lcom/amazon/identity/auth/device/du;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v4

    aput-object v9, v11, v6

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v7}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 224
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    const-string v9, "Failed to get encryption key from remote storage, skipping..."

    .line 229
    invoke-static {v7, v9, v8}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public declared-synchronized getAccounts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 430
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/gg;->initialize()V

    .line 432
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->getAccounts()Ljava/util/Set;

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

.method public getDeviceSnapshot()Ljava/lang/String;
    .locals 3

    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 981
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gg;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->fB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9943
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gg;->nO:Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->cW()Ljava/util/Collection;

    move-result-object v1

    .line 982
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/du;

    .line 984
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/du;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 986
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized initialize()V
    .locals 3

    monitor-enter p0

    .line 1948
    :try_start_0
    new-instance v0, Lcom/amazon/identity/auth/device/gm;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/gg;->mContext:Landroid/content/Context;

    const-string v2, "distributed.datastore.info.store"

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "distributed.datastore.init.key"

    .line 1949
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/gm;->ct(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 130
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "DistributedDataStorage"

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Initializing distributed data store for"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/identity/auth/device/gg;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gg;->ey()V

    .line 135
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg;->mContext:Landroid/content/Context;

    .line 1954
    new-instance v1, Lcom/amazon/identity/auth/device/gm;

    const-string v2, "distributed.datastore.info.store"

    invoke-direct {v1, v0, v2}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "distributed.datastore.init.key"

    .line 1955
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/identity/auth/device/gm;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setup()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "DistributedDataStorage"

    .line 353
    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :try_start_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->fu()Ljava/util/Collection;

    move-result-object v0

    .line 359
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DistributedDataStorage"

    .line 364
    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    const-string v0, "DistributedDataStorage"

    const-string v1, "Data to delete in the local app. Setting up alarm to clean database"

    .line 368
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    new-instance v0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/gg;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;-><init>(Landroid/content/Context;)V

    .line 370
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->ff()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 378
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "DistributedDataStorage"

    const-string v2, "Failed to initialize DatabaseCleaner"

    .line 377
    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 379
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 593
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/gg;->initialize()V

    .line 595
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 746
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/gg;->initialize()V

    .line 748
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg;->gu:Lcom/amazon/identity/auth/device/storage/LambortishClock;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->fp()Ljava/util/Date;

    move-result-object v0

    .line 749
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gg;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "DistributedDataStorage"

    const-string p2, "Expiring the token was not successful"

    .line 753
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    monitor-exit p0

    return-void

    .line 757
    :cond_0
    :try_start_1
    new-instance v1, Lcom/amazon/identity/auth/device/gg$7;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/gg$7;-><init>(Lcom/amazon/identity/auth/device/gg;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    const/4 p1, 0x0

    .line 7839
    invoke-direct {p0, v1, p1}, Lcom/amazon/identity/auth/device/gg;->a(Lcom/amazon/identity/auth/device/gg$a;Lcom/amazon/identity/auth/device/gc$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 779
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    monitor-enter p0

    .line 784
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/gg;->initialize()V

    .line 785
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 786
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazon/identity/auth/device/gg;->nK:Ljava/util/Set;

    .line 787
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/gg;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "DistributedDataStorage"

    const-string v1, "Important value of %s, %s should not be null, force sync the distributed storage"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 790
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/gg;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DistributedDataStorage"

    .line 792
    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 793
    iget-object v2, p0, Lcom/amazon/identity/auth/device/gg;->gt:Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/gg;->gu:Lcom/amazon/identity/auth/device/storage/LambortishClock;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->fp()Ljava/util/Date;

    move-result-object v6

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    monitor-exit p0

    return-object v0

    .line 796
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
