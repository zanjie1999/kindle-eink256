.class final enum Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;
.super Ljava/lang/Enum;
.source "KuInterstitialPageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ku/data/KuInterstitialPageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Paths"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;

.field public static final enum KU_SIGN_UP_PATH:Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;

.field public static final enum KU_STORE_PATH:Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;

.field public static final enum RETURN_PATH:Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 56
    new-instance v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;

    const/4 v1, 0x0

    const-string v2, "KU_SIGN_UP_PATH"

    const-string v3, "kuSignUpPath"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;->KU_SIGN_UP_PATH:Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;

    .line 57
    new-instance v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;

    const/4 v2, 0x1

    const-string v3, "RETURN_PATH"

    const-string/jumbo v4, "returnPath"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;->RETURN_PATH:Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;

    .line 58
    new-instance v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;

    const/4 v3, 0x2

    const-string v4, "KU_STORE_PATH"

    const-string v5, "kuStorePath"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;->KU_STORE_PATH:Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;

    .line 55
    sget-object v5, Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;->KU_SIGN_UP_PATH:Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;->RETURN_PATH:Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;->$VALUES:[Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;

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

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput-object p3, p0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;
    .locals 1

    .line 55
    const-class v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;
    .locals 1

    .line 55
    sget-object v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;->$VALUES:[Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;

    invoke-virtual {v0}, [Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;->key:Ljava/lang/String;

    return-object v0
.end method
