.class public final enum Lcom/amazon/bookwizard/glide/ActionType;
.super Ljava/lang/Enum;
.source "ActionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/bookwizard/glide/ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/bookwizard/glide/ActionType;

.field public static final enum KU:Lcom/amazon/bookwizard/glide/ActionType;

.field public static final enum PRIME:Lcom/amazon/bookwizard/glide/ActionType;


# instance fields
.field private channel:Ljava/lang/String;

.field private program:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 19
    new-instance v6, Lcom/amazon/bookwizard/glide/ActionType;

    const-string v1, "KU"

    const/4 v2, 0x0

    const-string v3, "Borrow"

    const-string v4, "KINDLE_UNLIMITED"

    const-string v5, "ALL_YOU_CAN_READ"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/bookwizard/glide/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/amazon/bookwizard/glide/ActionType;->KU:Lcom/amazon/bookwizard/glide/ActionType;

    .line 20
    new-instance v0, Lcom/amazon/bookwizard/glide/ActionType;

    const-string v8, "PRIME"

    const/4 v9, 0x1

    const-string v10, "Borrow"

    const-string v11, "PRIME"

    const-string v12, "PRIME_READING"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/bookwizard/glide/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/bookwizard/glide/ActionType;->PRIME:Lcom/amazon/bookwizard/glide/ActionType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/amazon/bookwizard/glide/ActionType;

    .line 18
    sget-object v2, Lcom/amazon/bookwizard/glide/ActionType;->KU:Lcom/amazon/bookwizard/glide/ActionType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/bookwizard/glide/ActionType;->$VALUES:[Lcom/amazon/bookwizard/glide/ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lcom/amazon/bookwizard/glide/ActionType;->type:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/amazon/bookwizard/glide/ActionType;->program:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lcom/amazon/bookwizard/glide/ActionType;->channel:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/bookwizard/glide/ActionType;
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/bookwizard/glide/ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/bookwizard/glide/ActionType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/bookwizard/glide/ActionType;
    .locals 1

    .line 18
    sget-object v0, Lcom/amazon/bookwizard/glide/ActionType;->$VALUES:[Lcom/amazon/bookwizard/glide/ActionType;

    invoke-virtual {v0}, [Lcom/amazon/bookwizard/glide/ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/bookwizard/glide/ActionType;

    return-object v0
.end method


# virtual methods
.method public matches(Lcom/amazon/bookwizard/bifrost/PersonalizedAction;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p1}, Lcom/amazon/bookwizard/bifrost/PersonalizedAction;->getProgram()Lcom/amazon/bookwizard/bifrost/PersonalizedAction$Program;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/bookwizard/glide/ActionType;->type:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Lcom/amazon/bookwizard/bifrost/PersonalizedAction;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/bookwizard/bifrost/PersonalizedAction;->getProgram()Lcom/amazon/bookwizard/bifrost/PersonalizedAction$Program;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/bookwizard/bifrost/PersonalizedAction$Program;->getProgramCode()Ljava/lang/String;

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method matches(Lcom/amazon/bookwizard/glide/Action;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p1, Lcom/amazon/bookwizard/glide/Action;->program:Lcom/amazon/bookwizard/glide/Action$Program;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/bookwizard/glide/ActionType;->type:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/bookwizard/glide/Action;->type:Ljava/lang/String;

    .line 82
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/bookwizard/glide/ActionType;->program:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/bookwizard/glide/Action;->program:Lcom/amazon/bookwizard/glide/Action$Program;

    iget-object v1, v1, Lcom/amazon/bookwizard/glide/Action$Program;->programCode:Ljava/lang/String;

    .line 83
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/bookwizard/glide/ActionType;->channel:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/bookwizard/glide/Action;->program:Lcom/amazon/bookwizard/glide/Action$Program;

    iget-object p1, p1, Lcom/amazon/bookwizard/glide/Action$Program;->channelCode:Ljava/lang/String;

    .line 84
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
