.class public final enum Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;
.super Ljava/lang/Enum;
.source "ExecutorTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;

.field public static final enum NetworkError:Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;

.field public static final enum ServerError:Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;

.field public static final enum Throttling:Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;


# instance fields
.field private final mMaxAttempts:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 72
    new-instance v0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;

    invoke-static {}, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->access$000()Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "NetworkError"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;->NetworkError:Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;

    .line 73
    new-instance v0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;

    invoke-static {}, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->access$100()Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result v1

    const/4 v3, 0x1

    const-string v4, "ServerError"

    invoke-direct {v0, v4, v3, v1}, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;->ServerError:Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;

    .line 74
    new-instance v0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;

    invoke-static {}, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->access$100()Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result v1

    const/4 v4, 0x2

    const-string v5, "Throttling"

    invoke-direct {v0, v5, v4, v1}, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;->Throttling:Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;

    .line 70
    sget-object v5, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;->NetworkError:Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;

    aput-object v5, v1, v2

    sget-object v2, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;->ServerError:Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;->$VALUES:[Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput p3, p0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;->mMaxAttempts:I

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;)I
    .locals 0

    .line 70
    iget p0, p0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;->mMaxAttempts:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;
    .locals 1

    .line 70
    const-class v0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;
    .locals 1

    .line 70
    sget-object v0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;->$VALUES:[Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;

    invoke-virtual {v0}, [Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;

    return-object v0
.end method
