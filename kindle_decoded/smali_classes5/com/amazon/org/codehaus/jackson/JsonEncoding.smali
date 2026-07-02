.class public final enum Lcom/amazon/org/codehaus/jackson/JsonEncoding;
.super Ljava/lang/Enum;
.source "JsonEncoding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/org/codehaus/jackson/JsonEncoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/org/codehaus/jackson/JsonEncoding;

.field public static final enum UTF16_BE:Lcom/amazon/org/codehaus/jackson/JsonEncoding;

.field public static final enum UTF16_LE:Lcom/amazon/org/codehaus/jackson/JsonEncoding;

.field public static final enum UTF32_BE:Lcom/amazon/org/codehaus/jackson/JsonEncoding;

.field public static final enum UTF32_LE:Lcom/amazon/org/codehaus/jackson/JsonEncoding;

.field public static final enum UTF8:Lcom/amazon/org/codehaus/jackson/JsonEncoding;


# instance fields
.field protected final _bigEndian:Z

.field protected final _javaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 14
    new-instance v0, Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    const/4 v1, 0x0

    const-string v2, "UTF8"

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v1, v3, v1}, Lcom/amazon/org/codehaus/jackson/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    .line 15
    new-instance v0, Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    const/4 v2, 0x1

    const-string v3, "UTF16_BE"

    const-string v4, "UTF-16BE"

    invoke-direct {v0, v3, v2, v4, v2}, Lcom/amazon/org/codehaus/jackson/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/JsonEncoding;->UTF16_BE:Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    .line 16
    new-instance v0, Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    const/4 v3, 0x2

    const-string v4, "UTF16_LE"

    const-string v5, "UTF-16LE"

    invoke-direct {v0, v4, v3, v5, v1}, Lcom/amazon/org/codehaus/jackson/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/JsonEncoding;->UTF16_LE:Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    .line 17
    new-instance v0, Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    const/4 v4, 0x3

    const-string v5, "UTF32_BE"

    const-string v6, "UTF-32BE"

    invoke-direct {v0, v5, v4, v6, v2}, Lcom/amazon/org/codehaus/jackson/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/JsonEncoding;->UTF32_BE:Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    .line 18
    new-instance v0, Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    const/4 v5, 0x4

    const-string v6, "UTF32_LE"

    const-string v7, "UTF-32LE"

    invoke-direct {v0, v6, v5, v7, v1}, Lcom/amazon/org/codehaus/jackson/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/JsonEncoding;->UTF32_LE:Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    .line 13
    sget-object v7, Lcom/amazon/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonEncoding;->UTF16_BE:Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonEncoding;->UTF16_LE:Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonEncoding;->UTF32_BE:Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/org/codehaus/jackson/JsonEncoding;->$VALUES:[Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/JsonEncoding;->_javaName:Ljava/lang/String;

    .line 28
    iput-boolean p4, p0, Lcom/amazon/org/codehaus/jackson/JsonEncoding;->_bigEndian:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/JsonEncoding;
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    return-object p0
.end method

.method public static values()[Lcom/amazon/org/codehaus/jackson/JsonEncoding;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonEncoding;->$VALUES:[Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    invoke-virtual {v0}, [Lcom/amazon/org/codehaus/jackson/JsonEncoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    return-object v0
.end method


# virtual methods
.method public getJavaName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/JsonEncoding;->_javaName:Ljava/lang/String;

    return-object v0
.end method

.method public isBigEndian()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/JsonEncoding;->_bigEndian:Z

    return v0
.end method
