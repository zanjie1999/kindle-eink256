.class final synthetic Lcom/google/android/gms/internal/ads/zzdvo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdvp;

.field private final zzb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdvp;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvo;->zza:Lcom/google/android/gms/internal/ads/zzdvp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdvo;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvo;->zza:Lcom/google/android/gms/internal/ads/zzdvp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvo;->zzb:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdvp;->zzd:Lcom/google/android/gms/internal/ads/zzcgy;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgy;->zza(Ljava/lang/String;)V

    return-void
.end method
