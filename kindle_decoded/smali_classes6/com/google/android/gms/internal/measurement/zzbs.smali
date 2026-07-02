.class public final Lcom/google/android/gms/internal/measurement/zzbs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-sdk-api@@18.0.3"


# static fields
.field private static volatile zzc:Lcom/google/android/gms/internal/measurement/zzbs;


# instance fields
.field protected final zza:Lcom/google/android/gms/common/util/Clock;

.field protected final zzb:Ljava/util/concurrent/ExecutorService;

.field private final zzd:Ljava/lang/String;

.field private final zze:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

.field private final zzf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzg:I

.field private zzh:Z

.field private final zzi:Ljava/lang/String;

.field private volatile zzj:Lcom/google/android/gms/internal/measurement/zzq;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    .line 1
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/measurement/zzbs;->zzV(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zzd:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "FA"

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zzd:Ljava/lang/String;

    .line 2
    :goto_1
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zza:Lcom/google/android/gms/common/util/Clock;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzl;->zza()Lcom/google/android/gms/internal/measurement/zzi;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzaw;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;)V

    const/4 v1, 0x1

    .line 4
    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzi;->zzb(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zzb:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 5
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zze:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    new-instance p2, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zzf:Ljava/util/List;

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfh;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "google_app_id"

    .line 8
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzhx;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_3

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbs;->zzR()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zzi:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zzh:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zzd:Ljava/lang/String;

    const-string p2, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection."

    .line 17
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    nop

    .line 10
    :cond_3
    :goto_2
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/measurement/zzbs;->zzV(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "fa"

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zzi:Ljava/lang/String;

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    goto :goto_5

    :cond_4
    const/4 p2, 0x0

    if-nez p3, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-nez p4, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    xor-int p2, v0, v1

    if-eqz p2, :cond_8

    .line 16
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zzd:Ljava/lang/String;

    const-string v0, "Specified origin or custom app id is null. Both parameters will be ignored."

    .line 11
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zzi:Ljava/lang/String;

    .line 12
    :cond_8
    :goto_5
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzal;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, p5

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzal;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzbs;->zzS(Lcom/google/android/gms/internal/measurement/zzbh;)V

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zzd:Ljava/lang/String;

    const-string p2, "Unable to register lifecycle notifications. Application null."

    .line 15
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 16
    :cond_9
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzbr;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/measurement/zzbr;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static synthetic zzK(Lcom/google/android/gms/internal/measurement/zzbs;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zzh:Z

    return p0
.end method

.method static synthetic zzL(Lcom/google/android/gms/internal/measurement/zzbs;Ljava/lang/Exception;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzbs;->zzT(Ljava/lang/Exception;ZZ)V

    return-void
.end method

.method static synthetic zzM(Lcom/google/android/gms/internal/measurement/zzbs;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzbs;->zzV(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic zzN(Lcom/google/android/gms/internal/measurement/zzbs;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzO(Lcom/google/android/gms/internal/measurement/zzbs;Lcom/google/android/gms/internal/measurement/zzq;)Lcom/google/android/gms/internal/measurement/zzq;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zzj:Lcom/google/android/gms/internal/measurement/zzq;

    return-object p1
.end method

.method static synthetic zzP(Lcom/google/android/gms/internal/measurement/zzbs;)Lcom/google/android/gms/internal/measurement/zzq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zzj:Lcom/google/android/gms/internal/measurement/zzq;

    return-object p0
.end method

.method static synthetic zzQ(Lcom/google/android/gms/internal/measurement/zzbs;Lcom/google/android/gms/internal/measurement/zzbh;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzS(Lcom/google/android/gms/internal/measurement/zzbh;)V

    return-void
.end method

.method protected static final zzR()Z
    .locals 1

    :try_start_0
    const-string v0, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzS(Lcom/google/android/gms/internal/measurement/zzbh;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zzb:Ljava/util/concurrent/ExecutorService;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzT(Ljava/lang/Exception;ZZ)V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zzh:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zzh:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zzd:Ljava/lang/String;

    const-string p3, "Data collection startup failed. No data will be collected."

    .line 1
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    const-string p2, "Error with data collection. Data lost."

    if-eqz p3, :cond_1

    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzbs;->zzC(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zzd:Ljava/lang/String;

    .line 3
    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private final zzU(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V
    .locals 9

    new-instance v8, Lcom/google/android/gms/internal/measurement/zzbf;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzbf;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V

    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/measurement/zzbs;->zzS(Lcom/google/android/gms/internal/measurement/zzbh;)V

    return-void
.end method

.method private static final zzV(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbs;->zzR()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/zzbs;
    .locals 8

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbs;->zzc:Lcom/google/android/gms/internal/measurement/zzbs;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/measurement/zzbs;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbs;->zzc:Lcom/google/android/gms/internal/measurement/zzbs;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzbs;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 2
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzbs;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzbs;->zzc:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 3
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbs;->zzc:Lcom/google/android/gms/internal/measurement/zzbs;

    return-object p0
.end method


# virtual methods
.method public final zzA()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzn;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzn;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzas;

    .line 2
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;Lcom/google/android/gms/internal/measurement/zzn;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzS(Lcom/google/android/gms/internal/measurement/zzbh;)V

    const-wide/16 v1, 0x1f4

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzn;->zzc(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzB(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzn;

    .line 1
    invoke-direct {v6}, Lcom/google/android/gms/internal/measurement/zzn;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/measurement/zzat;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v6

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/zzn;)V

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/measurement/zzbs;->zzS(Lcom/google/android/gms/internal/measurement/zzbh;)V

    const-wide/16 p1, 0x1388

    .line 3
    invoke-virtual {v6, p1, p2}, Lcom/google/android/gms/internal/measurement/zzn;->zzd(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 4
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    .line 6
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 7
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    instance-of v2, v1, Ljava/lang/Double;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/Long;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 10
    :cond_2
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object p2

    .line 5
    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final zzC(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzau;

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzau;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;ZILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzS(Lcom/google/android/gms/internal/measurement/zzbh;)V

    return-void
.end method

.method public final zzD(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzn;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzn;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzav;

    .line 2
    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzav;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzn;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzS(Lcom/google/android/gms/internal/measurement/zzbh;)V

    if-eqz p2, :cond_0

    const-wide/16 p1, 0x1388

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzn;->zzd(J)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzE(Ljava/lang/String;)I
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzn;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzn;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzax;

    .line 2
    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzax;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzn;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzS(Lcom/google/android/gms/internal/measurement/zzbh;)V

    const-wide/16 v1, 0x2710

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzn;->zzd(J)Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzn;->zze(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/16 p1, 0x19

    return p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final zzG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zze:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    return-object v0
.end method

.method protected final zzc(Landroid/content/Context;Z)Lcom/google/android/gms/internal/measurement/zzq;
    .locals 1

    .line 1
    :try_start_0
    sget-object p2, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_REMOTE_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    const-string v0, "com.google.android.gms.measurement.dynamite"

    .line 2
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p1

    const-string p2, "com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzp;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/zzq;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzT(Ljava/lang/Exception;ZZ)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzh(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzbs;->zzU(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    return-void
.end method

.method public final zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzbg;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzbg;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/measurement/zzbs;->zzS(Lcom/google/android/gms/internal/measurement/zzbh;)V

    return-void
.end method

.method public final zzk(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzab;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzab;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzS(Lcom/google/android/gms/internal/measurement/zzbh;)V

    return-void
.end method

.method public final zzl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzac;

    .line 1
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzac;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzS(Lcom/google/android/gms/internal/measurement/zzbh;)V

    return-void
.end method

.method public final zzm(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzn;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzn;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzad;

    .line 2
    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzad;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzn;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzS(Lcom/google/android/gms/internal/measurement/zzbh;)V

    const-wide/16 p1, 0x1388

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzn;->zzd(J)Landroid/os/Bundle;

    move-result-object p1

    const-class p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzn;->zze(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final zzo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaf;

    .line 1
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzaf;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzS(Lcom/google/android/gms/internal/measurement/zzbh;)V

    return-void
.end method

.method public final zzq(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzS(Lcom/google/android/gms/internal/measurement/zzbh;)V

    return-void
.end method

.method public final zzu(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzam;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzam;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzS(Lcom/google/android/gms/internal/measurement/zzbh;)V

    return-void
.end method

.method public final zzv(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzan;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzan;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzS(Lcom/google/android/gms/internal/measurement/zzbh;)V

    return-void
.end method

.method public final zzw()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzn;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzn;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzao;

    .line 2
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzao;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;Lcom/google/android/gms/internal/measurement/zzn;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzS(Lcom/google/android/gms/internal/measurement/zzbh;)V

    const-wide/16 v1, 0x1f4

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzn;->zzc(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzx()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzn;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzn;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzap;

    .line 2
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzap;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;Lcom/google/android/gms/internal/measurement/zzn;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzS(Lcom/google/android/gms/internal/measurement/zzbh;)V

    const-wide/16 v1, 0x32

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzn;->zzc(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzy()J
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzn;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzn;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaq;

    .line 2
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzaq;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;Lcom/google/android/gms/internal/measurement/zzn;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzS(Lcom/google/android/gms/internal/measurement/zzbh;)V

    const-wide/16 v1, 0x1f4

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzn;->zzd(J)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzn;->zze(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Random;

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zza:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zzg:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzbs;->zzg:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final zzz()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzn;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzn;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzar;

    .line 2
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzar;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;Lcom/google/android/gms/internal/measurement/zzn;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzS(Lcom/google/android/gms/internal/measurement/zzbh;)V

    const-wide/16 v1, 0x1f4

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzn;->zzc(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
