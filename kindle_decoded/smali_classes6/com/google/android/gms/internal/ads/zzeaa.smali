.class public abstract Lcom/google/android/gms/internal/ads/zzeaa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzchl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzchl<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field protected final zzb:Ljava/lang/Object;

.field protected zzc:Z

.field protected zzd:Z

.field protected zze:Lcom/google/android/gms/internal/ads/zzcbj;

.field protected zzf:Lcom/google/android/gms/internal/ads/zzcau;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzchl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzchl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzb:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzd:Z

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    const-string p1, "Disconnected from remote ad request service."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeap;

    const/4 v1, 0x1

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeap;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzchl;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    const-string p1, "Cannot connect to remote service, fallback to local instance."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzd(Ljava/lang/String;)V

    return-void
.end method

.method protected final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzb:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzd:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzf:Lcom/google/android/gms/internal/ads/zzcau;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzf:Lcom/google/android/gms/internal/ads/zzcau;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzf:Lcom/google/android/gms/internal/ads/zzcau;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    .line 3
    :cond_1
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
