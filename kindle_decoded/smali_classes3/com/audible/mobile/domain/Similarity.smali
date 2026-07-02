.class public final enum Lcom/audible/mobile/domain/Similarity;
.super Ljava/lang/Enum;
.source "Similarity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/domain/Similarity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/domain/Similarity;

.field public static final enum BySameAuthor:Lcom/audible/mobile/domain/Similarity;

.field public static final enum BySameNarrator:Lcom/audible/mobile/domain/Similarity;

.field public static final enum OtherCustomerPurchaseHistory:Lcom/audible/mobile/domain/Similarity;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 13
    new-instance v0, Lcom/audible/mobile/domain/Similarity;

    const/4 v1, 0x0

    const-string v2, "BySameNarrator"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/domain/Similarity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/Similarity;->BySameNarrator:Lcom/audible/mobile/domain/Similarity;

    new-instance v0, Lcom/audible/mobile/domain/Similarity;

    const/4 v2, 0x1

    const-string v3, "BySameAuthor"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/domain/Similarity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/Similarity;->BySameAuthor:Lcom/audible/mobile/domain/Similarity;

    new-instance v0, Lcom/audible/mobile/domain/Similarity;

    const/4 v3, 0x2

    const-string v4, "OtherCustomerPurchaseHistory"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/domain/Similarity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/Similarity;->OtherCustomerPurchaseHistory:Lcom/audible/mobile/domain/Similarity;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/audible/mobile/domain/Similarity;

    .line 11
    sget-object v5, Lcom/audible/mobile/domain/Similarity;->BySameNarrator:Lcom/audible/mobile/domain/Similarity;

    aput-object v5, v4, v1

    sget-object v1, Lcom/audible/mobile/domain/Similarity;->BySameAuthor:Lcom/audible/mobile/domain/Similarity;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/audible/mobile/domain/Similarity;->$VALUES:[Lcom/audible/mobile/domain/Similarity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/domain/Similarity;
    .locals 1

    .line 11
    const-class v0, Lcom/audible/mobile/domain/Similarity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/domain/Similarity;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/domain/Similarity;
    .locals 1

    .line 11
    sget-object v0, Lcom/audible/mobile/domain/Similarity;->$VALUES:[Lcom/audible/mobile/domain/Similarity;

    invoke-virtual {v0}, [Lcom/audible/mobile/domain/Similarity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/domain/Similarity;

    return-object v0
.end method
