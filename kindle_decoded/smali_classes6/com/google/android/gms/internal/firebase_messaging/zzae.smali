.class public final Lcom/google/android/gms/internal/firebase_messaging/zzae;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# instance fields
.field private final zza:Ljava/util/Map;
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

.field private final zzb:Ljava/util/Map;
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

.field private final zzc:Lcom/google/firebase/encoders/ObjectEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/ObjectEncoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/encoders/ValueEncoder<",
            "*>;>;",
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzae;->zza:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzae;->zzb:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_messaging/zzae;->zzc:Lcom/google/firebase/encoders/ObjectEncoder;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzab;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzae;->zza:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzae;->zzb:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_messaging/zzae;->zzc:Lcom/google/firebase/encoders/ObjectEncoder;

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/google/android/gms/internal/firebase_messaging/zzab;-><init>(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/ObjectEncoder;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_messaging/zzab;

    return-void
.end method
