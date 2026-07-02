.class public final enum Lcom/amazon/kindle/home/action/ActionStatus;
.super Ljava/lang/Enum;
.source "HomeActionProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/home/action/ActionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/home/action/ActionStatus;

.field public static final enum POST_EXECUTION_FAILURE:Lcom/amazon/kindle/home/action/ActionStatus;

.field public static final enum POST_EXECUTION_SUCCESS:Lcom/amazon/kindle/home/action/ActionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kindle/home/action/ActionStatus;

    new-instance v1, Lcom/amazon/kindle/home/action/ActionStatus;

    const/4 v2, 0x0

    const-string v3, "POST_EXECUTION_FAILURE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/home/action/ActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/home/action/ActionStatus;->POST_EXECUTION_FAILURE:Lcom/amazon/kindle/home/action/ActionStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/home/action/ActionStatus;

    const/4 v2, 0x1

    const-string v3, "POST_EXECUTION_SUCCESS"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/home/action/ActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/home/action/ActionStatus;->POST_EXECUTION_SUCCESS:Lcom/amazon/kindle/home/action/ActionStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/home/action/ActionStatus;->$VALUES:[Lcom/amazon/kindle/home/action/ActionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/home/action/ActionStatus;
    .locals 1

    const-class v0, Lcom/amazon/kindle/home/action/ActionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/home/action/ActionStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/home/action/ActionStatus;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/home/action/ActionStatus;->$VALUES:[Lcom/amazon/kindle/home/action/ActionStatus;

    invoke-virtual {v0}, [Lcom/amazon/kindle/home/action/ActionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/home/action/ActionStatus;

    return-object v0
.end method
