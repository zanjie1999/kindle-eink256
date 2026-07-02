.class public Lcom/audible/mobile/network/models/common/hyperlink/HyperLink;
.super Ljava/lang/Object;
.source "HyperLink.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/network/models/common/hyperlink/HyperLink$Creator;,
        Lcom/audible/mobile/network/models/common/hyperlink/HyperLink$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final description:Ljava/lang/String;

.field private final image:Lcom/audible/mobile/network/models/common/Image;

.field private final label:Ljava/lang/String;

.field private final type:Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;

.field private final viewElements:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/audible/mobile/network/models/common/hyperlink/HyperLink$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/mobile/network/models/common/hyperlink/HyperLink$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/audible/mobile/network/models/common/hyperlink/HyperLink$Creator;

    invoke-direct {v0}, Lcom/audible/mobile/network/models/common/hyperlink/HyperLink$Creator;-><init>()V

    sput-object v0, Lcom/audible/mobile/network/models/common/hyperlink/HyperLink;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/audible/mobile/network/models/common/hyperlink/HyperLink;-><init>(Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;Ljava/lang/String;Ljava/lang/String;Lcom/audible/mobile/network/models/common/Image;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;Ljava/lang/String;Ljava/lang/String;Lcom/audible/mobile/network/models/common/Image;Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/mobile/network/models/common/hyperlink/HyperLink;->type:Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;

    iput-object p2, p0, Lcom/audible/mobile/network/models/common/hyperlink/HyperLink;->label:Ljava/lang/String;

    iput-object p3, p0, Lcom/audible/mobile/network/models/common/hyperlink/HyperLink;->description:Ljava/lang/String;

    iput-object p4, p0, Lcom/audible/mobile/network/models/common/hyperlink/HyperLink;->image:Lcom/audible/mobile/network/models/common/Image;

    iput-object p5, p0, Lcom/audible/mobile/network/models/common/hyperlink/HyperLink;->viewElements:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;Ljava/lang/String;Ljava/lang/String;Lcom/audible/mobile/network/models/common/Image;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 19
    sget-object p1, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;->UNSUPPORTED:Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_1

    move-object p7, v0

    goto :goto_0

    :cond_1
    move-object p7, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v1, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    move-object v2, v0

    goto :goto_2

    :cond_3
    move-object v2, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, p5

    :goto_3
    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v1

    move-object p6, v2

    move-object p7, v0

    .line 43
    invoke-direct/range {p2 .. p7}, Lcom/audible/mobile/network/models/common/hyperlink/HyperLink;-><init>(Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;Ljava/lang/String;Ljava/lang/String;Lcom/audible/mobile/network/models/common/Image;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/audible/mobile/network/models/common/hyperlink/HyperLink;->type:Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/audible/mobile/network/models/common/hyperlink/HyperLink;->label:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/audible/mobile/network/models/common/hyperlink/HyperLink;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/audible/mobile/network/models/common/hyperlink/HyperLink;->image:Lcom/audible/mobile/network/models/common/Image;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/audible/mobile/network/models/common/hyperlink/HyperLink;->viewElements:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
