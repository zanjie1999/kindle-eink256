.class public Lcom/google/android/gms/ads/query/QueryInfo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbhv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbhv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/query/QueryInfo;->zza:Lcom/google/android/gms/internal/ads/zzbhv;

    return-void
.end method

.method public static generate(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/ads/AdFormat;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcah;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest;->zza()Lcom/google/android/gms/internal/ads/zzbhj;

    move-result-object p2

    .line 1
    :goto_0
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcah;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/internal/ads/zzbhj;)V

    .line 2
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzcah;->zzb(Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V

    return-void
.end method


# virtual methods
.method public getQuery()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/query/QueryInfo;->zza:Lcom/google/android/gms/internal/ads/zzbhv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhv;->zza()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzbhv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/query/QueryInfo;->zza:Lcom/google/android/gms/internal/ads/zzbhv;

    return-object v0
.end method
