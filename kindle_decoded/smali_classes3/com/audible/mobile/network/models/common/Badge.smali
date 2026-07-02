.class public final Lcom/audible/mobile/network/models/common/Badge;
.super Ljava/lang/Object;
.source "Badge.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/network/models/common/Badge$Creator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final accessibility:Lcom/audible/mobile/network/models/common/BadgeAccessibility;

.field private final graphic:Lcom/audible/mobile/network/models/common/BadgeGraphic;

.field private final short_text:Ljava/lang/String;

.field private final tag_link:Ljava/lang/String;

.field private final tag_type:Lcom/audible/mobile/network/apis/domain/BadgeTagType;

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/audible/mobile/network/models/common/Badge$Creator;

    invoke-direct {v0}, Lcom/audible/mobile/network/models/common/Badge$Creator;-><init>()V

    sput-object v0, Lcom/audible/mobile/network/models/common/Badge;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/network/apis/domain/BadgeTagType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/audible/mobile/network/models/common/BadgeGraphic;Lcom/audible/mobile/network/models/common/BadgeAccessibility;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/mobile/network/models/common/Badge;->tag_type:Lcom/audible/mobile/network/apis/domain/BadgeTagType;

    iput-object p2, p0, Lcom/audible/mobile/network/models/common/Badge;->tag_link:Ljava/lang/String;

    iput-object p3, p0, Lcom/audible/mobile/network/models/common/Badge;->text:Ljava/lang/String;

    iput-object p4, p0, Lcom/audible/mobile/network/models/common/Badge;->short_text:Ljava/lang/String;

    iput-object p5, p0, Lcom/audible/mobile/network/models/common/Badge;->graphic:Lcom/audible/mobile/network/models/common/BadgeGraphic;

    iput-object p6, p0, Lcom/audible/mobile/network/models/common/Badge;->accessibility:Lcom/audible/mobile/network/models/common/BadgeAccessibility;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/audible/mobile/network/models/common/Badge;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/audible/mobile/network/models/common/Badge;

    iget-object v0, p0, Lcom/audible/mobile/network/models/common/Badge;->tag_type:Lcom/audible/mobile/network/apis/domain/BadgeTagType;

    iget-object v1, p1, Lcom/audible/mobile/network/models/common/Badge;->tag_type:Lcom/audible/mobile/network/apis/domain/BadgeTagType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/mobile/network/models/common/Badge;->tag_link:Ljava/lang/String;

    iget-object v1, p1, Lcom/audible/mobile/network/models/common/Badge;->tag_link:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/mobile/network/models/common/Badge;->text:Ljava/lang/String;

    iget-object v1, p1, Lcom/audible/mobile/network/models/common/Badge;->text:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/mobile/network/models/common/Badge;->short_text:Ljava/lang/String;

    iget-object v1, p1, Lcom/audible/mobile/network/models/common/Badge;->short_text:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/mobile/network/models/common/Badge;->graphic:Lcom/audible/mobile/network/models/common/BadgeGraphic;

    iget-object v1, p1, Lcom/audible/mobile/network/models/common/Badge;->graphic:Lcom/audible/mobile/network/models/common/BadgeGraphic;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/mobile/network/models/common/Badge;->accessibility:Lcom/audible/mobile/network/models/common/BadgeAccessibility;

    iget-object p1, p1, Lcom/audible/mobile/network/models/common/Badge;->accessibility:Lcom/audible/mobile/network/models/common/BadgeAccessibility;

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
    .locals 3

    iget-object v0, p0, Lcom/audible/mobile/network/models/common/Badge;->tag_type:Lcom/audible/mobile/network/apis/domain/BadgeTagType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/audible/mobile/network/models/common/Badge;->tag_link:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/audible/mobile/network/models/common/Badge;->text:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/audible/mobile/network/models/common/Badge;->short_text:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/audible/mobile/network/models/common/Badge;->graphic:Lcom/audible/mobile/network/models/common/BadgeGraphic;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/audible/mobile/network/models/common/BadgeGraphic;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/audible/mobile/network/models/common/Badge;->accessibility:Lcom/audible/mobile/network/models/common/BadgeAccessibility;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/audible/mobile/network/models/common/BadgeAccessibility;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Badge(tag_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/network/models/common/Badge;->tag_type:Lcom/audible/mobile/network/apis/domain/BadgeTagType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tag_link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/network/models/common/Badge;->tag_link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/network/models/common/Badge;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", short_text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/network/models/common/Badge;->short_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", graphic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/network/models/common/Badge;->graphic:Lcom/audible/mobile/network/models/common/BadgeGraphic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", accessibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/network/models/common/Badge;->accessibility:Lcom/audible/mobile/network/models/common/BadgeAccessibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/audible/mobile/network/models/common/Badge;->tag_type:Lcom/audible/mobile/network/apis/domain/BadgeTagType;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/audible/mobile/network/models/common/Badge;->tag_link:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/audible/mobile/network/models/common/Badge;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/audible/mobile/network/models/common/Badge;->short_text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/audible/mobile/network/models/common/Badge;->graphic:Lcom/audible/mobile/network/models/common/BadgeGraphic;

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object p2, p0, Lcom/audible/mobile/network/models/common/Badge;->accessibility:Lcom/audible/mobile/network/models/common/BadgeAccessibility;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return-void
.end method
