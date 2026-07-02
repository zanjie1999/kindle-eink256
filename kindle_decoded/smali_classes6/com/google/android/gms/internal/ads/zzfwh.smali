.class final Lcom/google/android/gms/internal/ads/zzfwh;
.super Lcom/google/android/gms/internal/ads/zzftt;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzftt<",
        "Lcom/google/android/gms/internal/ads/zzftl;",
        "Lcom/google/android/gms/internal/ads/zzfzy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzftt;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfzy;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzy;->zzc()Lcom/google/android/gms/internal/ads/zzfzs;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfzs;->zza()Lcom/google/android/gms/internal/ads/zzgab;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgab;->zzg()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfwp;->zzc(I)I

    move-result v2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzy;->zzd()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgex;->zzz()[B

    move-result-object v3

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzy;->zze()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgex;->zzz()[B

    move-result-object p1

    .line 7
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzgcz;->zze(I[B[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v5

    new-instance v9, Lcom/google/android/gms/internal/ads/zzfwq;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfzs;->zzc()Lcom/google/android/gms/internal/ads/zzfzm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzm;->zza()Lcom/google/android/gms/internal/ads/zzgau;

    move-result-object p1

    invoke-direct {v9, p1}, Lcom/google/android/gms/internal/ads/zzfwq;-><init>(Lcom/google/android/gms/internal/ads/zzgau;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgcv;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgab;->zza()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgex;->zzz()[B

    move-result-object v6

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgab;->zzh()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfwp;->zzb(I)Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfzs;->zzi()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfwp;->zzd(I)I

    move-result v8

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzgcv;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;ILcom/google/android/gms/internal/ads/zzgct;)V

    return-object p1
.end method
