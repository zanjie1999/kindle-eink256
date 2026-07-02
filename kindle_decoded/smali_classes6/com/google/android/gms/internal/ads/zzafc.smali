.class final synthetic Lcom/google/android/gms/internal/ads/zzafc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzalj;


# instance fields
.field private final zza:I

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaho;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaho;


# direct methods
.method constructor <init>(ILcom/google/android/gms/internal/ads/zzaho;Lcom/google/android/gms/internal/ads/zzaho;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzafc;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzafc;->zzb:Lcom/google/android/gms/internal/ads/zzaho;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzafc;->zzc:Lcom/google/android/gms/internal/ads/zzaho;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzafc;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafc;->zzb:Lcom/google/android/gms/internal/ads/zzaho;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafc;->zzc:Lcom/google/android/gms/internal/ads/zzaho;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzahj;

    .line 2
    invoke-interface {p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzahj;->zzS(Lcom/google/android/gms/internal/ads/zzaho;Lcom/google/android/gms/internal/ads/zzaho;I)V

    return-void
.end method
