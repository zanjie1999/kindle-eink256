.class final Lcom/google/android/gms/internal/ads/zzcyi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzfrz<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcyj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcyj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyi;->zza:Lcom/google/android/gms/internal/ads/zzcyj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyi;->zza:Lcom/google/android/gms/internal/ads/zzcyj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcyj;->zza(Lcom/google/android/gms/internal/ads/zzcyj;)Lcom/google/android/gms/internal/ads/zzdgh;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdgh;->zzo(Z)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyi;->zza:Lcom/google/android/gms/internal/ads/zzcyj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcyj;->zza(Lcom/google/android/gms/internal/ads/zzcyj;)Lcom/google/android/gms/internal/ads/zzdgh;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdgh;->zzo(Z)V

    return-void
.end method
