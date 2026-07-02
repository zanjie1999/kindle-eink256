.class final enum Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;
.super Ljava/lang/Enum;
.source "StopWatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SplitState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;

.field public static final enum SPLIT:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;

.field public static final enum UNSPLIT:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 126
    new-instance v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;

    const/4 v1, 0x0

    const-string v2, "SPLIT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;->SPLIT:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;

    .line 127
    new-instance v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;

    const/4 v2, 0x1

    const-string v3, "UNSPLIT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;->UNSPLIT:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;

    .line 125
    sget-object v4, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;->SPLIT:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;->$VALUES:[Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;
    .locals 1

    .line 125
    const-class v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;
    .locals 1

    .line 125
    sget-object v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;->$VALUES:[Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;

    invoke-virtual {v0}, [Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;

    return-object v0
.end method
