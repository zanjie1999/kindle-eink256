.class public final Lcom/google/android/gms/internal/ads/zzfhy;
.super Lcom/google/android/gms/internal/ads/zzfhw;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfho;[B)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfhw;-><init>(Lcom/google/android/gms/internal/ads/zzfho;[B)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhw;->zzd:Lcom/google/android/gms/internal/ads/zzfho;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfho;->zze(Lorg/json/JSONObject;)V

    return-object v0
.end method
