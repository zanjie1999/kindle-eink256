.class public final enum Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;
.super Ljava/lang/Enum;
.source "SdkLogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

.field public static final enum SdkLogLevelDebug:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

.field public static final enum SdkLogLevelError:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

.field public static final enum SdkLogLevelInfo:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

.field public static final enum SdkLogLevelOff:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

.field public static final enum SdkLogLevelWarn:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;


# instance fields
.field private mLogLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 6
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    const/4 v1, 0x0

    const-string v2, "SdkLogLevelDebug"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->SdkLogLevelDebug:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    .line 7
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    const/4 v2, 0x1

    const-string v3, "SdkLogLevelInfo"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->SdkLogLevelInfo:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    .line 8
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    const/4 v3, 0x2

    const-string v4, "SdkLogLevelWarn"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->SdkLogLevelWarn:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    .line 9
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    const/4 v4, 0x3

    const-string v5, "SdkLogLevelError"

    invoke-direct {v0, v5, v4, v4}, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->SdkLogLevelError:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    .line 10
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    const/4 v5, 0x4

    const-string v6, "SdkLogLevelOff"

    invoke-direct {v0, v6, v5, v5}, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->SdkLogLevelOff:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    .line 4
    sget-object v7, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->SdkLogLevelDebug:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->SdkLogLevelInfo:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->SdkLogLevelWarn:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->SdkLogLevelError:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->mLogLevel:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    return-object v0
.end method


# virtual methods
.method getLogLevel()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->mLogLevel:I

    return v0
.end method

.method public shouldShowLogWithLevel(Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;)Z
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->getLogLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->getLogLevel()I

    move-result p1

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
