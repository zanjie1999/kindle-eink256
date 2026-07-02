.class final synthetic Lcom/google/android/gms/internal/ads/zzelb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbcz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelb;->zza:Lcom/google/android/gms/internal/ads/zzbcz;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelb;->zza:Lcom/google/android/gms/internal/ads/zzbcz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbfa;

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbcz;->zza:I

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzc(I)V

    return-void
.end method
