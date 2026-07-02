.class public final Lcom/audible/mobile/network/models/common/hyperlink/PageApiLink;
.super Lcom/audible/mobile/network/models/common/hyperlink/HyperLink;
.source "PageApiLink.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/network/models/common/hyperlink/PageApiLink$Creator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final pageId:Lcom/audible/mobile/domain/PageId;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "page_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/audible/mobile/network/models/common/hyperlink/PageApiLink$Creator;

    invoke-direct {v0}, Lcom/audible/mobile/network/models/common/hyperlink/PageApiLink$Creator;-><init>()V

    sput-object v0, Lcom/audible/mobile/network/models/common/hyperlink/PageApiLink;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/domain/PageId;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    .line 18
    invoke-direct/range {v0 .. v7}, Lcom/audible/mobile/network/models/common/hyperlink/HyperLink;-><init>(Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;Ljava/lang/String;Ljava/lang/String;Lcom/audible/mobile/network/models/common/Image;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/audible/mobile/network/models/common/hyperlink/PageApiLink;->pageId:Lcom/audible/mobile/domain/PageId;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/audible/mobile/network/models/common/hyperlink/PageApiLink;->pageId:Lcom/audible/mobile/domain/PageId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
