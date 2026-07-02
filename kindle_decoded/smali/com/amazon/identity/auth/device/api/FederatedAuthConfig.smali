.class public Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccessToken:Ljava/lang/String;

.field private final mIdentityProvider:Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;

.field private final mRelyingParty:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$1;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$1;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;)V
    .locals 0
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 106
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;->mAccessToken:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;->mRelyingParty:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;->mIdentityProvider:Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;

    return-void

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "identityProvider is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "relyingParty is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "mAccessToken is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentityProvider()Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;->mIdentityProvider:Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;

    return-object v0
.end method

.method public getRelyingParty()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;->mRelyingParty:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 146
    iget-object p2, p0, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;->mAccessToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object p2, p0, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;->mRelyingParty:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;->mIdentityProvider:Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
