.class public final Lcom/audible/mobile/domain/ImmutableCreativeIdImpl$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "ImmutableCreativeIdImpl.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/domain/ImmutableCreativeIdImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/domain/CreativeId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/domain/CreativeId;
    .locals 1

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/audible/mobile/domain/ImmutableCreativeIdImpl;->Companion:Lcom/audible/mobile/domain/ImmutableCreativeIdImpl$Companion;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/audible/mobile/domain/ImmutableCreativeIdImpl$Companion;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/CreativeId;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/audible/mobile/domain/ImmutableCreativeIdImpl$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/domain/CreativeId;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/domain/CreativeId;
    .locals 0

    .line 29
    new-array p1, p1, [Lcom/audible/mobile/domain/CreativeId;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/audible/mobile/domain/ImmutableCreativeIdImpl$Companion$CREATOR$1;->newArray(I)[Lcom/audible/mobile/domain/CreativeId;

    move-result-object p1

    return-object p1
.end method
