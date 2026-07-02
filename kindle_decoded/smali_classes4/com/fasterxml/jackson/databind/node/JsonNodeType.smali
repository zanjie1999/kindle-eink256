.class public final enum Lcom/fasterxml/jackson/databind/node/JsonNodeType;
.super Ljava/lang/Enum;
.source "JsonNodeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/databind/node/JsonNodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/node/JsonNodeType;

.field public static final enum ARRAY:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

.field public static final enum BINARY:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

.field public static final enum BOOLEAN:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

.field public static final enum MISSING:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

.field public static final enum NULL:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

.field public static final enum NUMBER:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

.field public static final enum OBJECT:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

.field public static final enum POJO:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

.field public static final enum STRING:Lcom/fasterxml/jackson/databind/node/JsonNodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 19
    new-instance v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    const/4 v1, 0x0

    const-string v2, "ARRAY"

    invoke-direct {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->ARRAY:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    .line 20
    new-instance v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    const/4 v2, 0x1

    const-string v3, "BINARY"

    invoke-direct {v0, v3, v2}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->BINARY:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    .line 21
    new-instance v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    const/4 v3, 0x2

    const-string v4, "BOOLEAN"

    invoke-direct {v0, v4, v3}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->BOOLEAN:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    .line 22
    new-instance v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    const/4 v4, 0x3

    const-string v5, "MISSING"

    invoke-direct {v0, v5, v4}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->MISSING:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    .line 23
    new-instance v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    const/4 v5, 0x4

    const-string v6, "NULL"

    invoke-direct {v0, v6, v5}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->NULL:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    .line 24
    new-instance v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    const/4 v6, 0x5

    const-string v7, "NUMBER"

    invoke-direct {v0, v7, v6}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->NUMBER:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    .line 25
    new-instance v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    const/4 v7, 0x6

    const-string v8, "OBJECT"

    invoke-direct {v0, v8, v7}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->OBJECT:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    .line 26
    new-instance v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    const/4 v8, 0x7

    const-string v9, "POJO"

    invoke-direct {v0, v9, v8}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->POJO:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    .line 27
    new-instance v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    const/16 v9, 0x8

    const-string v10, "STRING"

    invoke-direct {v0, v10, v9}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->STRING:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    .line 17
    sget-object v11, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->ARRAY:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    aput-object v11, v10, v1

    sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->BINARY:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    aput-object v1, v10, v2

    sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->BOOLEAN:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    aput-object v1, v10, v3

    sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->MISSING:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    aput-object v1, v10, v4

    sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->NULL:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    aput-object v1, v10, v5

    sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->NUMBER:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    aput-object v1, v10, v6

    sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->OBJECT:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    aput-object v1, v10, v7

    sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->POJO:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->$VALUES:[Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/JsonNodeType;
    .locals 1

    .line 17
    const-class v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/node/JsonNodeType;
    .locals 1

    .line 17
    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->$VALUES:[Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/node/JsonNodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    return-object v0
.end method
