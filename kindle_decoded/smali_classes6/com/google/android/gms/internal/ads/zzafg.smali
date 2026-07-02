.class final synthetic Lcom/google/android/gms/internal/ads/zzafg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzafp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzahs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzafp;Lcom/google/android/gms/internal/ads/zzahs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafg;->zza:Lcom/google/android/gms/internal/ads/zzafp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzb:Lcom/google/android/gms/internal/ads/zzahs;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzb:Lcom/google/android/gms/internal/ads/zzahs;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzafp;->zzr(Lcom/google/android/gms/internal/ads/zzahs;)V

    return-void
.end method
