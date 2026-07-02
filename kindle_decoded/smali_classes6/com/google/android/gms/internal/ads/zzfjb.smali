.class public final Lcom/google/android/gms/internal/ads/zzfjb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfii;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfik;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfja;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfja;

.field private zzg:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/ads/zzyz;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/ads/zzyz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfii;Lcom/google/android/gms/internal/ads/zzfik;Lcom/google/android/gms/internal/ads/zzfiy;Lcom/google/android/gms/internal/ads/zzfiz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjb;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfjb;->zzb:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfjb;->zzc:Lcom/google/android/gms/internal/ads/zzfii;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfjb;->zzd:Lcom/google/android/gms/internal/ads/zzfik;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfjb;->zze:Lcom/google/android/gms/internal/ads/zzfja;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfjb;->zzf:Lcom/google/android/gms/internal/ads/zzfja;

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfii;Lcom/google/android/gms/internal/ads/zzfik;)Lcom/google/android/gms/internal/ads/zzfjb;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzfjb;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfiy;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzfiy;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzfiz;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzfiz;-><init>()V

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfjb;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfii;Lcom/google/android/gms/internal/ads/zzfik;Lcom/google/android/gms/internal/ads/zzfiy;Lcom/google/android/gms/internal/ads/zzfiz;)V

    iget-object p0, v7, Lcom/google/android/gms/internal/ads/zzfjb;->zzd:Lcom/google/android/gms/internal/ads/zzfik;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfik;->zzb()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzfiv;

    .line 2
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzfiv;-><init>(Lcom/google/android/gms/internal/ads/zzfjb;)V

    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/ads/zzfjb;->zzg(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    iput-object p0, v7, Lcom/google/android/gms/internal/ads/zzfjb;->zzg:Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, v7, Lcom/google/android/gms/internal/ads/zzfjb;->zze:Lcom/google/android/gms/internal/ads/zzfja;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzfja;->zza()Lcom/google/android/gms/internal/ads/zzyz;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    iput-object p0, v7, Lcom/google/android/gms/internal/ads/zzfjb;->zzg:Lcom/google/android/gms/tasks/Task;

    .line 2
    :goto_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfiw;

    .line 4
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzfiw;-><init>(Lcom/google/android/gms/internal/ads/zzfjb;)V

    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/ads/zzfjb;->zzg(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    iput-object p0, v7, Lcom/google/android/gms/internal/ads/zzfjb;->zzh:Lcom/google/android/gms/tasks/Task;

    return-object v7
.end method

.method private final zzg(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/google/android/gms/internal/ads/zzyz;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/ads/zzyz;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjb;->zzb:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjb;->zzb:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfix;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfix;-><init>(Lcom/google/android/gms/internal/ads/zzfjb;)V

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-object p1
.end method

.method private static zzh(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/internal/ads/zzyz;)Lcom/google/android/gms/internal/ads/zzyz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/ads/zzyz;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzyz;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzyz;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzyz;

    return-object p0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/ads/zzyz;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjb;->zzg:Lcom/google/android/gms/tasks/Task;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjb;->zze:Lcom/google/android/gms/internal/ads/zzfja;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfja;->zza()Lcom/google/android/gms/internal/ads/zzyz;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfjb;->zzh(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/internal/ads/zzyz;)Lcom/google/android/gms/internal/ads/zzyz;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzyz;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjb;->zzh:Lcom/google/android/gms/tasks/Task;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjb;->zzf:Lcom/google/android/gms/internal/ads/zzfja;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfja;->zza()Lcom/google/android/gms/internal/ads/zzyz;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfjb;->zzh(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/internal/ads/zzyz;)Lcom/google/android/gms/internal/ads/zzyz;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzd(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjb;->zzc:Lcom/google/android/gms/internal/ads/zzfii;

    const/16 v1, 0x7e9

    const-wide/16 v2, -0x1

    .line 3
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzfii;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method final synthetic zze()Lcom/google/android/gms/internal/ads/zzyz;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjb;->zza:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfiq;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzyz;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzf()Lcom/google/android/gms/internal/ads/zzyz;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjb;->zza:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyz;->zzi()Lcom/google/android/gms/internal/ads/zzyj;

    move-result-object v1

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 6
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 7
    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const/16 v2, 0xb

    .line 9
    invoke-static {v3, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzyj;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzyj;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyj;->zzT(Z)Lcom/google/android/gms/internal/ads/zzyj;

    const/4 v0, 0x6

    .line 12
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyj;->zzaa(I)Lcom/google/android/gms/internal/ads/zzyj;

    .line 13
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzyz;

    return-object v0
.end method
