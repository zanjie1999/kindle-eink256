.class public final enum Lcom/amazon/ku/data/KuBannerAsset;
.super Ljava/lang/Enum;
.source "KuBannerAsset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ku/data/KuBannerAsset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ku/data/KuBannerAsset;

.field public static final enum BUTTON_TEXT:Lcom/amazon/ku/data/KuBannerAsset;

.field public static final enum TITLE_TEXT:Lcom/amazon/ku/data/KuBannerAsset;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/amazon/ku/data/KuBannerAsset;

    const/4 v1, 0x0

    const-string v2, "TITLE_TEXT"

    const-string/jumbo v3, "titleText"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/ku/data/KuBannerAsset;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ku/data/KuBannerAsset;->TITLE_TEXT:Lcom/amazon/ku/data/KuBannerAsset;

    .line 9
    new-instance v0, Lcom/amazon/ku/data/KuBannerAsset;

    const/4 v2, 0x1

    const-string v3, "BUTTON_TEXT"

    const-string v4, "buttonText"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/ku/data/KuBannerAsset;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ku/data/KuBannerAsset;->BUTTON_TEXT:Lcom/amazon/ku/data/KuBannerAsset;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/ku/data/KuBannerAsset;

    .line 7
    sget-object v4, Lcom/amazon/ku/data/KuBannerAsset;->TITLE_TEXT:Lcom/amazon/ku/data/KuBannerAsset;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/ku/data/KuBannerAsset;->$VALUES:[Lcom/amazon/ku/data/KuBannerAsset;

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

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/amazon/ku/data/KuBannerAsset;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ku/data/KuBannerAsset;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/ku/data/KuBannerAsset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ku/data/KuBannerAsset;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ku/data/KuBannerAsset;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/ku/data/KuBannerAsset;->$VALUES:[Lcom/amazon/ku/data/KuBannerAsset;

    invoke-virtual {v0}, [Lcom/amazon/ku/data/KuBannerAsset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ku/data/KuBannerAsset;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/ku/data/KuBannerAsset;->key:Ljava/lang/String;

    return-object v0
.end method
