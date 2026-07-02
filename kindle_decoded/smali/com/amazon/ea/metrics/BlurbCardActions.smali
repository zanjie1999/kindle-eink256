.class public final enum Lcom/amazon/ea/metrics/BlurbCardActions;
.super Ljava/lang/Enum;
.source "BlurbCardActions.java"

# interfaces
.implements Lcom/amazon/ea/metrics/WidgetActions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ea/metrics/BlurbCardActions;",
        ">;",
        "Lcom/amazon/ea/metrics/WidgetActions;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ea/metrics/BlurbCardActions;

.field public static final enum CLICK_BLURB_CARD:Lcom/amazon/ea/metrics/BlurbCardActions;

.field public static final enum CLICK_LEARN_MORE:Lcom/amazon/ea/metrics/BlurbCardActions;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/amazon/ea/metrics/BlurbCardActions;

    const/4 v1, 0x0

    const-string v2, "CLICK_LEARN_MORE"

    const-string v3, "Click.LearnMore"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/ea/metrics/BlurbCardActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/BlurbCardActions;->CLICK_LEARN_MORE:Lcom/amazon/ea/metrics/BlurbCardActions;

    .line 8
    new-instance v0, Lcom/amazon/ea/metrics/BlurbCardActions;

    const/4 v2, 0x1

    const-string v3, "CLICK_BLURB_CARD"

    const-string v4, "Click.BlurbCard"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/ea/metrics/BlurbCardActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/BlurbCardActions;->CLICK_BLURB_CARD:Lcom/amazon/ea/metrics/BlurbCardActions;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/ea/metrics/BlurbCardActions;

    .line 6
    sget-object v4, Lcom/amazon/ea/metrics/BlurbCardActions;->CLICK_LEARN_MORE:Lcom/amazon/ea/metrics/BlurbCardActions;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/ea/metrics/BlurbCardActions;->$VALUES:[Lcom/amazon/ea/metrics/BlurbCardActions;

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

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/amazon/ea/metrics/BlurbCardActions;->action:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ea/metrics/BlurbCardActions;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/ea/metrics/BlurbCardActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/metrics/BlurbCardActions;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ea/metrics/BlurbCardActions;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/ea/metrics/BlurbCardActions;->$VALUES:[Lcom/amazon/ea/metrics/BlurbCardActions;

    invoke-virtual {v0}, [Lcom/amazon/ea/metrics/BlurbCardActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ea/metrics/BlurbCardActions;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/ea/metrics/BlurbCardActions;->action:Ljava/lang/String;

    return-object v0
.end method
