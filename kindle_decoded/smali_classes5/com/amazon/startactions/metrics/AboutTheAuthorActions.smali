.class public final enum Lcom/amazon/startactions/metrics/AboutTheAuthorActions;
.super Ljava/lang/Enum;
.source "AboutTheAuthorActions.java"

# interfaces
.implements Lcom/amazon/ea/metrics/WidgetActions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/startactions/metrics/AboutTheAuthorActions;",
        ">;",
        "Lcom/amazon/ea/metrics/WidgetActions;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

.field public static final enum CLICK_FOLLOW:Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

.field public static final enum CLICK_SEE_IN_STORE:Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

.field public static final enum CLICK_SEE_LESS:Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

.field public static final enum CLICK_SEE_MORE:Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

.field public static final enum CLICK_UNFOLLOW:Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

.field public static final enum UPDATE_STATUS_ERROR:Lcom/amazon/startactions/metrics/AboutTheAuthorActions;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 9
    new-instance v0, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    const/4 v1, 0x0

    const-string v2, "CLICK_FOLLOW"

    const-string v3, "Click.Follow"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;->CLICK_FOLLOW:Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    .line 10
    new-instance v0, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    const/4 v2, 0x1

    const-string v3, "CLICK_UNFOLLOW"

    const-string v4, "Click.Unfollow"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;->CLICK_UNFOLLOW:Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    .line 11
    new-instance v0, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    const/4 v3, 0x2

    const-string v4, "CLICK_SEE_IN_STORE"

    const-string v5, "Click.SeeInStore"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;->CLICK_SEE_IN_STORE:Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    .line 12
    new-instance v0, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    const/4 v4, 0x3

    const-string v5, "CLICK_SEE_MORE"

    const-string v6, "Click.SeeMore"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;->CLICK_SEE_MORE:Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    .line 13
    new-instance v0, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    const/4 v5, 0x4

    const-string v6, "CLICK_SEE_LESS"

    const-string v7, "Click.SeeLess"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;->CLICK_SEE_LESS:Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    .line 14
    new-instance v0, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    const/4 v6, 0x5

    const-string v7, "UPDATE_STATUS_ERROR"

    const-string v8, "UpdateStatusError"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;->UPDATE_STATUS_ERROR:Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    .line 8
    sget-object v8, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;->CLICK_FOLLOW:Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;->CLICK_UNFOLLOW:Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;->CLICK_SEE_IN_STORE:Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;->CLICK_SEE_MORE:Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;->CLICK_SEE_LESS:Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;->$VALUES:[Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

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

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;->action:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/startactions/metrics/AboutTheAuthorActions;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    return-object p0
.end method

.method public static values()[Lcom/amazon/startactions/metrics/AboutTheAuthorActions;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;->$VALUES:[Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    invoke-virtual {v0}, [Lcom/amazon/startactions/metrics/AboutTheAuthorActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;->action:Ljava/lang/String;

    return-object v0
.end method
