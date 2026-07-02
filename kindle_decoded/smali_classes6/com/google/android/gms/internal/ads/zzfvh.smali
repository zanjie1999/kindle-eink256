.class final Lcom/google/android/gms/internal/ads/zzfvh;
.super Lcom/google/android/gms/internal/ads/zzftt;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzftt<",
        "Lcom/google/android/gms/internal/ads/zzftg;",
        "Lcom/google/android/gms/internal/ads/zzfze;",
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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfze;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgcr;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfze;->zzc()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgex;->zzz()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzgcr;-><init>([B)V

    return-object v0
.end method
