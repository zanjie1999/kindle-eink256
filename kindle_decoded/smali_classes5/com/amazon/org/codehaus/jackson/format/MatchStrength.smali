.class public final enum Lcom/amazon/org/codehaus/jackson/format/MatchStrength;
.super Ljava/lang/Enum;
.source "MatchStrength.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/org/codehaus/jackson/format/MatchStrength;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

.field public static final enum FULL_MATCH:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

.field public static final enum INCONCLUSIVE:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

.field public static final enum NO_MATCH:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

.field public static final enum SOLID_MATCH:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

.field public static final enum WEAK_MATCH:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 17
    new-instance v0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    const/4 v1, 0x0

    const-string v2, "NO_MATCH"

    invoke-direct {v0, v2, v1}, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    .line 27
    new-instance v0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    const/4 v2, 0x1

    const-string v3, "INCONCLUSIVE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    .line 39
    new-instance v0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    const/4 v3, 0x2

    const-string v4, "WEAK_MATCH"

    invoke-direct {v0, v4, v3}, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->WEAK_MATCH:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    .line 50
    new-instance v0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    const/4 v4, 0x3

    const-string v5, "SOLID_MATCH"

    invoke-direct {v0, v5, v4}, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->SOLID_MATCH:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    .line 62
    new-instance v0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    const/4 v5, 0x4

    const-string v6, "FULL_MATCH"

    invoke-direct {v0, v6, v5}, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->FULL_MATCH:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    .line 12
    sget-object v7, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->WEAK_MATCH:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->SOLID_MATCH:Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->$VALUES:[Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/format/MatchStrength;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    return-object p0
.end method

.method public static values()[Lcom/amazon/org/codehaus/jackson/format/MatchStrength;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->$VALUES:[Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    invoke-virtual {v0}, [Lcom/amazon/org/codehaus/jackson/format/MatchStrength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/org/codehaus/jackson/format/MatchStrength;

    return-object v0
.end method
