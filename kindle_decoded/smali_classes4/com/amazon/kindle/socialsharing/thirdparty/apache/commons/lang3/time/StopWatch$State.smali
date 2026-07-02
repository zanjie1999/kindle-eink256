.class abstract enum Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;
.super Ljava/lang/Enum;
.source "StopWatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

.field public static final enum RUNNING:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

.field public static final enum STOPPED:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

.field public static final enum SUSPENDED:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

.field public static final enum UNSTARTED:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 67
    new-instance v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State$1;

    const/4 v1, 0x0

    const-string v2, "UNSTARTED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    .line 72
    new-instance v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State$2;

    const/4 v2, 0x1

    const-string v3, "RUNNING"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    .line 77
    new-instance v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State$3;

    const/4 v3, 0x2

    const-string v4, "STOPPED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;->STOPPED:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    .line 82
    new-instance v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State$4;

    const/4 v4, 0x3

    const-string v5, "SUSPENDED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;->SUSPENDED:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    .line 65
    sget-object v6, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;->STOPPED:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;->$VALUES:[Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$1;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;
    .locals 1

    .line 65
    const-class v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;
    .locals 1

    .line 65
    sget-object v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;->$VALUES:[Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    invoke-virtual {v0}, [Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    return-object v0
.end method


# virtual methods
.method abstract isStarted()Z
.end method
