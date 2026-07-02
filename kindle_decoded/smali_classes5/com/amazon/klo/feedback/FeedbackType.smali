.class final enum Lcom/amazon/klo/feedback/FeedbackType;
.super Ljava/lang/Enum;
.source "FeedbackType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/klo/feedback/FeedbackType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/klo/feedback/FeedbackType;

.field public static final enum BAD_FORMAT:Lcom/amazon/klo/feedback/FeedbackType;

.field public static final enum DETAILS_INCORRECT:Lcom/amazon/klo/feedback/FeedbackType;

.field public static final enum MISSING_CONTENT:Lcom/amazon/klo/feedback/FeedbackType;

.field public static final enum MISS_MATCH:Lcom/amazon/klo/feedback/FeedbackType;

.field public static final enum OTHER:Lcom/amazon/klo/feedback/FeedbackType;


# instance fields
.field private final resourceId:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 15
    new-instance v0, Lcom/amazon/klo/feedback/FeedbackType;

    sget v1, Lcom/amazon/klo/R$string;->klo_feedback_type_content_do_not_match:I

    const/4 v2, 0x0

    const-string v3, "MISS_MATCH"

    invoke-direct {v0, v3, v2, v2, v1}, Lcom/amazon/klo/feedback/FeedbackType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/klo/feedback/FeedbackType;->MISS_MATCH:Lcom/amazon/klo/feedback/FeedbackType;

    .line 16
    new-instance v0, Lcom/amazon/klo/feedback/FeedbackType;

    sget v1, Lcom/amazon/klo/R$string;->klo_feedback_type_missing_content:I

    const/4 v3, 0x1

    const-string v4, "MISSING_CONTENT"

    invoke-direct {v0, v4, v3, v3, v1}, Lcom/amazon/klo/feedback/FeedbackType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/klo/feedback/FeedbackType;->MISSING_CONTENT:Lcom/amazon/klo/feedback/FeedbackType;

    .line 17
    new-instance v0, Lcom/amazon/klo/feedback/FeedbackType;

    sget v1, Lcom/amazon/klo/R$string;->klo_feedback_type_bad_format:I

    const/4 v4, 0x2

    const-string v5, "BAD_FORMAT"

    invoke-direct {v0, v5, v4, v4, v1}, Lcom/amazon/klo/feedback/FeedbackType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/klo/feedback/FeedbackType;->BAD_FORMAT:Lcom/amazon/klo/feedback/FeedbackType;

    .line 18
    new-instance v0, Lcom/amazon/klo/feedback/FeedbackType;

    sget v1, Lcom/amazon/klo/R$string;->klo_feedback_type_details_incorrect:I

    const/4 v5, 0x3

    const-string v6, "DETAILS_INCORRECT"

    invoke-direct {v0, v6, v5, v5, v1}, Lcom/amazon/klo/feedback/FeedbackType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/klo/feedback/FeedbackType;->DETAILS_INCORRECT:Lcom/amazon/klo/feedback/FeedbackType;

    .line 19
    new-instance v0, Lcom/amazon/klo/feedback/FeedbackType;

    sget v1, Lcom/amazon/klo/R$string;->klo_feedback_type_other:I

    const/4 v6, 0x4

    const-string v7, "OTHER"

    invoke-direct {v0, v7, v6, v6, v1}, Lcom/amazon/klo/feedback/FeedbackType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/klo/feedback/FeedbackType;->OTHER:Lcom/amazon/klo/feedback/FeedbackType;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/amazon/klo/feedback/FeedbackType;

    .line 13
    sget-object v7, Lcom/amazon/klo/feedback/FeedbackType;->MISS_MATCH:Lcom/amazon/klo/feedback/FeedbackType;

    aput-object v7, v1, v2

    sget-object v2, Lcom/amazon/klo/feedback/FeedbackType;->MISSING_CONTENT:Lcom/amazon/klo/feedback/FeedbackType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/klo/feedback/FeedbackType;->BAD_FORMAT:Lcom/amazon/klo/feedback/FeedbackType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/klo/feedback/FeedbackType;->DETAILS_INCORRECT:Lcom/amazon/klo/feedback/FeedbackType;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/amazon/klo/feedback/FeedbackType;->$VALUES:[Lcom/amazon/klo/feedback/FeedbackType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/amazon/klo/feedback/FeedbackType;->value:I

    .line 27
    iput p4, p0, Lcom/amazon/klo/feedback/FeedbackType;->resourceId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/klo/feedback/FeedbackType;
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/klo/feedback/FeedbackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/klo/feedback/FeedbackType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/klo/feedback/FeedbackType;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/klo/feedback/FeedbackType;->$VALUES:[Lcom/amazon/klo/feedback/FeedbackType;

    invoke-virtual {v0}, [Lcom/amazon/klo/feedback/FeedbackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/klo/feedback/FeedbackType;

    return-object v0
.end method


# virtual methods
.method public getResourceId()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/amazon/klo/feedback/FeedbackType;->resourceId:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/amazon/klo/feedback/FeedbackType;->value:I

    return v0
.end method
