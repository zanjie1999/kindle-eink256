.class public final enum Lcom/amazon/nwstd/resources/PeriodicalsOriginType;
.super Ljava/lang/Enum;
.source "PeriodicalsOriginType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/resources/PeriodicalsOriginType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

.field public static final enum CONTENT_EXPLORER:Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

.field public static final enum DIGITAL_SUBSCRIPTION:Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

.field public static final enum KINDLE_UNLIMITED:Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

.field public static final enum PRIME:Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

.field public static final enum UNDEFINED_PERIODICALTYPE:Lcom/amazon/nwstd/resources/PeriodicalsOriginType;


# instance fields
.field private mOriginType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 8
    new-instance v0, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

    const/4 v1, 0x0

    const-string v2, "KINDLE_UNLIMITED"

    const-string v3, "Kindle Unlimited"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;->KINDLE_UNLIMITED:Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

    .line 9
    new-instance v0, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

    const/4 v2, 0x1

    const-string v3, "CONTENT_EXPLORER"

    const-string v4, "Content Explorer"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;->CONTENT_EXPLORER:Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

    .line 10
    new-instance v0, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

    const/4 v3, 0x2

    const-string v4, "PRIME"

    const-string v5, "Prime"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;->PRIME:Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

    .line 11
    new-instance v0, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

    const/4 v4, 0x3

    const-string v5, "DIGITAL_SUBSCRIPTION"

    const-string v6, "Digital Subscription"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;->DIGITAL_SUBSCRIPTION:Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

    .line 12
    new-instance v0, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

    const/4 v5, 0x4

    const-string v6, "UNDEFINED_PERIODICALTYPE"

    const-string v7, "Undefined PeriodicalType"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;->UNDEFINED_PERIODICALTYPE:Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

    .line 7
    sget-object v7, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;->KINDLE_UNLIMITED:Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;->CONTENT_EXPLORER:Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;->PRIME:Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;->DIGITAL_SUBSCRIPTION:Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;->$VALUES:[Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

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

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;->mOriginType:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;->mOriginType:Ljava/lang/String;

    return-void
.end method

.method private getOriginType()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;->mOriginType:Ljava/lang/String;

    return-object v0
.end method

.method public static value(Ljava/lang/String;)Lcom/amazon/nwstd/resources/PeriodicalsOriginType;
    .locals 5

    .line 35
    invoke-static {}, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;->values()[Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 36
    invoke-direct {v3}, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;->getOriginType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/resources/PeriodicalsOriginType;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/resources/PeriodicalsOriginType;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;->$VALUES:[Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/resources/PeriodicalsOriginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

    return-object v0
.end method
