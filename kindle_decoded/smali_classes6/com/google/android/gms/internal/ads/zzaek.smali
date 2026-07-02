.class final synthetic Lcom/google/android/gms/internal/ads/zzaek;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzalj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzagk;

.field private final zzb:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzagk;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaek;->zza:Lcom/google/android/gms/internal/ads/zzagk;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaek;->zza:Lcom/google/android/gms/internal/ads/zzagk;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzb:I

    check-cast p1, Lcom/google/android/gms/internal/ads/zzahj;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzahj;->zzI(Lcom/google/android/gms/internal/ads/zzagk;I)V

    return-void
.end method
