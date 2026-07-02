.class final synthetic Lcom/google/android/gms/internal/firebase_messaging/zzaa;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field static final zza:Lcom/google/firebase/encoders/ObjectEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzaa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzaa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzaa;->zza:Lcom/google/firebase/encoders/ObjectEncoder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->zzg(Ljava/util/Map$Entry;Lcom/google/firebase/encoders/ObjectEncoderContext;)V

    return-void
.end method
