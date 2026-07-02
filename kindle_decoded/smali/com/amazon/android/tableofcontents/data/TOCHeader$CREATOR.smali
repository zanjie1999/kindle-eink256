.class public final Lcom/amazon/android/tableofcontents/data/TOCHeader$CREATOR;
.super Ljava/lang/Object;
.source "TOCHeader.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/tableofcontents/data/TOCHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/android/tableofcontents/data/TOCHeader;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/amazon/android/tableofcontents/data/TOCHeader$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/android/tableofcontents/data/TOCHeader;
    .locals 1

    const-string/jumbo v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/amazon/android/tableofcontents/data/TOCHeader;

    invoke-direct {v0, p1}, Lcom/amazon/android/tableofcontents/data/TOCHeader;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/amazon/android/tableofcontents/data/TOCHeader$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/android/tableofcontents/data/TOCHeader;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/android/tableofcontents/data/TOCHeader;
    .locals 0

    .line 33
    new-array p1, p1, [Lcom/amazon/android/tableofcontents/data/TOCHeader;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/amazon/android/tableofcontents/data/TOCHeader$CREATOR;->newArray(I)[Lcom/amazon/android/tableofcontents/data/TOCHeader;

    move-result-object p1

    return-object p1
.end method
