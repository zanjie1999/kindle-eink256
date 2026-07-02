.class final synthetic Lcom/google/android/gms/internal/ads/zzesm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfln;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzesn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzesn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesm;->zza:Lcom/google/android/gms/internal/ads/zzesn;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesm;->zza:Lcom/google/android/gms/internal/ads/zzesn;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzesn;->zzb(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzeso;

    move-result-object p1

    return-object p1
.end method
