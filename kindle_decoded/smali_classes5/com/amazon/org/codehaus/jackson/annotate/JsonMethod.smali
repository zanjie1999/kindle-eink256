.class public final enum Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;
.super Ljava/lang/Enum;
.source "JsonMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

.field public static final enum ALL:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

.field public static final enum CREATOR:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

.field public static final enum FIELD:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

.field public static final enum GETTER:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

.field public static final enum IS_GETTER:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

.field public static final enum NONE:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

.field public static final enum SETTER:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 26
    new-instance v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    const/4 v1, 0x0

    const-string v2, "GETTER"

    invoke-direct {v0, v2, v1}, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->GETTER:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    .line 31
    new-instance v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    const/4 v2, 0x1

    const-string v3, "SETTER"

    invoke-direct {v0, v3, v2}, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->SETTER:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    .line 37
    new-instance v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    const/4 v3, 0x2

    const-string v4, "CREATOR"

    invoke-direct {v0, v4, v3}, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->CREATOR:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    .line 47
    new-instance v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    const/4 v4, 0x3

    const-string v5, "FIELD"

    invoke-direct {v0, v5, v4}, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->FIELD:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    .line 56
    new-instance v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    const/4 v5, 0x4

    const-string v6, "IS_GETTER"

    invoke-direct {v0, v6, v5}, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->IS_GETTER:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    .line 61
    new-instance v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    const/4 v6, 0x5

    const-string v7, "NONE"

    invoke-direct {v0, v7, v6}, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->NONE:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    .line 66
    new-instance v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    const/4 v7, 0x6

    const-string v8, "ALL"

    invoke-direct {v0, v8, v7}, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->ALL:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    .line 13
    sget-object v9, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->GETTER:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    aput-object v9, v8, v1

    sget-object v1, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->SETTER:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    aput-object v1, v8, v2

    sget-object v1, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->CREATOR:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    aput-object v1, v8, v3

    sget-object v1, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->FIELD:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    aput-object v1, v8, v4

    sget-object v1, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->IS_GETTER:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    aput-object v1, v8, v5

    sget-object v1, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->NONE:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->$VALUES:[Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    return-object p0
.end method

.method public static values()[Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->$VALUES:[Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    invoke-virtual {v0}, [Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    return-object v0
.end method


# virtual methods
.method public creatorEnabled()Z
    .locals 1

    .line 72
    sget-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->CREATOR:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->ALL:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public fieldEnabled()Z
    .locals 1

    .line 88
    sget-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->FIELD:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->ALL:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getterEnabled()Z
    .locals 1

    .line 76
    sget-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->GETTER:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->ALL:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isGetterEnabled()Z
    .locals 1

    .line 80
    sget-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->IS_GETTER:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->ALL:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setterEnabled()Z
    .locals 1

    .line 84
    sget-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->SETTER:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->ALL:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
