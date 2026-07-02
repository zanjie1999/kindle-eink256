.class public final enum Lcom/amazon/bookwizard/service/StepType;
.super Ljava/lang/Enum;
.source "StepType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/bookwizard/service/StepType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/bookwizard/service/StepType;

.field public static final enum DECISION:Lcom/amazon/bookwizard/service/StepType;

.field public static final enum UNKNOWN:Lcom/amazon/bookwizard/service/StepType;

.field public static final enum VIEW:Lcom/amazon/bookwizard/service/StepType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 16
    new-instance v0, Lcom/amazon/bookwizard/service/StepType;

    const/4 v1, 0x0

    const-string v2, "VIEW"

    invoke-direct {v0, v2, v1}, Lcom/amazon/bookwizard/service/StepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/bookwizard/service/StepType;->VIEW:Lcom/amazon/bookwizard/service/StepType;

    .line 17
    new-instance v0, Lcom/amazon/bookwizard/service/StepType;

    const/4 v2, 0x1

    const-string v3, "DECISION"

    invoke-direct {v0, v3, v2}, Lcom/amazon/bookwizard/service/StepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/bookwizard/service/StepType;->DECISION:Lcom/amazon/bookwizard/service/StepType;

    .line 18
    new-instance v0, Lcom/amazon/bookwizard/service/StepType;

    const/4 v3, 0x2

    const-string v4, "UNKNOWN"

    invoke-direct {v0, v4, v3}, Lcom/amazon/bookwizard/service/StepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/bookwizard/service/StepType;->UNKNOWN:Lcom/amazon/bookwizard/service/StepType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/bookwizard/service/StepType;

    .line 15
    sget-object v5, Lcom/amazon/bookwizard/service/StepType;->VIEW:Lcom/amazon/bookwizard/service/StepType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/bookwizard/service/StepType;->DECISION:Lcom/amazon/bookwizard/service/StepType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/bookwizard/service/StepType;->$VALUES:[Lcom/amazon/bookwizard/service/StepType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/amazon/bookwizard/service/StepType;
    .locals 1

    const-string v0, "VIEW"

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    sget-object p0, Lcom/amazon/bookwizard/service/StepType;->VIEW:Lcom/amazon/bookwizard/service/StepType;

    return-object p0

    :cond_0
    const-string v0, "DECISION"

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 33
    sget-object p0, Lcom/amazon/bookwizard/service/StepType;->DECISION:Lcom/amazon/bookwizard/service/StepType;

    return-object p0

    .line 35
    :cond_1
    sget-object p0, Lcom/amazon/bookwizard/service/StepType;->UNKNOWN:Lcom/amazon/bookwizard/service/StepType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/bookwizard/service/StepType;
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/bookwizard/service/StepType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/bookwizard/service/StepType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/bookwizard/service/StepType;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/bookwizard/service/StepType;->$VALUES:[Lcom/amazon/bookwizard/service/StepType;

    invoke-virtual {v0}, [Lcom/amazon/bookwizard/service/StepType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/bookwizard/service/StepType;

    return-object v0
.end method
