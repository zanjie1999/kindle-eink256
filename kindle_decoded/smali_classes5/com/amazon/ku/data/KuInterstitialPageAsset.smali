.class public final enum Lcom/amazon/ku/data/KuInterstitialPageAsset;
.super Ljava/lang/Enum;
.source "KuInterstitialPageAsset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ku/data/KuInterstitialPageAsset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ku/data/KuInterstitialPageAsset;

.field public static final enum BODY:Lcom/amazon/ku/data/KuInterstitialPageAsset;

.field public static final enum HEADER:Lcom/amazon/ku/data/KuInterstitialPageAsset;

.field public static final enum LEGAL:Lcom/amazon/ku/data/KuInterstitialPageAsset;

.field public static final enum NO_BUTTON:Lcom/amazon/ku/data/KuInterstitialPageAsset;

.field public static final enum YES_BUTTON:Lcom/amazon/ku/data/KuInterstitialPageAsset;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 8
    new-instance v0, Lcom/amazon/ku/data/KuInterstitialPageAsset;

    const/4 v1, 0x0

    const-string v2, "HEADER"

    const-string v3, "header"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/ku/data/KuInterstitialPageAsset;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ku/data/KuInterstitialPageAsset;->HEADER:Lcom/amazon/ku/data/KuInterstitialPageAsset;

    .line 9
    new-instance v0, Lcom/amazon/ku/data/KuInterstitialPageAsset;

    const/4 v2, 0x1

    const-string v3, "BODY"

    const-string v4, "body"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/ku/data/KuInterstitialPageAsset;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ku/data/KuInterstitialPageAsset;->BODY:Lcom/amazon/ku/data/KuInterstitialPageAsset;

    .line 10
    new-instance v0, Lcom/amazon/ku/data/KuInterstitialPageAsset;

    const/4 v3, 0x2

    const-string v4, "YES_BUTTON"

    const-string/jumbo v5, "yesButton"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/ku/data/KuInterstitialPageAsset;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ku/data/KuInterstitialPageAsset;->YES_BUTTON:Lcom/amazon/ku/data/KuInterstitialPageAsset;

    .line 11
    new-instance v0, Lcom/amazon/ku/data/KuInterstitialPageAsset;

    const/4 v4, 0x3

    const-string v5, "NO_BUTTON"

    const-string v6, "noButton"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/ku/data/KuInterstitialPageAsset;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ku/data/KuInterstitialPageAsset;->NO_BUTTON:Lcom/amazon/ku/data/KuInterstitialPageAsset;

    .line 12
    new-instance v0, Lcom/amazon/ku/data/KuInterstitialPageAsset;

    const/4 v5, 0x4

    const-string v6, "LEGAL"

    const-string v7, "legal"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/ku/data/KuInterstitialPageAsset;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ku/data/KuInterstitialPageAsset;->LEGAL:Lcom/amazon/ku/data/KuInterstitialPageAsset;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/ku/data/KuInterstitialPageAsset;

    .line 7
    sget-object v7, Lcom/amazon/ku/data/KuInterstitialPageAsset;->HEADER:Lcom/amazon/ku/data/KuInterstitialPageAsset;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/ku/data/KuInterstitialPageAsset;->BODY:Lcom/amazon/ku/data/KuInterstitialPageAsset;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/ku/data/KuInterstitialPageAsset;->YES_BUTTON:Lcom/amazon/ku/data/KuInterstitialPageAsset;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/ku/data/KuInterstitialPageAsset;->NO_BUTTON:Lcom/amazon/ku/data/KuInterstitialPageAsset;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/ku/data/KuInterstitialPageAsset;->$VALUES:[Lcom/amazon/ku/data/KuInterstitialPageAsset;

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

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/amazon/ku/data/KuInterstitialPageAsset;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ku/data/KuInterstitialPageAsset;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/ku/data/KuInterstitialPageAsset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ku/data/KuInterstitialPageAsset;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ku/data/KuInterstitialPageAsset;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/ku/data/KuInterstitialPageAsset;->$VALUES:[Lcom/amazon/ku/data/KuInterstitialPageAsset;

    invoke-virtual {v0}, [Lcom/amazon/ku/data/KuInterstitialPageAsset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ku/data/KuInterstitialPageAsset;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/ku/data/KuInterstitialPageAsset;->key:Ljava/lang/String;

    return-object v0
.end method
