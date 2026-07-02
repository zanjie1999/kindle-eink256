.class public final enum Lcom/amazon/bookwizard/service/StepFlavor;
.super Ljava/lang/Enum;
.source "StepFlavor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/bookwizard/service/StepFlavor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/bookwizard/service/StepFlavor;

.field public static final enum DEFAULT:Lcom/amazon/bookwizard/service/StepFlavor;

.field public static final enum KU:Lcom/amazon/bookwizard/service/StepFlavor;

.field public static final enum KU_30_DAY:Lcom/amazon/bookwizard/service/StepFlavor;

.field public static final enum KU_7_DAY:Lcom/amazon/bookwizard/service/StepFlavor;

.field public static final enum PRIME:Lcom/amazon/bookwizard/service/StepFlavor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 16
    new-instance v0, Lcom/amazon/bookwizard/service/StepFlavor;

    const/4 v1, 0x0

    const-string v2, "KU"

    invoke-direct {v0, v2, v1}, Lcom/amazon/bookwizard/service/StepFlavor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/bookwizard/service/StepFlavor;->KU:Lcom/amazon/bookwizard/service/StepFlavor;

    .line 17
    new-instance v0, Lcom/amazon/bookwizard/service/StepFlavor;

    const/4 v2, 0x1

    const-string v3, "KU_7_DAY"

    invoke-direct {v0, v3, v2}, Lcom/amazon/bookwizard/service/StepFlavor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/bookwizard/service/StepFlavor;->KU_7_DAY:Lcom/amazon/bookwizard/service/StepFlavor;

    .line 18
    new-instance v0, Lcom/amazon/bookwizard/service/StepFlavor;

    const/4 v3, 0x2

    const-string v4, "KU_30_DAY"

    invoke-direct {v0, v4, v3}, Lcom/amazon/bookwizard/service/StepFlavor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/bookwizard/service/StepFlavor;->KU_30_DAY:Lcom/amazon/bookwizard/service/StepFlavor;

    .line 19
    new-instance v0, Lcom/amazon/bookwizard/service/StepFlavor;

    const/4 v4, 0x3

    const-string v5, "PRIME"

    invoke-direct {v0, v5, v4}, Lcom/amazon/bookwizard/service/StepFlavor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/bookwizard/service/StepFlavor;->PRIME:Lcom/amazon/bookwizard/service/StepFlavor;

    .line 20
    new-instance v0, Lcom/amazon/bookwizard/service/StepFlavor;

    const/4 v5, 0x4

    const-string v6, "DEFAULT"

    invoke-direct {v0, v6, v5}, Lcom/amazon/bookwizard/service/StepFlavor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/bookwizard/service/StepFlavor;->DEFAULT:Lcom/amazon/bookwizard/service/StepFlavor;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/bookwizard/service/StepFlavor;

    .line 15
    sget-object v7, Lcom/amazon/bookwizard/service/StepFlavor;->KU:Lcom/amazon/bookwizard/service/StepFlavor;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/bookwizard/service/StepFlavor;->KU_7_DAY:Lcom/amazon/bookwizard/service/StepFlavor;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/bookwizard/service/StepFlavor;->KU_30_DAY:Lcom/amazon/bookwizard/service/StepFlavor;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/bookwizard/service/StepFlavor;->PRIME:Lcom/amazon/bookwizard/service/StepFlavor;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/bookwizard/service/StepFlavor;->$VALUES:[Lcom/amazon/bookwizard/service/StepFlavor;

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

.method public static from(Ljava/lang/String;)Lcom/amazon/bookwizard/service/StepFlavor;
    .locals 1

    const-string v0, "KU"

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    sget-object p0, Lcom/amazon/bookwizard/service/StepFlavor;->KU:Lcom/amazon/bookwizard/service/StepFlavor;

    return-object p0

    :cond_0
    const-string v0, "KU_7_DAY"

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    sget-object p0, Lcom/amazon/bookwizard/service/StepFlavor;->KU_7_DAY:Lcom/amazon/bookwizard/service/StepFlavor;

    return-object p0

    :cond_1
    const-string v0, "KU_30_DAY"

    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    sget-object p0, Lcom/amazon/bookwizard/service/StepFlavor;->KU_30_DAY:Lcom/amazon/bookwizard/service/StepFlavor;

    return-object p0

    :cond_2
    const-string v0, "PRIME"

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 41
    sget-object p0, Lcom/amazon/bookwizard/service/StepFlavor;->PRIME:Lcom/amazon/bookwizard/service/StepFlavor;

    return-object p0

    .line 43
    :cond_3
    sget-object p0, Lcom/amazon/bookwizard/service/StepFlavor;->DEFAULT:Lcom/amazon/bookwizard/service/StepFlavor;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/bookwizard/service/StepFlavor;
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/bookwizard/service/StepFlavor;

    return-object p0
.end method

.method public static values()[Lcom/amazon/bookwizard/service/StepFlavor;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/bookwizard/service/StepFlavor;->$VALUES:[Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-virtual {v0}, [Lcom/amazon/bookwizard/service/StepFlavor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/bookwizard/service/StepFlavor;

    return-object v0
.end method
