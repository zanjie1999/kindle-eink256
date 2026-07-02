.class public Lcom/google/android/gms/ads/query/AdInfo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/ads/query/QueryInfo;

.field private final zzb:Ljava/lang/String;


# virtual methods
.method public getAdString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/query/AdInfo;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryInfo()Lcom/google/android/gms/ads/query/QueryInfo;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/query/AdInfo;->zza:Lcom/google/android/gms/ads/query/QueryInfo;

    return-object v0
.end method
