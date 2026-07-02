.class public final enum Lcom/audible/mobile/network/apis/domain/ProductSortOption;
.super Ljava/lang/Enum;
.source "ProductSortOption.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/network/apis/domain/ProductSortOption$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/network/apis/domain/ProductSortOption;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/network/apis/domain/ProductSortOption;

.field public static final Companion:Lcom/audible/mobile/network/apis/domain/ProductSortOption$Companion;


# instance fields
.field private final option:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/audible/mobile/network/apis/domain/ProductSortOption;

    new-instance v1, Lcom/audible/mobile/network/apis/domain/ProductSortOption;

    const/4 v2, 0x0

    const-string v3, "BEST_SELLERS_ASC"

    const-string v4, "BestSellers"

    .line 6
    invoke-direct {v1, v3, v2, v4}, Lcom/audible/mobile/network/apis/domain/ProductSortOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/network/apis/domain/ProductSortOption;

    const/4 v2, 0x1

    const-string v3, "AVG_RATING_ASC"

    const-string v4, "AvgRating"

    .line 7
    invoke-direct {v1, v3, v2, v4}, Lcom/audible/mobile/network/apis/domain/ProductSortOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/network/apis/domain/ProductSortOption;

    const/4 v2, 0x2

    const-string v3, "TITLE_ASC"

    const-string v4, "Title"

    .line 8
    invoke-direct {v1, v3, v2, v4}, Lcom/audible/mobile/network/apis/domain/ProductSortOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/network/apis/domain/ProductSortOption;

    const/4 v2, 0x3

    const-string v3, "TITLE_DSC"

    const-string v4, "-Title"

    .line 9
    invoke-direct {v1, v3, v2, v4}, Lcom/audible/mobile/network/apis/domain/ProductSortOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/network/apis/domain/ProductSortOption;

    const/4 v2, 0x4

    const-string v3, "RELEASE_DATE_ASC"

    const-string v4, "ReleaseDate"

    .line 10
    invoke-direct {v1, v3, v2, v4}, Lcom/audible/mobile/network/apis/domain/ProductSortOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/network/apis/domain/ProductSortOption;

    const/4 v2, 0x5

    const-string v3, "RELEASE_DATE_DSC"

    const-string v4, "-ReleaseDate"

    .line 11
    invoke-direct {v1, v3, v2, v4}, Lcom/audible/mobile/network/apis/domain/ProductSortOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/network/apis/domain/ProductSortOption;

    const/4 v2, 0x6

    const-string v3, "AMAZON_ENGLISH"

    const-string v4, "AmazonEnglish"

    .line 12
    invoke-direct {v1, v3, v2, v4}, Lcom/audible/mobile/network/apis/domain/ProductSortOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/network/apis/domain/ProductSortOption;

    const/4 v2, 0x7

    const-string v3, "CONTENT_LEVEL_ASC"

    const-string v4, "ContentLevel"

    .line 13
    invoke-direct {v1, v3, v2, v4}, Lcom/audible/mobile/network/apis/domain/ProductSortOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/network/apis/domain/ProductSortOption;

    const/16 v2, 0x8

    const-string v3, "CONTENT_LEVEL_DSC"

    const-string v4, "-ContentLevel"

    .line 14
    invoke-direct {v1, v3, v2, v4}, Lcom/audible/mobile/network/apis/domain/ProductSortOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/network/apis/domain/ProductSortOption;

    const/16 v2, 0x9

    const-string v3, "RUNTIME_LENGTH_ASC"

    const-string v4, "RuntimeLength"

    .line 15
    invoke-direct {v1, v3, v2, v4}, Lcom/audible/mobile/network/apis/domain/ProductSortOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/network/apis/domain/ProductSortOption;

    const/16 v2, 0xa

    const-string v3, "RUNTIME_LENGTH_DSC"

    const-string v4, "-RuntimeLength"

    .line 16
    invoke-direct {v1, v3, v2, v4}, Lcom/audible/mobile/network/apis/domain/ProductSortOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    sput-object v0, Lcom/audible/mobile/network/apis/domain/ProductSortOption;->$VALUES:[Lcom/audible/mobile/network/apis/domain/ProductSortOption;

    new-instance v0, Lcom/audible/mobile/network/apis/domain/ProductSortOption$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/mobile/network/apis/domain/ProductSortOption$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/audible/mobile/network/apis/domain/ProductSortOption;->Companion:Lcom/audible/mobile/network/apis/domain/ProductSortOption$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/audible/mobile/network/apis/domain/ProductSortOption;->option:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getOption$p(Lcom/audible/mobile/network/apis/domain/ProductSortOption;)Ljava/lang/String;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/audible/mobile/network/apis/domain/ProductSortOption;->option:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/network/apis/domain/ProductSortOption;
    .locals 1

    const-class v0, Lcom/audible/mobile/network/apis/domain/ProductSortOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/network/apis/domain/ProductSortOption;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/network/apis/domain/ProductSortOption;
    .locals 1

    sget-object v0, Lcom/audible/mobile/network/apis/domain/ProductSortOption;->$VALUES:[Lcom/audible/mobile/network/apis/domain/ProductSortOption;

    invoke-virtual {v0}, [Lcom/audible/mobile/network/apis/domain/ProductSortOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/network/apis/domain/ProductSortOption;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductSortOption;->option:Ljava/lang/String;

    return-object v0
.end method
