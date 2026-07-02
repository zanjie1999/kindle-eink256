.class final synthetic Lcom/google/android/gms/internal/ads/zzdyu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaas;

.field private final zzb:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaas;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zza:Lcom/google/android/gms/internal/ads/zzaas;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zza:Lcom/google/android/gms/internal/ads/zzaas;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzb:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaas;->zzb()Lcom/google/android/gms/internal/ads/zzaao;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaao;->zzp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
