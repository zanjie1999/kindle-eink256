.class final synthetic Lcom/google/android/gms/internal/ads/zzaen;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzalj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzahd;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzahd;Lcom/google/android/gms/internal/ads/zzt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaen;->zza:Lcom/google/android/gms/internal/ads/zzahd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaen;->zzb:Lcom/google/android/gms/internal/ads/zzt;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaen;->zza:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaen;->zzb:Lcom/google/android/gms/internal/ads/zzt;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzahj;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzh:Lcom/google/android/gms/internal/ads/zzs;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzahj;->zzJ(Lcom/google/android/gms/internal/ads/zzs;Lcom/google/android/gms/internal/ads/zzt;)V

    return-void
.end method
