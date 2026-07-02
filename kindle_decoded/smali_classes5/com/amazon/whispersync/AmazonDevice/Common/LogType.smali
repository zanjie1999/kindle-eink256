.class public final enum Lcom/amazon/whispersync/AmazonDevice/Common/LogType;
.super Ljava/lang/Enum;
.source "LogType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/AmazonDevice/Common/LogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/AmazonDevice/Common/LogType;

.field public static final enum NormalLogType:Lcom/amazon/whispersync/AmazonDevice/Common/LogType;

.field public static final enum PIILogType:Lcom/amazon/whispersync/AmazonDevice/Common/LogType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 6
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/LogType;

    const/4 v1, 0x0

    const-string v2, "NormalLogType"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/LogType;->NormalLogType:Lcom/amazon/whispersync/AmazonDevice/Common/LogType;

    .line 7
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/LogType;

    const/4 v2, 0x1

    const-string v3, "PIILogType"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/LogType;->PIILogType:Lcom/amazon/whispersync/AmazonDevice/Common/LogType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/whispersync/AmazonDevice/Common/LogType;

    .line 4
    sget-object v4, Lcom/amazon/whispersync/AmazonDevice/Common/LogType;->NormalLogType:Lcom/amazon/whispersync/AmazonDevice/Common/LogType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/whispersync/AmazonDevice/Common/LogType;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/Common/LogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Common/LogType;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/whispersync/AmazonDevice/Common/LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/AmazonDevice/Common/LogType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/AmazonDevice/Common/LogType;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/LogType;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/Common/LogType;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/AmazonDevice/Common/LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/AmazonDevice/Common/LogType;

    return-object v0
.end method
