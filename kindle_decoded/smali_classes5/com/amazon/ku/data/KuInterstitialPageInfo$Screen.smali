.class public final enum Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;
.super Ljava/lang/Enum;
.source "KuInterstitialPageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ku/data/KuInterstitialPageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Screen"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

.field public static final enum CONFIRMATION_SCREEN:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

.field public static final enum ERROR_SCREEN:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

.field public static final enum INTERSTITIAL_SCREEN:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 25
    new-instance v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    const/4 v1, 0x0

    const-string v2, "INTERSTITIAL_SCREEN"

    const-string v3, "interstitialScreen"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;->INTERSTITIAL_SCREEN:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    .line 26
    new-instance v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    const/4 v2, 0x1

    const-string v3, "CONFIRMATION_SCREEN"

    const-string v4, "confirmationScreen"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;->CONFIRMATION_SCREEN:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    .line 27
    new-instance v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    const/4 v3, 0x2

    const-string v4, "ERROR_SCREEN"

    const-string v5, "errorScreen"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;->ERROR_SCREEN:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    .line 24
    sget-object v5, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;->INTERSTITIAL_SCREEN:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;->CONFIRMATION_SCREEN:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;->$VALUES:[Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

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

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;->$VALUES:[Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    invoke-virtual {v0}, [Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;->key:Ljava/lang/String;

    return-object v0
.end method
