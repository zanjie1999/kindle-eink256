.class public final enum Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;
.super Ljava/lang/Enum;
.source "ObjectMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DefaultTyping"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

.field public static final enum JAVA_LANG_OBJECT:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

.field public static final enum NON_CONCRETE_AND_ARRAYS:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

.field public static final enum NON_FINAL:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

.field public static final enum OBJECT_AND_NON_CONCRETE:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 83
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

    const/4 v1, 0x0

    const-string v2, "JAVA_LANG_OBJECT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;->JAVA_LANG_OBJECT:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

    .line 91
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

    const/4 v2, 0x1

    const-string v3, "OBJECT_AND_NON_CONCRETE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;->OBJECT_AND_NON_CONCRETE:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

    .line 98
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

    const/4 v3, 0x2

    const-string v4, "NON_CONCRETE_AND_ARRAYS"

    invoke-direct {v0, v4, v3}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;->NON_CONCRETE_AND_ARRAYS:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

    .line 107
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

    const/4 v4, 0x3

    const-string v5, "NON_FINAL"

    invoke-direct {v0, v5, v4}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;->NON_FINAL:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

    .line 76
    sget-object v6, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;->JAVA_LANG_OBJECT:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;->OBJECT_AND_NON_CONCRETE:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;->NON_CONCRETE_AND_ARRAYS:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;->$VALUES:[Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;
    .locals 1

    .line 76
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

    return-object p0
.end method

.method public static values()[Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;
    .locals 1

    .line 76
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;->$VALUES:[Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

    invoke-virtual {v0}, [Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

    return-object v0
.end method
