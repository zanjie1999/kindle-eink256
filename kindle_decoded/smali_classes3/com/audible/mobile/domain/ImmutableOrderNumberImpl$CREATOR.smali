.class public final Lcom/audible/mobile/domain/ImmutableOrderNumberImpl$CREATOR;
.super Ljava/lang/Object;
.source "ImmutableOrderNumberImpl.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/domain/ImmutableOrderNumberImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/domain/OrderNumber;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/audible/mobile/domain/ImmutableOrderNumberImpl$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/domain/OrderNumber;
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {p1}, Lcom/audible/mobile/util/extensions/StringExtensionsKt;->getEmpty(Lkotlin/jvm/internal/StringCompanionObject;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/audible/mobile/domain/ImmutableOrderNumberImpl$CREATOR;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/OrderNumber;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/audible/mobile/domain/ImmutableOrderNumberImpl$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/domain/OrderNumber;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/domain/OrderNumber;
    .locals 0

    .line 18
    new-array p1, p1, [Lcom/audible/mobile/domain/OrderNumber;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/audible/mobile/domain/ImmutableOrderNumberImpl$CREATOR;->newArray(I)[Lcom/audible/mobile/domain/OrderNumber;

    move-result-object p1

    return-object p1
.end method

.method public final nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/OrderNumber;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/audible/mobile/domain/OrderNumber;->NONE:Lcom/audible/mobile/domain/ImmutableOrderNumberImpl;

    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lcom/audible/mobile/domain/ImmutableOrderNumberImpl;

    invoke-direct {v0, p1}, Lcom/audible/mobile/domain/ImmutableOrderNumberImpl;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
