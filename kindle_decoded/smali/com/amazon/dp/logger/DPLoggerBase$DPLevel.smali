.class public final enum Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;
.super Ljava/lang/Enum;
.source "DPLoggerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/dp/logger/DPLoggerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "DPLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

.field public static final enum DEBUG:Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

.field public static final enum ERROR:Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

.field public static final enum FATAL:Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

.field public static final enum INFO:Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

.field public static final enum TRACE:Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

.field public static final enum VERBOSE:Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

.field public static final enum WARN:Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 52
    new-instance v0, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    const/4 v1, 0x0

    const-string v2, "FATAL"

    invoke-direct {v0, v2, v1}, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;->FATAL:Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    new-instance v0, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    const/4 v2, 0x1

    const-string v3, "ERROR"

    invoke-direct {v0, v3, v2}, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;->ERROR:Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    new-instance v0, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    const/4 v3, 0x2

    const-string v4, "WARN"

    invoke-direct {v0, v4, v3}, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;->WARN:Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    new-instance v0, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    const/4 v4, 0x3

    const-string v5, "INFO"

    invoke-direct {v0, v5, v4}, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;->INFO:Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    new-instance v0, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    const/4 v5, 0x4

    const-string v6, "DEBUG"

    invoke-direct {v0, v6, v5}, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;->DEBUG:Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    new-instance v0, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    const/4 v6, 0x5

    const-string v7, "TRACE"

    invoke-direct {v0, v7, v6}, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;->TRACE:Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    new-instance v0, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    const/4 v7, 0x6

    const-string v8, "VERBOSE"

    invoke-direct {v0, v8, v7}, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;->VERBOSE:Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    .line 51
    sget-object v9, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;->FATAL:Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    aput-object v9, v8, v1

    sget-object v1, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;->ERROR:Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    aput-object v1, v8, v2

    sget-object v1, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;->WARN:Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    aput-object v1, v8, v3

    sget-object v1, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;->INFO:Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    aput-object v1, v8, v4

    sget-object v1, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;->DEBUG:Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    aput-object v1, v8, v5

    sget-object v1, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;->TRACE:Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;->$VALUES:[Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;
    .locals 1

    .line 51
    const-class v0, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    return-object p0
.end method

.method public static values()[Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;
    .locals 1

    .line 51
    sget-object v0, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;->$VALUES:[Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    invoke-virtual {v0}, [Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    return-object v0
.end method
