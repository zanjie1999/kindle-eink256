.class final synthetic Lcom/google/android/gms/internal/ads/zzbtp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbtq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbsn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbtq;Lcom/google/android/gms/internal/ads/zzbsn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zza:Lcom/google/android/gms/internal/ads/zzbtq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zzb:Lcom/google/android/gms/internal/ads/zzbsn;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zzb:Lcom/google/android/gms/internal/ads/zzbsn;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbpq;->zzo:Lcom/google/android/gms/internal/ads/zzbqf;

    const-string v2, "/result"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbtt;->zzm(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpr;)V

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbsn;->zzi()V

    return-void
.end method
