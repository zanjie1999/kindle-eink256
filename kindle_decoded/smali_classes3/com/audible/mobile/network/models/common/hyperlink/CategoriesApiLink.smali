.class public final Lcom/audible/mobile/network/models/common/hyperlink/CategoriesApiLink;
.super Lcom/audible/mobile/network/models/common/hyperlink/HyperLink;
.source "CategoriesApiLink.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/network/models/common/hyperlink/CategoriesApiLink$Creator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final root:Lcom/audible/mobile/network/apis/domain/CategoryRoot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/audible/mobile/network/models/common/hyperlink/CategoriesApiLink$Creator;

    invoke-direct {v0}, Lcom/audible/mobile/network/models/common/hyperlink/CategoriesApiLink$Creator;-><init>()V

    sput-object v0, Lcom/audible/mobile/network/models/common/hyperlink/CategoriesApiLink;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/network/apis/domain/CategoryRoot;)V
    .locals 9

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x0

    move-object v1, p0

    .line 25
    invoke-direct/range {v1 .. v8}, Lcom/audible/mobile/network/models/common/hyperlink/HyperLink;-><init>(Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;Ljava/lang/String;Ljava/lang/String;Lcom/audible/mobile/network/models/common/Image;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/audible/mobile/network/models/common/hyperlink/CategoriesApiLink;->root:Lcom/audible/mobile/network/apis/domain/CategoryRoot;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/audible/mobile/network/models/common/hyperlink/CategoriesApiLink;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/audible/mobile/network/models/common/hyperlink/CategoriesApiLink;

    iget-object v0, p0, Lcom/audible/mobile/network/models/common/hyperlink/CategoriesApiLink;->root:Lcom/audible/mobile/network/apis/domain/CategoryRoot;

    iget-object p1, p1, Lcom/audible/mobile/network/models/common/hyperlink/CategoriesApiLink;->root:Lcom/audible/mobile/network/apis/domain/CategoryRoot;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/audible/mobile/network/models/common/hyperlink/CategoriesApiLink;->root:Lcom/audible/mobile/network/apis/domain/CategoryRoot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CategoriesApiLink(root="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/network/models/common/hyperlink/CategoriesApiLink;->root:Lcom/audible/mobile/network/apis/domain/CategoryRoot;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/audible/mobile/network/models/common/hyperlink/CategoriesApiLink;->root:Lcom/audible/mobile/network/apis/domain/CategoryRoot;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
