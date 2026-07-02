.class public final enum Lcom/amazon/kindle/log/ILogger$Level;
.super Ljava/lang/Enum;
.source "ILogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/log/ILogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/log/ILogger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/log/ILogger$Level;

.field public static final enum DEBUG:Lcom/amazon/kindle/log/ILogger$Level;

.field public static final enum ERROR:Lcom/amazon/kindle/log/ILogger$Level;

.field public static final enum FATAL:Lcom/amazon/kindle/log/ILogger$Level;

.field public static final enum INFO:Lcom/amazon/kindle/log/ILogger$Level;

.field public static final enum TRACE:Lcom/amazon/kindle/log/ILogger$Level;

.field public static final enum VERBOSE:Lcom/amazon/kindle/log/ILogger$Level;

.field public static final enum WARNING:Lcom/amazon/kindle/log/ILogger$Level;

.field public static final enum WTF:Lcom/amazon/kindle/log/ILogger$Level;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 14
    new-instance v0, Lcom/amazon/kindle/log/ILogger$Level;

    const/4 v1, 0x0

    const-string v2, "TRACE"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/kindle/log/ILogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/log/ILogger$Level;->TRACE:Lcom/amazon/kindle/log/ILogger$Level;

    .line 15
    new-instance v0, Lcom/amazon/kindle/log/ILogger$Level;

    const/4 v2, 0x1

    const-string v3, "VERBOSE"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/kindle/log/ILogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/log/ILogger$Level;->VERBOSE:Lcom/amazon/kindle/log/ILogger$Level;

    .line 16
    new-instance v0, Lcom/amazon/kindle/log/ILogger$Level;

    const/4 v3, 0x2

    const-string v4, "DEBUG"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/kindle/log/ILogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/log/ILogger$Level;->DEBUG:Lcom/amazon/kindle/log/ILogger$Level;

    .line 17
    new-instance v0, Lcom/amazon/kindle/log/ILogger$Level;

    const/4 v4, 0x3

    const-string v5, "INFO"

    invoke-direct {v0, v5, v4, v4}, Lcom/amazon/kindle/log/ILogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/log/ILogger$Level;->INFO:Lcom/amazon/kindle/log/ILogger$Level;

    .line 18
    new-instance v0, Lcom/amazon/kindle/log/ILogger$Level;

    const/4 v5, 0x4

    const-string v6, "WARNING"

    invoke-direct {v0, v6, v5, v5}, Lcom/amazon/kindle/log/ILogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/log/ILogger$Level;->WARNING:Lcom/amazon/kindle/log/ILogger$Level;

    .line 19
    new-instance v0, Lcom/amazon/kindle/log/ILogger$Level;

    const/4 v6, 0x5

    const-string v7, "ERROR"

    invoke-direct {v0, v7, v6, v6}, Lcom/amazon/kindle/log/ILogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/log/ILogger$Level;->ERROR:Lcom/amazon/kindle/log/ILogger$Level;

    .line 20
    new-instance v0, Lcom/amazon/kindle/log/ILogger$Level;

    const/4 v7, 0x6

    const-string v8, "FATAL"

    invoke-direct {v0, v8, v7, v7}, Lcom/amazon/kindle/log/ILogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/log/ILogger$Level;->FATAL:Lcom/amazon/kindle/log/ILogger$Level;

    .line 21
    new-instance v0, Lcom/amazon/kindle/log/ILogger$Level;

    const/4 v8, 0x7

    const-string v9, "WTF"

    invoke-direct {v0, v9, v8, v8}, Lcom/amazon/kindle/log/ILogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/log/ILogger$Level;->WTF:Lcom/amazon/kindle/log/ILogger$Level;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/kindle/log/ILogger$Level;

    .line 13
    sget-object v10, Lcom/amazon/kindle/log/ILogger$Level;->TRACE:Lcom/amazon/kindle/log/ILogger$Level;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/kindle/log/ILogger$Level;->VERBOSE:Lcom/amazon/kindle/log/ILogger$Level;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/kindle/log/ILogger$Level;->DEBUG:Lcom/amazon/kindle/log/ILogger$Level;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/kindle/log/ILogger$Level;->INFO:Lcom/amazon/kindle/log/ILogger$Level;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/kindle/log/ILogger$Level;->WARNING:Lcom/amazon/kindle/log/ILogger$Level;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/kindle/log/ILogger$Level;->ERROR:Lcom/amazon/kindle/log/ILogger$Level;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/kindle/log/ILogger$Level;->FATAL:Lcom/amazon/kindle/log/ILogger$Level;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/kindle/log/ILogger$Level;->$VALUES:[Lcom/amazon/kindle/log/ILogger$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/amazon/kindle/log/ILogger$Level;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/log/ILogger$Level;
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/kindle/log/ILogger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/log/ILogger$Level;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/log/ILogger$Level;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/kindle/log/ILogger$Level;->$VALUES:[Lcom/amazon/kindle/log/ILogger$Level;

    invoke-virtual {v0}, [Lcom/amazon/kindle/log/ILogger$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/log/ILogger$Level;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/amazon/kindle/log/ILogger$Level;->value:I

    return v0
.end method
