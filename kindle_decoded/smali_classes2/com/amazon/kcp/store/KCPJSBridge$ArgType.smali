.class final enum Lcom/amazon/kcp/store/KCPJSBridge$ArgType;
.super Ljava/lang/Enum;
.source "KCPJSBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/KCPJSBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ArgType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/store/KCPJSBridge$ArgType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

.field public static final enum BOOLEAN:Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

.field public static final enum CALLBACK:Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

.field public static final enum INT:Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

.field public static final enum NULL:Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

.field public static final enum OBJECT:Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

.field public static final enum STRING:Lcom/amazon/kcp/store/KCPJSBridge$ArgType;


# instance fields
.field private argName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 66
    new-instance v0, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    const/4 v1, 0x0

    const-string v2, "NULL"

    const-string v3, "null"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;->NULL:Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    .line 67
    new-instance v0, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    const/4 v2, 0x1

    const-string v3, "STRING"

    const-string v4, "string"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;->STRING:Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    .line 68
    new-instance v0, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    const/4 v3, 0x2

    const-string v4, "BOOLEAN"

    const-string v5, "boolean"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;->BOOLEAN:Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    .line 69
    new-instance v0, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    const/4 v4, 0x3

    const-string v5, "INT"

    const-string v6, "int"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;->INT:Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    .line 70
    new-instance v0, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    const/4 v5, 0x4

    const-string v6, "CALLBACK"

    const-string v7, "callback"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;->CALLBACK:Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    .line 71
    new-instance v0, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    const/4 v6, 0x5

    const-string v7, "OBJECT"

    const-string v8, "object"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;->OBJECT:Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    .line 65
    sget-object v8, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;->NULL:Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;->STRING:Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;->BOOLEAN:Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;->INT:Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;->CALLBACK:Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;->$VALUES:[Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

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

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput-object p3, p0, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;->argName:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazon/kcp/store/KCPJSBridge$ArgType;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 124
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;->values()[Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 125
    iget-object v5, v4, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;->argName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/store/KCPJSBridge$ArgType;
    .locals 1

    .line 65
    const-class v0, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/store/KCPJSBridge$ArgType;
    .locals 1

    .line 65
    sget-object v0, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;->$VALUES:[Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/store/KCPJSBridge$ArgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    return-object v0
.end method


# virtual methods
.method public toJavaObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 104
    sget-object v0, Lcom/amazon/kcp/store/KCPJSBridge$1;->$SwitchMap$com$amazon$kcp$store$KCPJSBridge$ArgType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1

    .line 112
    :cond_1
    new-instance v0, Lcom/amazon/kcp/store/KCPJSCallback;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/store/KCPJSCallback;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 110
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 108
    :cond_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public toJavaType()Ljava/lang/Class;
    .locals 3

    .line 85
    const-class v0, Ljava/lang/String;

    sget-object v1, Lcom/amazon/kcp/store/KCPJSBridge$1;->$SwitchMap$com$amazon$kcp$store$KCPJSBridge$ArgType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 93
    :cond_1
    const-class v0, Lcom/amazon/kcp/store/KCPJSCallback;

    return-object v0

    .line 91
    :cond_2
    const-class v0, Ljava/lang/Integer;

    return-object v0

    .line 89
    :cond_3
    const-class v0, Ljava/lang/Boolean;

    :cond_4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;->argName:Ljava/lang/String;

    return-object v0
.end method
