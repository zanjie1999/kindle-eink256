.class public final Lcom/google/android/gms/internal/ads/zzble;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# static fields
.field public static final zzb:Lcom/google/android/gms/internal/ads/zzbkn;
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
    .locals 2

    const-string v0, "gads:safe_browsing:api_key"

    const-string v1, "AIzaSyDRKQ9d6kfsoZT2lUnZcZnBYvH69HExNPE"

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbkn;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbkn;

    const-string v0, "gads:safe_browsing:debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbkn;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbkn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzble;->zzb:Lcom/google/android/gms/internal/ads/zzbkn;

    return-void
.end method
