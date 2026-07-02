.class public final Lcom/google/android/gms/internal/firebase_messaging/zzad;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Lcom/google/firebase/encoders/config/EncoderConfig;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/config/EncoderConfig<",
        "Lcom/google/android/gms/internal/firebase_messaging/zzad;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/firebase/encoders/ObjectEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/encoders/ValueEncoder<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zze:Lcom/google/firebase/encoders/ObjectEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzac;->zza:Lcom/google/firebase/encoders/ObjectEncoder;

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzad;->zzb:Lcom/google/firebase/encoders/ObjectEncoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzad;->zzc:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzad;->zzd:Ljava/util/Map;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzad;->zzb:Lcom/google/firebase/encoders/ObjectEncoder;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzad;->zze:Lcom/google/firebase/encoders/ObjectEncoder;

    return-void
.end method


# virtual methods
.method public final bridge synthetic registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzad;->zzc:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzad;->zzd:Ljava/util/Map;

    .line 2
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/firebase_messaging/zzae;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzae;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzad;->zzc:Ljava/util/Map;

    .line 1
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_messaging/zzad;->zzd:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_messaging/zzad;->zze:Lcom/google/firebase/encoders/ObjectEncoder;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/firebase_messaging/zzae;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/ObjectEncoder;)V

    return-object v0
.end method
