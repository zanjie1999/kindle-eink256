.class public final enum Lcom/amazon/ea/metrics/RatingAndReviewActions;
.super Ljava/lang/Enum;
.source "RatingAndReviewActions.java"

# interfaces
.implements Lcom/amazon/ea/metrics/WidgetActions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ea/metrics/RatingAndReviewActions;",
        ">;",
        "Lcom/amazon/ea/metrics/WidgetActions;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ea/metrics/RatingAndReviewActions;

.field public static final enum CLICK_CANCEL:Lcom/amazon/ea/metrics/RatingAndReviewActions;

.field public static final enum CLICK_CANCEL_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;

.field public static final enum CLICK_CANCEL_ONLY_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;

.field public static final enum CLICK_CREATE_REVIEW:Lcom/amazon/ea/metrics/RatingAndReviewActions;

.field public static final enum CLICK_RATE:Lcom/amazon/ea/metrics/RatingAndReviewActions;

.field public static final enum CLICK_RATE_CANCEL:Lcom/amazon/ea/metrics/RatingAndReviewActions;

.field public static final enum CLICK_RATE_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;

.field public static final enum CLICK_RATE_ONLY_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;

.field public static final enum CLICK_RECOMMEND:Lcom/amazon/ea/metrics/RatingAndReviewActions;

.field public static final enum CLICK_SUBMIT:Lcom/amazon/ea/metrics/RatingAndReviewActions;

.field public static final enum CLICK_SUBMIT_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;

.field public static final enum CLICK_SUBMIT_ONLY_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;

.field public static final enum RENDER_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 7
    new-instance v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;

    const/4 v1, 0x0

    const-string v2, "RENDER_GR"

    const-string v3, "Render.GR"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/ea/metrics/RatingAndReviewActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;->RENDER_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    .line 8
    new-instance v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;

    const/4 v2, 0x1

    const-string v3, "CLICK_CREATE_REVIEW"

    const-string v4, "Click.CreateReview"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/ea/metrics/RatingAndReviewActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_CREATE_REVIEW:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    .line 9
    new-instance v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;

    const/4 v3, 0x2

    const-string v4, "CLICK_RECOMMEND"

    const-string v5, "Click.Recommend"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/ea/metrics/RatingAndReviewActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_RECOMMEND:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    .line 10
    new-instance v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;

    const/4 v4, 0x3

    const-string v5, "CLICK_RATE"

    const-string v6, "Click.Rate"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/ea/metrics/RatingAndReviewActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_RATE:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    .line 11
    new-instance v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;

    const/4 v5, 0x4

    const-string v6, "CLICK_RATE_GR"

    const-string v7, "Click.Rate.GR"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/ea/metrics/RatingAndReviewActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_RATE_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    .line 12
    new-instance v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;

    const/4 v6, 0x5

    const-string v7, "CLICK_RATE_ONLY_GR"

    const-string v8, "Click.Rate.OnlyGR"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/ea/metrics/RatingAndReviewActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_RATE_ONLY_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    .line 13
    new-instance v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;

    const/4 v7, 0x6

    const-string v8, "CLICK_RATE_CANCEL"

    const-string v9, "Click.Rate.Cancel"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/ea/metrics/RatingAndReviewActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_RATE_CANCEL:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    .line 14
    new-instance v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;

    const/4 v8, 0x7

    const-string v9, "CLICK_SUBMIT"

    const-string v10, "Click.Submit"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/ea/metrics/RatingAndReviewActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_SUBMIT:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    .line 15
    new-instance v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;

    const/16 v9, 0x8

    const-string v10, "CLICK_SUBMIT_GR"

    const-string v11, "Click.Submit.GR"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/ea/metrics/RatingAndReviewActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_SUBMIT_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    .line 16
    new-instance v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;

    const/16 v10, 0x9

    const-string v11, "CLICK_SUBMIT_ONLY_GR"

    const-string v12, "Click.Submit.OnlyGR"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/ea/metrics/RatingAndReviewActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_SUBMIT_ONLY_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    .line 17
    new-instance v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;

    const/16 v11, 0xa

    const-string v12, "CLICK_CANCEL"

    const-string v13, "Click.Cancel"

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/ea/metrics/RatingAndReviewActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_CANCEL:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    .line 18
    new-instance v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;

    const/16 v12, 0xb

    const-string v13, "CLICK_CANCEL_GR"

    const-string v14, "Click.Cancel.GR"

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/ea/metrics/RatingAndReviewActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_CANCEL_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    .line 19
    new-instance v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;

    const/16 v13, 0xc

    const-string v14, "CLICK_CANCEL_ONLY_GR"

    const-string v15, "Click.Cancel.OnlyGR"

    invoke-direct {v0, v14, v13, v15}, Lcom/amazon/ea/metrics/RatingAndReviewActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_CANCEL_ONLY_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    const/16 v14, 0xd

    new-array v14, v14, [Lcom/amazon/ea/metrics/RatingAndReviewActions;

    .line 6
    sget-object v15, Lcom/amazon/ea/metrics/RatingAndReviewActions;->RENDER_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    aput-object v15, v14, v1

    sget-object v1, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_CREATE_REVIEW:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_RECOMMEND:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_RATE:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_RATE_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_RATE_ONLY_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_RATE_CANCEL:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_SUBMIT:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_SUBMIT_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_SUBMIT_ONLY_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_CANCEL:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_CANCEL_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    aput-object v1, v14, v12

    aput-object v0, v14, v13

    sput-object v14, Lcom/amazon/ea/metrics/RatingAndReviewActions;->$VALUES:[Lcom/amazon/ea/metrics/RatingAndReviewActions;

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

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/amazon/ea/metrics/RatingAndReviewActions;->action:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ea/metrics/RatingAndReviewActions;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/metrics/RatingAndReviewActions;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ea/metrics/RatingAndReviewActions;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;->$VALUES:[Lcom/amazon/ea/metrics/RatingAndReviewActions;

    invoke-virtual {v0}, [Lcom/amazon/ea/metrics/RatingAndReviewActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ea/metrics/RatingAndReviewActions;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/ea/metrics/RatingAndReviewActions;->action:Ljava/lang/String;

    return-object v0
.end method
