.class public Lcom/google/android/gms/appset/AppSetIdInfo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-appset@@16.0.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/appset/AppSetIdInfo;->zza:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/appset/AppSetIdInfo;->zzb:I

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appset/AppSetIdInfo;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/appset/AppSetIdInfo;->zzb:I

    return v0
.end method
