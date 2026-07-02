.class public Lcom/amazon/dcp/sso/ParcelableAccount;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/dcp/sso/ParcelableAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private final mAccountType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/amazon/dcp/sso/ParcelableAccount$1;

    invoke-direct {v0}, Lcom/amazon/dcp/sso/ParcelableAccount$1;-><init>()V

    sput-object v0, Lcom/amazon/dcp/sso/ParcelableAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/dcp/sso/ParcelableAccount;->mAccountName:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/dcp/sso/ParcelableAccount;->mAccountType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/dcp/sso/ParcelableAccount$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/amazon/dcp/sso/ParcelableAccount;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 116
    const-class v2, Lcom/amazon/dcp/sso/ParcelableAccount;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 120
    :cond_1
    check-cast p1, Lcom/amazon/dcp/sso/ParcelableAccount;

    .line 122
    iget-object v2, p0, Lcom/amazon/dcp/sso/ParcelableAccount;->mAccountName:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/dcp/sso/ParcelableAccount;->mAccountName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/dcp/sso/ParcelableAccount;->mAccountType:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/dcp/sso/ParcelableAccount;->mAccountType:Ljava/lang/String;

    .line 123
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/amazon/dcp/sso/ParcelableAccount;->mAccountName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 105
    iget-object v2, p0, Lcom/amazon/dcp/sso/ParcelableAccount;->mAccountType:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 95
    iget-object p2, p0, Lcom/amazon/dcp/sso/ParcelableAccount;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object p2, p0, Lcom/amazon/dcp/sso/ParcelableAccount;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
