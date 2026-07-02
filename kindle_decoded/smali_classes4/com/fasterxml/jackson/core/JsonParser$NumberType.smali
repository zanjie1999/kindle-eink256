.class public final enum Lcom/fasterxml/jackson/core/JsonParser$NumberType;
.super Ljava/lang/Enum;
.source "JsonParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/core/JsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NumberType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/core/JsonParser$NumberType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/core/JsonParser$NumberType;

.field public static final enum BIG_DECIMAL:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

.field public static final enum BIG_INTEGER:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

.field public static final enum DOUBLE:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

.field public static final enum FLOAT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

.field public static final enum INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

.field public static final enum LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 37
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    const/4 v1, 0x0

    const-string v2, "INT"

    invoke-direct {v0, v2, v1}, Lcom/fasterxml/jackson/core/JsonParser$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    const/4 v2, 0x1

    const-string v3, "LONG"

    invoke-direct {v0, v3, v2}, Lcom/fasterxml/jackson/core/JsonParser$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    const/4 v3, 0x2

    const-string v4, "BIG_INTEGER"

    invoke-direct {v0, v4, v3}, Lcom/fasterxml/jackson/core/JsonParser$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_INTEGER:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    const/4 v4, 0x3

    const-string v5, "FLOAT"

    invoke-direct {v0, v5, v4}, Lcom/fasterxml/jackson/core/JsonParser$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->FLOAT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    const/4 v5, 0x4

    const-string v6, "DOUBLE"

    invoke-direct {v0, v6, v5}, Lcom/fasterxml/jackson/core/JsonParser$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->DOUBLE:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    const/4 v6, 0x5

    const-string v7, "BIG_DECIMAL"

    invoke-direct {v0, v7, v6}, Lcom/fasterxml/jackson/core/JsonParser$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_DECIMAL:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    .line 36
    sget-object v8, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    aput-object v8, v7, v1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    aput-object v1, v7, v2

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_INTEGER:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    aput-object v1, v7, v3

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->FLOAT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    aput-object v1, v7, v4

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->DOUBLE:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->$VALUES:[Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 1

    .line 36
    const-class v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 1

    .line 36
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->$VALUES:[Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/JsonParser$NumberType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0
.end method
