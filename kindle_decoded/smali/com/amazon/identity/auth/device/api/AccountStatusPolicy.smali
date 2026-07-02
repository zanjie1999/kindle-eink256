.class public Lcom/amazon/identity/auth/device/api/AccountStatusPolicy;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/identity/auth/device/api/AccountStatusPolicy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPolicy:Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$1;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$1;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;)V
    .locals 0
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy;->mPolicy:Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountStatusPolicy()Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy;->mPolicy:Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 136
    iget-object p2, p0, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy;->mPolicy:Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
