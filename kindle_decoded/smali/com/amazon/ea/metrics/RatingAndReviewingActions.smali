.class public final enum Lcom/amazon/ea/metrics/RatingAndReviewingActions;
.super Ljava/lang/Enum;
.source "RatingAndReviewingActions.kt"

# interfaces
.implements Lcom/amazon/ea/metrics/WidgetActions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ea/metrics/RatingAndReviewingActions;",
        ">;",
        "Lcom/amazon/ea/metrics/WidgetActions;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ea/metrics/RatingAndReviewingActions;

.field public static final enum CLICK_CANCEL:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

.field public static final enum CLICK_CANCEL_GR:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

.field public static final enum CLICK_CANCEL_ONLY_GR:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

.field public static final enum CLICK_CREATE_REVIEW:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

.field public static final enum CLICK_RATE:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

.field public static final enum CLICK_RATE_CANCEL:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

.field public static final enum CLICK_RATE_GR:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

.field public static final enum CLICK_RATE_ONLY_GR:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

.field public static final enum CLICK_SUBMIT:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

.field public static final enum CLICK_SUBMIT_GR:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

.field public static final enum CLICK_SUBMIT_ONLY_GR:Lcom/amazon/ea/metrics/RatingAndReviewingActions;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    new-instance v1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    const/4 v2, 0x0

    const-string v3, "CLICK_CREATE_REVIEW"

    const-string v4, "Click.CreateReview"

    .line 4
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/ea/metrics/RatingAndReviewingActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;->CLICK_CREATE_REVIEW:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    const/4 v2, 0x1

    const-string v3, "CLICK_RATE"

    const-string v4, "Click.Rate"

    .line 5
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/ea/metrics/RatingAndReviewingActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;->CLICK_RATE:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    const/4 v2, 0x2

    const-string v3, "CLICK_RATE_GR"

    const-string v4, "Click.Rate.GR"

    .line 6
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/ea/metrics/RatingAndReviewingActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;->CLICK_RATE_GR:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    const/4 v2, 0x3

    const-string v3, "CLICK_RATE_ONLY_GR"

    const-string v4, "Click.Rate.OnlyGR"

    .line 7
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/ea/metrics/RatingAndReviewingActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;->CLICK_RATE_ONLY_GR:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    const/4 v2, 0x4

    const-string v3, "CLICK_RATE_CANCEL"

    const-string v4, "Click.Rate.Cancel"

    .line 8
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/ea/metrics/RatingAndReviewingActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;->CLICK_RATE_CANCEL:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    const/4 v2, 0x5

    const-string v3, "CLICK_SUBMIT"

    const-string v4, "Click.Submit"

    .line 9
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/ea/metrics/RatingAndReviewingActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;->CLICK_SUBMIT:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    const/4 v2, 0x6

    const-string v3, "CLICK_SUBMIT_GR"

    const-string v4, "Click.Submit.GR"

    .line 10
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/ea/metrics/RatingAndReviewingActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;->CLICK_SUBMIT_GR:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    const/4 v2, 0x7

    const-string v3, "CLICK_SUBMIT_ONLY_GR"

    const-string v4, "Click.Submit.OnlyGR"

    .line 11
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/ea/metrics/RatingAndReviewingActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;->CLICK_SUBMIT_ONLY_GR:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    const/16 v2, 0x8

    const-string v3, "CLICK_CANCEL"

    const-string v4, "Click.Cancel"

    .line 12
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/ea/metrics/RatingAndReviewingActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;->CLICK_CANCEL:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    const/16 v2, 0x9

    const-string v3, "CLICK_CANCEL_GR"

    const-string v4, "Click.Cancel.GR"

    .line 13
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/ea/metrics/RatingAndReviewingActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;->CLICK_CANCEL_GR:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    const/16 v2, 0xa

    const-string v3, "CLICK_CANCEL_ONLY_GR"

    const-string v4, "Click.Cancel.OnlyGR"

    .line 14
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/ea/metrics/RatingAndReviewingActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;->CLICK_CANCEL_ONLY_GR:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/ea/metrics/RatingAndReviewingActions;->$VALUES:[Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/ea/metrics/RatingAndReviewingActions;->action:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ea/metrics/RatingAndReviewingActions;
    .locals 1

    const-class v0, Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ea/metrics/RatingAndReviewingActions;
    .locals 1

    sget-object v0, Lcom/amazon/ea/metrics/RatingAndReviewingActions;->$VALUES:[Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    invoke-virtual {v0}, [Lcom/amazon/ea/metrics/RatingAndReviewingActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/ea/metrics/RatingAndReviewingActions;->action:Ljava/lang/String;

    return-object v0
.end method
