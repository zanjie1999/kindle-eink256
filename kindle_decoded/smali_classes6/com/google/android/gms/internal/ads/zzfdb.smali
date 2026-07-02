.class final synthetic Lcom/google/android/gms/internal/ads/zzfdb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfde;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfcw;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfcc;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfcx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfde;Lcom/google/android/gms/internal/ads/zzfcw;Lcom/google/android/gms/internal/ads/zzfcc;Lcom/google/android/gms/internal/ads/zzfcx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdb;->zza:Lcom/google/android/gms/internal/ads/zzfde;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfdb;->zzb:Lcom/google/android/gms/internal/ads/zzfcw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfdb;->zzc:Lcom/google/android/gms/internal/ads/zzfcc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfdb;->zzd:Lcom/google/android/gms/internal/ads/zzfcx;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdb;->zza:Lcom/google/android/gms/internal/ads/zzfde;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfdb;->zzb:Lcom/google/android/gms/internal/ads/zzfcw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfdb;->zzc:Lcom/google/android/gms/internal/ads/zzfcc;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfdb;->zzd:Lcom/google/android/gms/internal/ads/zzfcx;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfcl;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzfde;->zzd(Lcom/google/android/gms/internal/ads/zzfcw;Lcom/google/android/gms/internal/ads/zzfcc;Lcom/google/android/gms/internal/ads/zzfcx;Lcom/google/android/gms/internal/ads/zzfcl;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
