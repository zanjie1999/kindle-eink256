.class final synthetic Lcom/google/android/gms/internal/ads/zzefp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzefr;

.field private final zzb:Landroid/net/Uri;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfal;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzezz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzefr;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefp;->zza:Lcom/google/android/gms/internal/ads/zzefr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefp;->zzb:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzefp;->zzc:Lcom/google/android/gms/internal/ads/zzfal;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzefp;->zzd:Lcom/google/android/gms/internal/ads/zzezz;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefp;->zza:Lcom/google/android/gms/internal/ads/zzefr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefp;->zzb:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefp;->zzc:Lcom/google/android/gms/internal/ads/zzfal;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzefp;->zzd:Lcom/google/android/gms/internal/ads/zzezz;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzefr;->zzc(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
