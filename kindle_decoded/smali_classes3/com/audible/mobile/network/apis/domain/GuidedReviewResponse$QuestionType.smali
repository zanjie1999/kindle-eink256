.class public final enum Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;
.super Ljava/lang/Enum;
.source "GuidedReviewResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QuestionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

.field public static final enum Genre:Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

.field public static final enum Misc:Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

.field public static final enum Overall:Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

.field public static final enum Performance:Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

.field public static final enum Story:Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

.field public static final enum UNKNOWN:Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 15
    new-instance v0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;->UNKNOWN:Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    new-instance v0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    const/4 v2, 0x1

    const-string v3, "Overall"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;->Overall:Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    new-instance v0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    const/4 v3, 0x2

    const-string v4, "Story"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;->Story:Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    new-instance v0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    const/4 v4, 0x3

    const-string v5, "Performance"

    invoke-direct {v0, v5, v4}, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;->Performance:Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    new-instance v0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    const/4 v5, 0x4

    const-string v6, "Genre"

    invoke-direct {v0, v6, v5}, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;->Genre:Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    new-instance v0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    const/4 v6, 0x5

    const-string v7, "Misc"

    invoke-direct {v0, v7, v6}, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;->Misc:Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    .line 13
    sget-object v8, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;->UNKNOWN:Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    aput-object v8, v7, v1

    sget-object v1, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;->Overall:Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    aput-object v1, v7, v2

    sget-object v1, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;->Story:Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    aput-object v1, v7, v3

    sget-object v1, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;->Performance:Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    aput-object v1, v7, v4

    sget-object v1, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;->Genre:Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;->$VALUES:[Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;
    .locals 1

    .line 13
    const-class v0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;
    .locals 1

    .line 13
    sget-object v0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;->$VALUES:[Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    invoke-virtual {v0}, [Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    return-object v0
.end method
