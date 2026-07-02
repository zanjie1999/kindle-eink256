.class public final Lcom/audible/mobile/network/models/common/hyperlink/ProductsApiLink;
.super Lcom/audible/mobile/network/models/common/hyperlink/HyperLink;
.source "ProductsApiLink.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/network/models/common/hyperlink/ProductsApiLink$Creator;,
        Lcom/audible/mobile/network/models/common/hyperlink/ProductsApiLink$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProductsApiLink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProductsApiLink.kt\ncom/audible/mobile/network/models/common/hyperlink/ProductsApiLink\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,52:1\n1366#2:53\n1435#2,3:54\n*E\n*S KotlinDebug\n*F\n+ 1 ProductsApiLink.kt\ncom/audible/mobile/network/models/common/hyperlink/ProductsApiLink\n*L\n42#1:53\n42#1,3:54\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final asins:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "asins"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/audible/mobile/domain/Asin;",
            ">;"
        }
    .end annotation
.end field

.field private final categoryIdString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category_ids"
    .end annotation
.end field

.field private final planName:Lcom/audible/mobile/membership/PlanName;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "plan"
    .end annotation
.end field

.field private final sortOption:Lcom/audible/mobile/network/apis/domain/ProductSortOption;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "products_sort_by"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/audible/mobile/network/models/common/hyperlink/ProductsApiLink$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/mobile/network/models/common/hyperlink/ProductsApiLink$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/audible/mobile/network/models/common/hyperlink/ProductsApiLink$Creator;

    invoke-direct {v0}, Lcom/audible/mobile/network/models/common/hyperlink/ProductsApiLink$Creator;-><init>()V

    sput-object v0, Lcom/audible/mobile/network/models/common/hyperlink/ProductsApiLink;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/audible/mobile/network/models/common/hyperlink/ProductsApiLink;-><init>(Lcom/audible/mobile/network/apis/domain/ProductSortOption;Lcom/audible/mobile/membership/PlanName;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/network/apis/domain/ProductSortOption;Lcom/audible/mobile/membership/PlanName;Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/network/apis/domain/ProductSortOption;",
            "Lcom/audible/mobile/membership/PlanName;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/audible/mobile/domain/Asin;",
            ">;)V"
        }
    .end annotation

    const-string v0, "asins"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x0

    move-object v1, p0

    .line 39
    invoke-direct/range {v1 .. v8}, Lcom/audible/mobile/network/models/common/hyperlink/HyperLink;-><init>(Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;Ljava/lang/String;Ljava/lang/String;Lcom/audible/mobile/network/models/common/Image;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/audible/mobile/network/models/common/hyperlink/ProductsApiLink;->sortOption:Lcom/audible/mobile/network/apis/domain/ProductSortOption;

    iput-object p2, p0, Lcom/audible/mobile/network/models/common/hyperlink/ProductsApiLink;->planName:Lcom/audible/mobile/membership/PlanName;

    iput-object p3, p0, Lcom/audible/mobile/network/models/common/hyperlink/ProductsApiLink;->categoryIdString:Ljava/lang/String;

    iput-object p4, p0, Lcom/audible/mobile/network/models/common/hyperlink/ProductsApiLink;->asins:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/audible/mobile/network/apis/domain/ProductSortOption;Lcom/audible/mobile/membership/PlanName;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 37
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/audible/mobile/network/models/common/hyperlink/ProductsApiLink;-><init>(Lcom/audible/mobile/network/apis/domain/ProductSortOption;Lcom/audible/mobile/membership/PlanName;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/audible/mobile/network/models/common/hyperlink/ProductsApiLink;->sortOption:Lcom/audible/mobile/network/apis/domain/ProductSortOption;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Lcom/audible/mobile/network/models/common/hyperlink/ProductsApiLink;->planName:Lcom/audible/mobile/membership/PlanName;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v0, p0, Lcom/audible/mobile/network/models/common/hyperlink/ProductsApiLink;->categoryIdString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/audible/mobile/network/models/common/hyperlink/ProductsApiLink;->asins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/domain/Asin;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_2

    :cond_2
    return-void
.end method
