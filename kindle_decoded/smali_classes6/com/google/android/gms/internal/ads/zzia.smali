.class final synthetic Lcom/google/android/gms/internal/ads/zzia;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzig;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzot;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzig;Lcom/google/android/gms/internal/ads/zzot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzia;->zza:Lcom/google/android/gms/internal/ads/zzig;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzia;->zzb:Lcom/google/android/gms/internal/ads/zzot;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzia;->zza:Lcom/google/android/gms/internal/ads/zzig;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzia;->zzb:Lcom/google/android/gms/internal/ads/zzot;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzig;->zzK(Lcom/google/android/gms/internal/ads/zzot;)V

    return-void
.end method
