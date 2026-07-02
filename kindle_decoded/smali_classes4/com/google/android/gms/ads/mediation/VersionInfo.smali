.class public final Lcom/google/android/gms/ads/mediation/VersionInfo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:I


# virtual methods
.method public getMajorVersion()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/mediation/VersionInfo;->zza:I

    return v0
.end method

.method public getMicroVersion()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/mediation/VersionInfo;->zzc:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/mediation/VersionInfo;->zzb:I

    return v0
.end method
