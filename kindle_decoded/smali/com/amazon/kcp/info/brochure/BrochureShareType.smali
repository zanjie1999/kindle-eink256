.class public final enum Lcom/amazon/kcp/info/brochure/BrochureShareType;
.super Ljava/lang/Enum;
.source "BrochureShareType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/info/brochure/BrochureShareType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/info/brochure/BrochureShareType;

.field public static final enum ASIN:Lcom/amazon/kcp/info/brochure/BrochureShareType;

.field public static final enum ASIN_WITH_IMAGE:Lcom/amazon/kcp/info/brochure/BrochureShareType;

.field public static final enum NONE:Lcom/amazon/kcp/info/brochure/BrochureShareType;

.field public static final enum QUOTE:Lcom/amazon/kcp/info/brochure/BrochureShareType;

.field public static final enum QUOTE_WITH_IMAGE:Lcom/amazon/kcp/info/brochure/BrochureShareType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 17
    new-instance v0, Lcom/amazon/kcp/info/brochure/BrochureShareType;

    const/4 v1, 0x0

    const-string v2, "ASIN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/info/brochure/BrochureShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/info/brochure/BrochureShareType;->ASIN:Lcom/amazon/kcp/info/brochure/BrochureShareType;

    .line 18
    new-instance v0, Lcom/amazon/kcp/info/brochure/BrochureShareType;

    const/4 v2, 0x1

    const-string v3, "ASIN_WITH_IMAGE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/info/brochure/BrochureShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/info/brochure/BrochureShareType;->ASIN_WITH_IMAGE:Lcom/amazon/kcp/info/brochure/BrochureShareType;

    .line 19
    new-instance v0, Lcom/amazon/kcp/info/brochure/BrochureShareType;

    const/4 v3, 0x2

    const-string v4, "QUOTE_WITH_IMAGE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/info/brochure/BrochureShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/info/brochure/BrochureShareType;->QUOTE_WITH_IMAGE:Lcom/amazon/kcp/info/brochure/BrochureShareType;

    .line 20
    new-instance v0, Lcom/amazon/kcp/info/brochure/BrochureShareType;

    const/4 v4, 0x3

    const-string v5, "QUOTE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/info/brochure/BrochureShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/info/brochure/BrochureShareType;->QUOTE:Lcom/amazon/kcp/info/brochure/BrochureShareType;

    .line 21
    new-instance v0, Lcom/amazon/kcp/info/brochure/BrochureShareType;

    const/4 v5, 0x4

    const-string v6, "NONE"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kcp/info/brochure/BrochureShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/info/brochure/BrochureShareType;->NONE:Lcom/amazon/kcp/info/brochure/BrochureShareType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kcp/info/brochure/BrochureShareType;

    .line 16
    sget-object v7, Lcom/amazon/kcp/info/brochure/BrochureShareType;->ASIN:Lcom/amazon/kcp/info/brochure/BrochureShareType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kcp/info/brochure/BrochureShareType;->ASIN_WITH_IMAGE:Lcom/amazon/kcp/info/brochure/BrochureShareType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kcp/info/brochure/BrochureShareType;->QUOTE_WITH_IMAGE:Lcom/amazon/kcp/info/brochure/BrochureShareType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kcp/info/brochure/BrochureShareType;->QUOTE:Lcom/amazon/kcp/info/brochure/BrochureShareType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kcp/info/brochure/BrochureShareType;->$VALUES:[Lcom/amazon/kcp/info/brochure/BrochureShareType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/info/brochure/BrochureShareType;
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/kcp/info/brochure/BrochureShareType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/info/brochure/BrochureShareType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/info/brochure/BrochureShareType;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/kcp/info/brochure/BrochureShareType;->$VALUES:[Lcom/amazon/kcp/info/brochure/BrochureShareType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/info/brochure/BrochureShareType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/info/brochure/BrochureShareType;

    return-object v0
.end method
