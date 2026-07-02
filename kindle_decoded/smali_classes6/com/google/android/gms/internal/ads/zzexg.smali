.class final Lcom/google/android/gms/internal/ads/zzexg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfln;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzfln<",
        "Lcom/google/android/gms/internal/ads/zzeap;",
        "Lcom/google/android/gms/internal/ads/zzexj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzexk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzexk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzexg;->zza:Lcom/google/android/gms/internal/ads/zzexk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeap;

    const-string v0, ""

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "Failed to get a cache key, reverting to legacy flow."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzexg;->zza:Lcom/google/android/gms/internal/ads/zzexk;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzexj;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzexk;->zzd(Lcom/google/android/gms/internal/ads/zzexk;)Lcom/google/android/gms/internal/ads/zzfcm;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzexj;-><init>(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/zzfcm;Lcom/google/android/gms/internal/ads/zzexi;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzexk;->zza(Lcom/google/android/gms/internal/ads/zzexk;Lcom/google/android/gms/internal/ads/zzexj;)Lcom/google/android/gms/internal/ads/zzexj;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzexg;->zza:Lcom/google/android/gms/internal/ads/zzexk;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzexk;->zzb(Lcom/google/android/gms/internal/ads/zzexk;)Lcom/google/android/gms/internal/ads/zzexj;

    move-result-object p1

    return-object p1
.end method
