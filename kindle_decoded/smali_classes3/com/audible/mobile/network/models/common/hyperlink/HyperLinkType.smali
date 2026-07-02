.class public final enum Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;
.super Ljava/lang/Enum;
.source "HyperLinkType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;

.field public static final Companion:Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType$Companion;

.field public static final enum UNSUPPORTED:Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;


# instance fields
.field private final type:Ljava/lang/reflect/Type;

.field private final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;

    new-instance v1, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;

    .line 13
    const-class v2, Lcom/audible/mobile/network/models/common/hyperlink/PageApiLink;

    const/4 v3, 0x0

    const-string v4, "PAGE_API_LINK"

    const-string v5, "PageApiLink"

    invoke-direct {v1, v4, v3, v2, v5}, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;-><init>(Ljava/lang/String;ILjava/lang/reflect/Type;Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;

    .line 16
    const-class v2, Lcom/audible/mobile/network/models/common/hyperlink/ProductsApiLink;

    const/4 v3, 0x1

    const-string v4, "PRODUCTS_API_LINK"

    const-string v5, "ProductsApiLink"

    invoke-direct {v1, v4, v3, v2, v5}, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;-><init>(Ljava/lang/String;ILjava/lang/reflect/Type;Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;

    .line 19
    const-class v2, Lcom/audible/mobile/network/models/common/hyperlink/CategoriesApiLink;

    const/4 v3, 0x2

    const-string v4, "CATEGORIES_API_LINK"

    const-string v5, "CategoriesApiLink"

    invoke-direct {v1, v4, v3, v2, v5}, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;-><init>(Ljava/lang/String;ILjava/lang/reflect/Type;Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;

    .line 22
    const-class v2, Lcom/audible/mobile/network/models/common/hyperlink/ExternalLink;

    const/4 v3, 0x3

    const-string v4, "EXTERNAL_LINK"

    const-string v5, "ExternalLink"

    invoke-direct {v1, v4, v3, v2, v5}, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;-><init>(Ljava/lang/String;ILjava/lang/reflect/Type;Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;

    .line 25
    const-class v2, Lcom/audible/mobile/network/models/common/hyperlink/HyperLink;

    const/4 v3, 0x4

    const-string v4, "UNSUPPORTED"

    const-string v5, ""

    invoke-direct {v1, v4, v3, v2, v5}, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;-><init>(Ljava/lang/String;ILjava/lang/reflect/Type;Ljava/lang/String;)V

    sput-object v1, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;->UNSUPPORTED:Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;->$VALUES:[Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;

    new-instance v0, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;->Companion:Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/reflect/Type;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;->type:Ljava/lang/reflect/Type;

    iput-object p4, p0, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;->typeName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;
    .locals 1

    const-class v0, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;
    .locals 1

    sget-object v0, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;->$VALUES:[Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;

    invoke-virtual {v0}, [Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;

    return-object v0
.end method


# virtual methods
.method public final getTypeName()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;->typeName:Ljava/lang/String;

    return-object v0
.end method
