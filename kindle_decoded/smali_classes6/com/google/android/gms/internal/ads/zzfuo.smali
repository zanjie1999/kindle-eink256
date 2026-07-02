.class public final Lcom/google/android/gms/internal/ads/zzfuo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final zza:Ljava/lang/String;

.field public static final zzb:Ljava/lang/String;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzgby;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfuu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfuu;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfuo;->zza:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvd;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfvd;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfuo;->zzb:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvg;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfvg;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfva;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfva;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvm;

    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfvm;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvq;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfvq;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvj;

    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfvj;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvt;

    .line 8
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfvt;-><init>()V

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgby;->zzc()Lcom/google/android/gms/internal/ads/zzgby;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfuo;->zzc:Lcom/google/android/gms/internal/ads/zzgby;

    .line 10
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfuo;->zza()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 11
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static zza()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfur;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfur;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfum;->zze(Lcom/google/android/gms/internal/ads/zzfue;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwy;->zza()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfuu;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfuu;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfum;->zzc(Lcom/google/android/gms/internal/ads/zzftu;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvd;

    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfvd;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfum;->zzc(Lcom/google/android/gms/internal/ads/zzftu;Z)V

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvx;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfva;

    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfva;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfum;->zzc(Lcom/google/android/gms/internal/ads/zzftu;Z)V

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfvg;->zzk(Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvj;

    .line 9
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfvj;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfum;->zzc(Lcom/google/android/gms/internal/ads/zzftu;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvm;

    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfvm;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfum;->zzc(Lcom/google/android/gms/internal/ads/zzftu;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvq;

    .line 11
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfvq;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfum;->zzc(Lcom/google/android/gms/internal/ads/zzftu;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvt;

    .line 12
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfvt;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfum;->zzc(Lcom/google/android/gms/internal/ads/zzftu;Z)V

    return-void
.end method
