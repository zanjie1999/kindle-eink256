.class final synthetic Lcom/google/android/gms/internal/ads/zzbk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzalk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcy;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzahp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcy;Lcom/google/android/gms/internal/ads/zzahp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbk;->zza:Lcom/google/android/gms/internal/ads/zzcy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbk;->zzb:Lcom/google/android/gms/internal/ads/zzahp;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzale;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbk;->zza:Lcom/google/android/gms/internal/ads/zzcy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbk;->zzb:Lcom/google/android/gms/internal/ads/zzahp;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzcy;->zzab(Lcom/google/android/gms/internal/ads/zzahp;Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzale;)V

    return-void
.end method
