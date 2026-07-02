.class public final enum Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
.super Ljava/lang/Enum;
.source "JsonFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/JsonFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Shape"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field public static final enum ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field public static final enum ARRAY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field public static final enum BOOLEAN:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field public static final enum NUMBER:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field public static final enum NUMBER_FLOAT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field public static final enum NUMBER_INT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field public static final enum OBJECT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field public static final enum SCALAR:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field public static final enum STRING:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 139
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const/4 v1, 0x0

    const-string v2, "ANY"

    invoke-direct {v0, v2, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 145
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const/4 v2, 0x1

    const-string v3, "SCALAR"

    invoke-direct {v0, v3, v2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->SCALAR:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 150
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const/4 v3, 0x2

    const-string v4, "ARRAY"

    invoke-direct {v0, v4, v3}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ARRAY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 155
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const/4 v4, 0x3

    const-string v5, "OBJECT"

    invoke-direct {v0, v5, v4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->OBJECT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 162
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const/4 v5, 0x4

    const-string v6, "NUMBER"

    invoke-direct {v0, v6, v5}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->NUMBER:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 167
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const/4 v6, 0x5

    const-string v7, "NUMBER_FLOAT"

    invoke-direct {v0, v7, v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->NUMBER_FLOAT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 173
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const/4 v7, 0x6

    const-string v8, "NUMBER_INT"

    invoke-direct {v0, v8, v7}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->NUMBER_INT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 178
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const/4 v8, 0x7

    const-string v9, "STRING"

    invoke-direct {v0, v9, v8}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->STRING:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 184
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const/16 v9, 0x8

    const-string v10, "BOOLEAN"

    invoke-direct {v0, v10, v9}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->BOOLEAN:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 133
    sget-object v11, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    aput-object v11, v10, v1

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->SCALAR:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    aput-object v1, v10, v2

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ARRAY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    aput-object v1, v10, v3

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->OBJECT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    aput-object v1, v10, v4

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->NUMBER:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    aput-object v1, v10, v5

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->NUMBER_FLOAT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    aput-object v1, v10, v6

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->NUMBER_INT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    aput-object v1, v10, v7

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->STRING:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->$VALUES:[Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .locals 1

    .line 133
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .locals 1

    .line 133
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->$VALUES:[Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    return-object v0
.end method


# virtual methods
.method public isNumeric()Z
    .locals 1

    .line 188
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->NUMBER:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->NUMBER_INT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->NUMBER_FLOAT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

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
