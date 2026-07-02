.class public final enum Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;
.super Ljava/lang/Enum;
.source "InBookChromeFastMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/metrics/InBookChromeFastMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_ABOUT_THIS_BOOK:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_BEFORE_YOU_GO:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_MENTIONED_IN_THIS_BOOK:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;


# instance fields
.field final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 41
    new-instance v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;

    const/4 v1, 0x0

    const-string v2, "OPEN_MENTIONED_IN_THIS_BOOK"

    const-string v3, "OpenMentionedInBook"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;->OPEN_MENTIONED_IN_THIS_BOOK:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;

    .line 42
    new-instance v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;

    const/4 v2, 0x1

    const-string v3, "OPEN_ABOUT_THIS_BOOK"

    const-string v4, "OpenAboutThisBook"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;->OPEN_ABOUT_THIS_BOOK:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;

    .line 43
    new-instance v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;

    const/4 v3, 0x2

    const-string v4, "OPEN_BEFORE_YOU_GO"

    const-string v5, "OpenBeforeYouGo"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;->OPEN_BEFORE_YOU_GO:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;

    .line 40
    sget-object v5, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;->OPEN_MENTIONED_IN_THIS_BOOK:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;->OPEN_ABOUT_THIS_BOOK:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;->$VALUES:[Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;

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

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;
    .locals 1

    .line 40
    const-class v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;
    .locals 1

    .line 40
    sget-object v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;->$VALUES:[Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;

    invoke-virtual {v0}, [Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;

    return-object v0
.end method
