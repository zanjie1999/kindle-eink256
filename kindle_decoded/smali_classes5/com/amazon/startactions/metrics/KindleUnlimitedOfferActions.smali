.class public final enum Lcom/amazon/startactions/metrics/KindleUnlimitedOfferActions;
.super Ljava/lang/Enum;
.source "KindleUnlimitedOfferActions.java"

# interfaces
.implements Lcom/amazon/ea/metrics/WidgetActions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/startactions/metrics/KindleUnlimitedOfferActions;",
        ">;",
        "Lcom/amazon/ea/metrics/WidgetActions;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/startactions/metrics/KindleUnlimitedOfferActions;

.field public static final enum CLICK_LEARN_MORE:Lcom/amazon/startactions/metrics/KindleUnlimitedOfferActions;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lcom/amazon/startactions/metrics/KindleUnlimitedOfferActions;

    const/4 v1, 0x0

    const-string v2, "CLICK_LEARN_MORE"

    const-string v3, "Click.LearnMore"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/startactions/metrics/KindleUnlimitedOfferActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/metrics/KindleUnlimitedOfferActions;->CLICK_LEARN_MORE:Lcom/amazon/startactions/metrics/KindleUnlimitedOfferActions;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/startactions/metrics/KindleUnlimitedOfferActions;

    aput-object v0, v2, v1

    .line 8
    sput-object v2, Lcom/amazon/startactions/metrics/KindleUnlimitedOfferActions;->$VALUES:[Lcom/amazon/startactions/metrics/KindleUnlimitedOfferActions;

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

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/amazon/startactions/metrics/KindleUnlimitedOfferActions;->action:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/startactions/metrics/KindleUnlimitedOfferActions;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/startactions/metrics/KindleUnlimitedOfferActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/startactions/metrics/KindleUnlimitedOfferActions;

    return-object p0
.end method

.method public static values()[Lcom/amazon/startactions/metrics/KindleUnlimitedOfferActions;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/startactions/metrics/KindleUnlimitedOfferActions;->$VALUES:[Lcom/amazon/startactions/metrics/KindleUnlimitedOfferActions;

    invoke-virtual {v0}, [Lcom/amazon/startactions/metrics/KindleUnlimitedOfferActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/startactions/metrics/KindleUnlimitedOfferActions;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/startactions/metrics/KindleUnlimitedOfferActions;->action:Ljava/lang/String;

    return-object v0
.end method
