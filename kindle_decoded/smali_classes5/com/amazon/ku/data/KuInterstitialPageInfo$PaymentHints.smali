.class final enum Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;
.super Ljava/lang/Enum;
.source "KuInterstitialPageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ku/data/KuInterstitialPageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PaymentHints"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;

.field public static final enum RETURNED_STATE_NAME:Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;

.field public static final enum SUCCESS_STATE:Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 41
    new-instance v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;

    const/4 v1, 0x0

    const-string v2, "RETURNED_STATE_NAME"

    const-string/jumbo v3, "returnedStateName"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;->RETURNED_STATE_NAME:Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;

    .line 42
    new-instance v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;

    const/4 v2, 0x1

    const-string v3, "SUCCESS_STATE"

    const-string/jumbo v4, "successState"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;->SUCCESS_STATE:Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;

    .line 40
    sget-object v4, Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;->RETURNED_STATE_NAME:Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;->$VALUES:[Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;

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
    iput-object p3, p0, Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;
    .locals 1

    .line 40
    const-class v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;
    .locals 1

    .line 40
    sget-object v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;->$VALUES:[Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;

    invoke-virtual {v0}, [Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;->key:Ljava/lang/String;

    return-object v0
.end method
