.class public final enum Lcom/amazon/device/sync/ExecutorTimeout$Reason;
.super Ljava/lang/Enum;
.source "ExecutorTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/ExecutorTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/sync/ExecutorTimeout$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/sync/ExecutorTimeout$Reason;

.field public static final enum NetworkError:Lcom/amazon/device/sync/ExecutorTimeout$Reason;

.field public static final enum None:Lcom/amazon/device/sync/ExecutorTimeout$Reason;

.field public static final enum ServerError:Lcom/amazon/device/sync/ExecutorTimeout$Reason;

.field public static final enum Throttling:Lcom/amazon/device/sync/ExecutorTimeout$Reason;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 133
    new-instance v0, Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    const/4 v1, 0x0

    const-string v2, "None"

    invoke-direct {v0, v2, v1}, Lcom/amazon/device/sync/ExecutorTimeout$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/ExecutorTimeout$Reason;->None:Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    .line 134
    new-instance v0, Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    const/4 v2, 0x1

    const-string v3, "NetworkError"

    invoke-direct {v0, v3, v2}, Lcom/amazon/device/sync/ExecutorTimeout$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/ExecutorTimeout$Reason;->NetworkError:Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    .line 135
    new-instance v0, Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    const/4 v3, 0x2

    const-string v4, "ServerError"

    invoke-direct {v0, v4, v3}, Lcom/amazon/device/sync/ExecutorTimeout$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/ExecutorTimeout$Reason;->ServerError:Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    .line 136
    new-instance v0, Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    const/4 v4, 0x3

    const-string v5, "Throttling"

    invoke-direct {v0, v5, v4}, Lcom/amazon/device/sync/ExecutorTimeout$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/ExecutorTimeout$Reason;->Throttling:Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    .line 131
    sget-object v6, Lcom/amazon/device/sync/ExecutorTimeout$Reason;->None:Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/device/sync/ExecutorTimeout$Reason;->NetworkError:Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/device/sync/ExecutorTimeout$Reason;->ServerError:Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/device/sync/ExecutorTimeout$Reason;->$VALUES:[Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/sync/ExecutorTimeout$Reason;
    .locals 1

    .line 131
    const-class v0, Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/sync/ExecutorTimeout$Reason;
    .locals 1

    .line 131
    sget-object v0, Lcom/amazon/device/sync/ExecutorTimeout$Reason;->$VALUES:[Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    invoke-virtual {v0}, [Lcom/amazon/device/sync/ExecutorTimeout$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    return-object v0
.end method
