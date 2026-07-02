.class public final Lcom/amazon/kindle/setting/layout/ItemConfiguration$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "ItemConfiguration.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/setting/layout/ItemConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/kindle/setting/layout/ItemConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/kindle/setting/layout/ItemConfiguration;
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/amazon/kindle/setting/layout/ItemConfiguration;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/setting/layout/ItemConfiguration;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/setting/layout/ItemConfiguration$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/kindle/setting/layout/ItemConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/kindle/setting/layout/ItemConfiguration;
    .locals 0

    .line 57
    new-array p1, p1, [Lcom/amazon/kindle/setting/layout/ItemConfiguration;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/setting/layout/ItemConfiguration$Companion$CREATOR$1;->newArray(I)[Lcom/amazon/kindle/setting/layout/ItemConfiguration;

    move-result-object p1

    return-object p1
.end method
