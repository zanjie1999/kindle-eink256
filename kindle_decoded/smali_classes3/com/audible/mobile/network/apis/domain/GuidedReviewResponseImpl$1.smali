.class Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl$1;
.super Ljava/lang/Object;
.source "GuidedReviewResponseImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;
    .locals 1

    .line 26
    new-instance v0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;

    invoke-direct {v0, p1}, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;
    .locals 0

    .line 30
    new-array p1, p1, [Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl$1;->newArray(I)[Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;

    move-result-object p1

    return-object p1
.end method
