.class public final enum Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;
.super Ljava/lang/Enum;
.source "JsonTypeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "As"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

.field public static final enum EXTERNAL_PROPERTY:Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

.field public static final enum PROPERTY:Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

.field public static final enum WRAPPER_ARRAY:Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

.field public static final enum WRAPPER_OBJECT:Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 135
    new-instance v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    const/4 v1, 0x0

    const-string v2, "PROPERTY"

    invoke-direct {v0, v2, v1}, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;->PROPERTY:Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    .line 148
    new-instance v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    const/4 v2, 0x1

    const-string v3, "WRAPPER_OBJECT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;->WRAPPER_OBJECT:Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    .line 157
    new-instance v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    const/4 v3, 0x2

    const-string v4, "WRAPPER_ARRAY"

    invoke-direct {v0, v4, v3}, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;->WRAPPER_ARRAY:Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    .line 169
    new-instance v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    const/4 v4, 0x3

    const-string v5, "EXTERNAL_PROPERTY"

    invoke-direct {v0, v5, v4}, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    .line 128
    sget-object v6, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;->PROPERTY:Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;->WRAPPER_OBJECT:Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;->WRAPPER_ARRAY:Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;->$VALUES:[Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;
    .locals 1

    .line 128
    const-class v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    return-object p0
.end method

.method public static values()[Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;
    .locals 1

    .line 128
    sget-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;->$VALUES:[Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    invoke-virtual {v0}, [Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    return-object v0
.end method
