.class public final enum Lcom/amazon/startactions/plugin/StartActionsState;
.super Ljava/lang/Enum;
.source "StartActionsState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/startactions/plugin/StartActionsState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/startactions/plugin/StartActionsState;

.field public static final enum HIDDEN:Lcom/amazon/startactions/plugin/StartActionsState;

.field public static final enum OFF:Lcom/amazon/startactions/plugin/StartActionsState;

.field public static final enum ON:Lcom/amazon/startactions/plugin/StartActionsState;

.field public static final enum SUPPRESSED:Lcom/amazon/startactions/plugin/StartActionsState;


# instance fields
.field private final state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 12
    new-instance v0, Lcom/amazon/startactions/plugin/StartActionsState;

    const/4 v1, 0x0

    const-string v2, "ON"

    const-string v3, "on"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/startactions/plugin/StartActionsState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/plugin/StartActionsState;->ON:Lcom/amazon/startactions/plugin/StartActionsState;

    .line 17
    new-instance v0, Lcom/amazon/startactions/plugin/StartActionsState;

    const/4 v2, 0x1

    const-string v3, "SUPPRESSED"

    const-string/jumbo v4, "suppressed"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/startactions/plugin/StartActionsState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/plugin/StartActionsState;->SUPPRESSED:Lcom/amazon/startactions/plugin/StartActionsState;

    .line 22
    new-instance v0, Lcom/amazon/startactions/plugin/StartActionsState;

    const/4 v3, 0x2

    const-string v4, "HIDDEN"

    const-string v5, "hidden"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/startactions/plugin/StartActionsState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/plugin/StartActionsState;->HIDDEN:Lcom/amazon/startactions/plugin/StartActionsState;

    .line 28
    new-instance v0, Lcom/amazon/startactions/plugin/StartActionsState;

    const/4 v4, 0x3

    const-string v5, "OFF"

    const-string v6, "off"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/startactions/plugin/StartActionsState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/plugin/StartActionsState;->OFF:Lcom/amazon/startactions/plugin/StartActionsState;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/startactions/plugin/StartActionsState;

    .line 7
    sget-object v6, Lcom/amazon/startactions/plugin/StartActionsState;->ON:Lcom/amazon/startactions/plugin/StartActionsState;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/startactions/plugin/StartActionsState;->SUPPRESSED:Lcom/amazon/startactions/plugin/StartActionsState;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/startactions/plugin/StartActionsState;->HIDDEN:Lcom/amazon/startactions/plugin/StartActionsState;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/startactions/plugin/StartActionsState;->$VALUES:[Lcom/amazon/startactions/plugin/StartActionsState;

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

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/amazon/startactions/plugin/StartActionsState;->state:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/amazon/startactions/plugin/StartActionsState;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 53
    :cond_0
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsState;->values()[Lcom/amazon/startactions/plugin/StartActionsState;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 54
    invoke-virtual {v4}, Lcom/amazon/startactions/plugin/StartActionsState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/startactions/plugin/StartActionsState;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/startactions/plugin/StartActionsState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/startactions/plugin/StartActionsState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/startactions/plugin/StartActionsState;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/startactions/plugin/StartActionsState;->$VALUES:[Lcom/amazon/startactions/plugin/StartActionsState;

    invoke-virtual {v0}, [Lcom/amazon/startactions/plugin/StartActionsState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/startactions/plugin/StartActionsState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsState;->state:Ljava/lang/String;

    return-object v0
.end method
