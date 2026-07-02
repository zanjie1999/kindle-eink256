.class final Lcom/google/android/gms/internal/ads/zzfiz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfja;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzyz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyz;->zzi()Lcom/google/android/gms/internal/ads/zzyj;

    move-result-object v0

    const-string v1, "E"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzyj;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzyj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzyz;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfiz;->zza:Lcom/google/android/gms/internal/ads/zzyz;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzyz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfiz;->zza:Lcom/google/android/gms/internal/ads/zzyz;

    return-object v0
.end method
