.class public final enum Lcom/audible/application/stats/integration/StoreType;
.super Ljava/lang/Enum;
.source "StoreType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/application/stats/integration/StoreType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/application/stats/integration/StoreType;

.field public static final enum AMAZON_ENGLISH:Lcom/audible/application/stats/integration/StoreType;

.field public static final enum AUDIBLE:Lcom/audible/application/stats/integration/StoreType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/audible/application/stats/integration/StoreType;

    const/4 v1, 0x0

    const-string v2, "AUDIBLE"

    const-string v3, "Audible"

    invoke-direct {v0, v2, v1, v3}, Lcom/audible/application/stats/integration/StoreType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/application/stats/integration/StoreType;->AUDIBLE:Lcom/audible/application/stats/integration/StoreType;

    new-instance v0, Lcom/audible/application/stats/integration/StoreType;

    const/4 v2, 0x1

    const-string v3, "AMAZON_ENGLISH"

    const-string v4, "AmazonEnglish"

    invoke-direct {v0, v3, v2, v4}, Lcom/audible/application/stats/integration/StoreType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/application/stats/integration/StoreType;->AMAZON_ENGLISH:Lcom/audible/application/stats/integration/StoreType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/application/stats/integration/StoreType;

    .line 8
    sget-object v4, Lcom/audible/application/stats/integration/StoreType;->AUDIBLE:Lcom/audible/application/stats/integration/StoreType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/application/stats/integration/StoreType;->$VALUES:[Lcom/audible/application/stats/integration/StoreType;

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
    iput-object p3, p0, Lcom/audible/application/stats/integration/StoreType;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/audible/application/stats/integration/StoreType;
    .locals 5

    .line 32
    invoke-static {}, Lcom/audible/application/stats/integration/StoreType;->values()[Lcom/audible/application/stats/integration/StoreType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 33
    invoke-virtual {v3}, Lcom/audible/application/stats/integration/StoreType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    :cond_1
    sget-object p0, Lcom/audible/application/stats/StatsManager;->DEFAULT_STORE_TYPE:Lcom/audible/application/stats/integration/StoreType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/application/stats/integration/StoreType;
    .locals 1

    .line 8
    const-class v0, Lcom/audible/application/stats/integration/StoreType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/application/stats/integration/StoreType;

    return-object p0
.end method

.method public static values()[Lcom/audible/application/stats/integration/StoreType;
    .locals 1

    .line 8
    sget-object v0, Lcom/audible/application/stats/integration/StoreType;->$VALUES:[Lcom/audible/application/stats/integration/StoreType;

    invoke-virtual {v0}, [Lcom/audible/application/stats/integration/StoreType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/application/stats/integration/StoreType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/audible/application/stats/integration/StoreType;->value:Ljava/lang/String;

    return-object v0
.end method
