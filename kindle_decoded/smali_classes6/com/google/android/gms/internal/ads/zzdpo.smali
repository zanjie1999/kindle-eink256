.class final synthetic Lcom/google/android/gms/internal/ads/zzdpo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfln;


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpo;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpo;->zza:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzblr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdpp;

    .line 2
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzdpp;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzblr;)V

    return-object v1
.end method
