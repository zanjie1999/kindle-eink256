.class public Lcom/amazon/android/docviewer/mapper/PageIndex;
.super Ljava/lang/Object;
.source "PageIndex.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/android/docviewer/mapper/PageIndex;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mIndex:I

.field private final mPageType:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 153
    new-instance v0, Lcom/amazon/android/docviewer/mapper/PageIndex$1;

    invoke-direct {v0}, Lcom/amazon/android/docviewer/mapper/PageIndex$1;-><init>()V

    sput-object v0, Lcom/amazon/android/docviewer/mapper/PageIndex;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/amazon/android/docviewer/mapper/PageIndex;->mIndex:I

    .line 55
    sget-object p1, Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;->NORMAL:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    iput-object p1, p0, Lcom/amazon/android/docviewer/mapper/PageIndex;->mPageType:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    return-void
.end method

.method public constructor <init>(ILcom/amazon/android/docviewer/mapper/PageIndex$PageType;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/amazon/android/docviewer/mapper/PageIndex;->mIndex:I

    .line 65
    iput-object p2, p0, Lcom/amazon/android/docviewer/mapper/PageIndex;->mPageType:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amazon/android/docviewer/mapper/PageIndex;->mIndex:I

    .line 138
    const-class v0, Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    iput-object p1, p0, Lcom/amazon/android/docviewer/mapper/PageIndex;->mPageType:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    return-void
.end method

.method public static isNormalPage(Lcom/amazon/android/docviewer/mapper/PageIndex;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 132
    :goto_0
    invoke-static {v2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    if-eqz p0, :cond_1

    .line 133
    sget-object v2, Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;->NORMAL:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getPageType()Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static isUpsellPage(Lcom/amazon/android/docviewer/mapper/PageIndex;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 122
    :goto_0
    invoke-static {v2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    if-eqz p0, :cond_1

    .line 123
    sget-object v2, Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;->UPSELL:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getPageType()Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
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

    if-nez p1, :cond_1

    return v1

    .line 101
    :cond_1
    const-class v2, Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 104
    :cond_2
    check-cast p1, Lcom/amazon/android/docviewer/mapper/PageIndex;

    .line 105
    iget v2, p0, Lcom/amazon/android/docviewer/mapper/PageIndex;->mIndex:I

    iget v3, p1, Lcom/amazon/android/docviewer/mapper/PageIndex;->mIndex:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/amazon/android/docviewer/mapper/PageIndex;->mPageType:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    iget-object p1, p1, Lcom/amazon/android/docviewer/mapper/PageIndex;->mPageType:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getIndex()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/amazon/android/docviewer/mapper/PageIndex;->mIndex:I

    return v0
.end method

.method public getPageType()Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/android/docviewer/mapper/PageIndex;->mPageType:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 87
    iget v0, p0, Lcom/amazon/android/docviewer/mapper/PageIndex;->mIndex:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 88
    iget-object v1, p0, Lcom/amazon/android/docviewer/mapper/PageIndex;->mPageType:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/android/docviewer/mapper/PageIndex;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mapper/PageIndex;->mPageType:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 148
    iget p2, p0, Lcom/amazon/android/docviewer/mapper/PageIndex;->mIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-object p2, p0, Lcom/amazon/android/docviewer/mapper/PageIndex;->mPageType:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
