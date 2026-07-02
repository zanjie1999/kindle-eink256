.class public final enum Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;
.super Ljava/lang/Enum;
.source "ReviewValidationIssuesEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

.field public static final enum REVIEW_INVALID_RATING:Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

.field public static final enum REVIEW_TEXT_INVALID:Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

.field public static final enum REVIEW_TEXT_NOT_FOUND:Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

.field public static final enum REVIEW_TITLE_NOT_FOUND:Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 8
    new-instance v0, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    const/4 v1, 0x0

    const-string v2, "REVIEW_INVALID_RATING"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;->REVIEW_INVALID_RATING:Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    new-instance v0, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    const/4 v2, 0x1

    const-string v3, "REVIEW_TITLE_NOT_FOUND"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;->REVIEW_TITLE_NOT_FOUND:Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    new-instance v0, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    const/4 v3, 0x2

    const-string v4, "REVIEW_TEXT_NOT_FOUND"

    invoke-direct {v0, v4, v3}, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;->REVIEW_TEXT_NOT_FOUND:Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    new-instance v0, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    const/4 v4, 0x3

    const-string v5, "REVIEW_TEXT_INVALID"

    invoke-direct {v0, v5, v4}, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;->REVIEW_TEXT_INVALID:Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    .line 7
    sget-object v6, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;->REVIEW_INVALID_RATING:Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;->REVIEW_TITLE_NOT_FOUND:Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;->REVIEW_TEXT_NOT_FOUND:Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;->$VALUES:[Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;->$VALUES:[Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    invoke-virtual {v0}, [Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    return-object v0
.end method
