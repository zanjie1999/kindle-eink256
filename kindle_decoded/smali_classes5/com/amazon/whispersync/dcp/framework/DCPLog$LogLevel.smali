.class final enum Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;
.super Ljava/lang/Enum;
.source "DCPLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/DCPLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

.field public static final enum ASSERT:Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

.field public static final enum DEBUG:Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

.field public static final enum ERROR:Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

.field public static final enum INFO:Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

.field public static final enum VERBOSE:Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

.field public static final enum WARN:Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;


# instance fields
.field private final mLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 167
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

    const/4 v1, 0x0

    const-string v2, "ASSERT"

    const/4 v3, 0x7

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;->ASSERT:Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

    .line 168
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

    const/4 v2, 0x6

    const/4 v3, 0x1

    const-string v4, "ERROR"

    invoke-direct {v0, v4, v3, v2}, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;->ERROR:Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

    .line 169
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

    const/4 v4, 0x5

    const/4 v5, 0x2

    const-string v6, "WARN"

    invoke-direct {v0, v6, v5, v4}, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;->WARN:Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

    .line 170
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

    const/4 v6, 0x4

    const/4 v7, 0x3

    const-string v8, "INFO"

    invoke-direct {v0, v8, v7, v6}, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;->INFO:Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

    .line 171
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

    const-string v8, "DEBUG"

    invoke-direct {v0, v8, v6, v7}, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;->DEBUG:Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

    .line 172
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

    const-string v8, "VERBOSE"

    invoke-direct {v0, v8, v4, v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;->VERBOSE:Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

    new-array v2, v2, [Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

    .line 165
    sget-object v8, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;->ASSERT:Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

    aput-object v8, v2, v1

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;->ERROR:Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

    aput-object v1, v2, v3

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;->WARN:Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

    aput-object v1, v2, v5

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;->INFO:Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

    aput-object v1, v2, v7

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;->DEBUG:Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

    aput-object v1, v2, v6

    aput-object v0, v2, v4

    sput-object v2, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;->$VALUES:[Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 177
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 178
    iput p3, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;->mLevel:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;
    .locals 1

    .line 165
    const-class v0, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;
    .locals 1

    .line 165
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;->$VALUES:[Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

    return-object v0
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .line 183
    iget v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;->mLevel:I

    return v0
.end method
