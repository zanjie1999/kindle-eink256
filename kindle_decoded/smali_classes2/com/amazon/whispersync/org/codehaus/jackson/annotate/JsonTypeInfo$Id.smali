.class public final enum Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;
.super Ljava/lang/Enum;
.source "JsonTypeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Id"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

.field public static final enum CLASS:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

.field public static final enum CUSTOM:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

.field public static final enum MINIMAL_CLASS:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

.field public static final enum NAME:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

.field public static final enum NONE:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;


# instance fields
.field private final _defaultPropertyName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 69
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "NONE"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->NONE:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    .line 74
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    const/4 v3, 0x1

    const-string v4, "CLASS"

    const-string v5, "@class"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->CLASS:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    .line 98
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    const/4 v4, 0x2

    const-string v5, "MINIMAL_CLASS"

    const-string v6, "@c"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->MINIMAL_CLASS:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    .line 104
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    const/4 v5, 0x3

    const-string v6, "NAME"

    const-string v7, "@type"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    .line 111
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    const/4 v6, 0x4

    const-string v7, "CUSTOM"

    invoke-direct {v0, v7, v6, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->CUSTOM:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    .line 60
    sget-object v7, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->NONE:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    aput-object v7, v1, v2

    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->CLASS:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->MINIMAL_CLASS:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->$VALUES:[Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

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

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->_defaultPropertyName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;
    .locals 1

    .line 60
    const-class v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;
    .locals 1

    .line 60
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->$VALUES:[Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    return-object v0
.end method


# virtual methods
.method public getDefaultPropertyName()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->_defaultPropertyName:Ljava/lang/String;

    return-object v0
.end method
