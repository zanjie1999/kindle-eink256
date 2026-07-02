.class final Lcom/google/android/gms/internal/ads/zzamk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzalf;


# instance fields
.field private zza:Landroid/os/Message;

.field private zzb:Lcom/google/android/gms/internal/ads/zzaml;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzamj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzd()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamk;->zza:Landroid/os/Message;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamk;->zzb:Lcom/google/android/gms/internal/ads/zzaml;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaml;->zzk(Lcom/google/android/gms/internal/ads/zzamk;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamk;->zza:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzamk;->zzd()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method

.method public final zzb(Landroid/os/Message;Lcom/google/android/gms/internal/ads/zzaml;)Lcom/google/android/gms/internal/ads/zzamk;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamk;->zza:Landroid/os/Message;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamk;->zzb:Lcom/google/android/gms/internal/ads/zzaml;

    return-object p0
.end method

.method public final zzc(Landroid/os/Handler;)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamk;->zza:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzamk;->zzd()V

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method
