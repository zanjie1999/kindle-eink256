.class public final Lcom/google/android/gms/internal/ads/zzbkr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbkn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbkn<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    const-string v1, "gads:consent:gmscore:dsid:enabled"

    .line 1
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbko;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbkn;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzbkr;->zza:Lcom/google/android/gms/internal/ads/zzbkn;

    const-string v1, "gads:consent:gmscore:lat:enabled"

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbko;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbkn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbko;

    const-string v2, "gads:consent:gmscore:backend_url"

    const-string v3, "https://adservice.google.com/getconfig/pubvendors"

    const/4 v4, 0x4

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbko;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbko;

    const-wide/16 v2, 0x2710

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "gads:consent:gmscore:time_out"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzbko;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v1, "gads:consent:gmscore:enabled"

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbko;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbkn;

    return-void
.end method
