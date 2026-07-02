.class public final Lcom/google/android/gms/internal/ads/zzbtr;
.super Lcom/google/android/gms/internal/ads/zzchs;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzchs<",
        "Lcom/google/android/gms/internal/ads/zzbsn;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:Lcom/google/android/gms/ads/internal/util/zzbe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/util/zzbe<",
            "Lcom/google/android/gms/internal/ads/zzbsn;",
            ">;"
        }
    .end annotation
.end field

.field private zzc:Z

.field private zzd:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzbe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/internal/util/zzbe<",
            "Lcom/google/android/gms/internal/ads/zzbsn;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchs;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zza:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zzb:Lcom/google/android/gms/ads/internal/util/zzbe;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zzc:Z

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbtm;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbtm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbtm;-><init>(Lcom/google/android/gms/internal/ads/zzbtr;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zza:Ljava/lang/Object;

    .line 2
    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbtn;

    .line 3
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzbtn;-><init>(Lcom/google/android/gms/internal/ads/zzbtr;Lcom/google/android/gms/internal/ads/zzbtm;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbto;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzbto;-><init>(Lcom/google/android/gms/internal/ads/zzbtr;Lcom/google/android/gms/internal/ads/zzbtm;)V

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzchs;->zzf(Lcom/google/android/gms/internal/ads/zzchp;Lcom/google/android/gms/internal/ads/zzchn;)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zzd:I

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zzd:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zzd:I

    .line 5
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zzd:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    const-string v1, "Releasing 1 reference for JS Engine"

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zzd:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zzd:I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbtr;->zzd()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zzd:I

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    const-string v1, "Releasing root reference. JS Engine will be destroyed once other references are released."

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zzc:Z

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbtr;->zzd()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final zzd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zzd:I

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zzc:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zzd:I

    if-nez v1, :cond_1

    const-string v1, "No reference is left (including root). Cleaning up engine."

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbtq;

    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbtq;-><init>(Lcom/google/android/gms/internal/ads/zzbtr;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcho;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzcho;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzchs;->zzf(Lcom/google/android/gms/internal/ads/zzchp;Lcom/google/android/gms/internal/ads/zzchn;)V

    goto :goto_1

    :cond_1
    const-string v1, "There are still references to the engine. Not destroying."

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 6
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
