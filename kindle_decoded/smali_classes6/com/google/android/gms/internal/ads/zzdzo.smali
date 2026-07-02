.class final Lcom/google/android/gms/internal/ads/zzdzo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzfrz<",
        "Lcom/google/android/gms/internal/ads/zzfal;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdzp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdzp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzo;->zza:Lcom/google/android/gms/internal/ads/zzdzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzex:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdzp;->zzb()Ljava/util/regex/Pattern;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzo;->zza:Lcom/google/android/gms/internal/ads/zzdzp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzp;->zza(Lcom/google/android/gms/internal/ads/zzdzp;)Lcom/google/android/gms/internal/ads/zzecu;

    move-result-object v0

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzecu;->zza(I)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfal;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzex:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzo;->zza:Lcom/google/android/gms/internal/ads/zzdzp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzp;->zza(Lcom/google/android/gms/internal/ads/zzdzp;)Lcom/google/android/gms/internal/ads/zzecu;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfal;->zzb:Lcom/google/android/gms/internal/ads/zzfak;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfak;->zzb:Lcom/google/android/gms/internal/ads/zzfac;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfac;->zze:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzecu;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzo;->zza:Lcom/google/android/gms/internal/ads/zzdzp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzp;->zza(Lcom/google/android/gms/internal/ads/zzdzp;)Lcom/google/android/gms/internal/ads/zzecu;

    move-result-object v0

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfal;->zzb:Lcom/google/android/gms/internal/ads/zzfak;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfak;->zzb:Lcom/google/android/gms/internal/ads/zzfac;

    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzfac;->zzf:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzecu;->zzc(J)V

    :cond_0
    return-void
.end method
