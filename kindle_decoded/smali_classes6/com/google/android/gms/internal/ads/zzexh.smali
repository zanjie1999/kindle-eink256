.class final Lcom/google/android/gms/internal/ads/zzexh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfln;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzfln<",
        "Lcom/google/android/gms/internal/ads/zzcbj;",
        "Lcom/google/android/gms/internal/ads/zzexj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzexk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzexk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzexh;->zza:Lcom/google/android/gms/internal/ads/zzexk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcbj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzexh;->zza:Lcom/google/android/gms/internal/ads/zzexk;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzexj;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfco;

    .line 2
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzcbj;->zzj:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzfco;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzexj;-><init>(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/zzfcm;Lcom/google/android/gms/internal/ads/zzexi;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexk;->zza(Lcom/google/android/gms/internal/ads/zzexk;Lcom/google/android/gms/internal/ads/zzexj;)Lcom/google/android/gms/internal/ads/zzexj;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzexh;->zza:Lcom/google/android/gms/internal/ads/zzexk;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzexk;->zzb(Lcom/google/android/gms/internal/ads/zzexk;)Lcom/google/android/gms/internal/ads/zzexj;

    move-result-object p1

    return-object p1
.end method
