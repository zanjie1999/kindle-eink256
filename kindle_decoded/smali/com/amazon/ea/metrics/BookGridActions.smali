.class public final enum Lcom/amazon/ea/metrics/BookGridActions;
.super Ljava/lang/Enum;
.source "BookGridActions.java"

# interfaces
.implements Lcom/amazon/ea/metrics/WidgetActions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ea/metrics/BookGridActions;",
        ">;",
        "Lcom/amazon/ea/metrics/WidgetActions;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ea/metrics/BookGridActions;

.field public static final enum CLICK_CLOSE_BOOK_DETAIL:Lcom/amazon/ea/metrics/BookGridActions;

.field public static final enum CLICK_OPEN_BOOK_DETAIL:Lcom/amazon/ea/metrics/BookGridActions;

.field public static final enum CLICK_SEE_IN_STORE:Lcom/amazon/ea/metrics/BookGridActions;

.field public static final enum CLICK_SEE_LESS:Lcom/amazon/ea/metrics/BookGridActions;

.field public static final enum CLICK_SEE_MORE:Lcom/amazon/ea/metrics/BookGridActions;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 7
    new-instance v0, Lcom/amazon/ea/metrics/BookGridActions;

    const/4 v1, 0x0

    const-string v2, "CLICK_OPEN_BOOK_DETAIL"

    const-string v3, "Click.OpenBookDetail"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/ea/metrics/BookGridActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/BookGridActions;->CLICK_OPEN_BOOK_DETAIL:Lcom/amazon/ea/metrics/BookGridActions;

    .line 8
    new-instance v0, Lcom/amazon/ea/metrics/BookGridActions;

    const/4 v2, 0x1

    const-string v3, "CLICK_CLOSE_BOOK_DETAIL"

    const-string v4, "Click.CloseBookDetail"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/ea/metrics/BookGridActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/BookGridActions;->CLICK_CLOSE_BOOK_DETAIL:Lcom/amazon/ea/metrics/BookGridActions;

    .line 9
    new-instance v0, Lcom/amazon/ea/metrics/BookGridActions;

    const/4 v3, 0x2

    const-string v4, "CLICK_SEE_MORE"

    const-string v5, "Click.SeeMore"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/ea/metrics/BookGridActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/BookGridActions;->CLICK_SEE_MORE:Lcom/amazon/ea/metrics/BookGridActions;

    .line 10
    new-instance v0, Lcom/amazon/ea/metrics/BookGridActions;

    const/4 v4, 0x3

    const-string v5, "CLICK_SEE_LESS"

    const-string v6, "Click.SeeLess"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/ea/metrics/BookGridActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/BookGridActions;->CLICK_SEE_LESS:Lcom/amazon/ea/metrics/BookGridActions;

    .line 11
    new-instance v0, Lcom/amazon/ea/metrics/BookGridActions;

    const/4 v5, 0x4

    const-string v6, "CLICK_SEE_IN_STORE"

    const-string v7, "Click.SeeInStore"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/ea/metrics/BookGridActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/BookGridActions;->CLICK_SEE_IN_STORE:Lcom/amazon/ea/metrics/BookGridActions;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/ea/metrics/BookGridActions;

    .line 6
    sget-object v7, Lcom/amazon/ea/metrics/BookGridActions;->CLICK_OPEN_BOOK_DETAIL:Lcom/amazon/ea/metrics/BookGridActions;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/ea/metrics/BookGridActions;->CLICK_CLOSE_BOOK_DETAIL:Lcom/amazon/ea/metrics/BookGridActions;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/ea/metrics/BookGridActions;->CLICK_SEE_MORE:Lcom/amazon/ea/metrics/BookGridActions;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/ea/metrics/BookGridActions;->CLICK_SEE_LESS:Lcom/amazon/ea/metrics/BookGridActions;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/ea/metrics/BookGridActions;->$VALUES:[Lcom/amazon/ea/metrics/BookGridActions;

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

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/amazon/ea/metrics/BookGridActions;->action:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ea/metrics/BookGridActions;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/ea/metrics/BookGridActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/metrics/BookGridActions;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ea/metrics/BookGridActions;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/ea/metrics/BookGridActions;->$VALUES:[Lcom/amazon/ea/metrics/BookGridActions;

    invoke-virtual {v0}, [Lcom/amazon/ea/metrics/BookGridActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ea/metrics/BookGridActions;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/ea/metrics/BookGridActions;->action:Ljava/lang/String;

    return-object v0
.end method
