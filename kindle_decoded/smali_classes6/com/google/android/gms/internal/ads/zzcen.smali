.class final synthetic Lcom/google/android/gms/internal/ads/zzcen;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcfa;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcez;

.field private final zzc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcfa;Lcom/google/android/gms/internal/ads/zzcez;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcen;->zza:Lcom/google/android/gms/internal/ads/zzcfa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcen;->zzb:Lcom/google/android/gms/internal/ads/zzcez;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcen;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcen;->zza:Lcom/google/android/gms/internal/ads/zzcfa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcen;->zzb:Lcom/google/android/gms/internal/ads/zzcez;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcen;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcfa;->zzs(Lcom/google/android/gms/internal/ads/zzcez;Ljava/lang/String;)V

    return-void
.end method
