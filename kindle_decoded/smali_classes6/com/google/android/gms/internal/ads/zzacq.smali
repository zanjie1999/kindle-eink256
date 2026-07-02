.class public final Lcom/google/android/gms/internal/ads/zzacq;
.super Lcom/google/android/gms/internal/ads/zzacz;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zzi:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzabr;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyj;II)V
    .locals 7

    const-string v2, "QXlICfiT7SVSRUb0DD1a74y++UqnSLMKlPOXAn9FNLrl7qN9uprYrk5dswjj/dLi"

    const-string v3, "yqGfvaGOT1fOScq8M0g9vywM6jvcTWdjxf27npfqtn0="

    const/16 v6, 0x3d

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzacz;-><init>(Lcom/google/android/gms/internal/ads/zzabr;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyj;II)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabr;->zzl()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzacq;->zzi:Z

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzf:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzb:Lcom/google/android/gms/internal/ads/zzabr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzabr;->zzc()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzacq;->zzi:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzacz;->zze:Lcom/google/android/gms/internal/ads/zzyj;

    .line 2
    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzacz;->zze:Lcom/google/android/gms/internal/ads/zzyj;

    .line 3
    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzyj;->zzO(J)Lcom/google/android/gms/internal/ads/zzyj;

    .line 4
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
