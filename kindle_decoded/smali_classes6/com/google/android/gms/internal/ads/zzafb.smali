.class final synthetic Lcom/google/android/gms/internal/ads/zzafb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzalj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzahd;

.field private final zzb:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzahd;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafb;->zza:Lcom/google/android/gms/internal/ads/zzahd;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzafb;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafb;->zza:Lcom/google/android/gms/internal/ads/zzahd;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzafb;->zzb:I

    check-cast p1, Lcom/google/android/gms/internal/ads/zzahj;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzahj;->zzH(Lcom/google/android/gms/internal/ads/zzaiq;I)V

    return-void
.end method
