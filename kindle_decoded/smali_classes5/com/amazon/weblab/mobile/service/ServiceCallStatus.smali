.class public final enum Lcom/amazon/weblab/mobile/service/ServiceCallStatus;
.super Ljava/lang/Enum;
.source "ServiceCallStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/weblab/mobile/service/ServiceCallStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

.field public static final enum ERROR:Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

.field public static final enum INTERNAL_SERVER_ERROR:Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

.field public static final enum SUCCESSFUL:Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

.field public static final enum THROTTLED:Lcom/amazon/weblab/mobile/service/ServiceCallStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    const/4 v1, 0x0

    const-string v2, "SUCCESSFUL"

    invoke-direct {v0, v2, v1}, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;->SUCCESSFUL:Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    new-instance v0, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    const/4 v2, 0x1

    const-string v3, "ERROR"

    invoke-direct {v0, v3, v2}, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;->ERROR:Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    new-instance v0, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    const/4 v3, 0x2

    const-string v4, "THROTTLED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;->THROTTLED:Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    new-instance v0, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    const/4 v4, 0x3

    const-string v5, "INTERNAL_SERVER_ERROR"

    invoke-direct {v0, v5, v4}, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;->INTERNAL_SERVER_ERROR:Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    .line 3
    sget-object v6, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;->SUCCESSFUL:Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;->ERROR:Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;->THROTTLED:Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;->$VALUES:[Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/weblab/mobile/service/ServiceCallStatus;
    .locals 1

    .line 3
    const-class v0, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/weblab/mobile/service/ServiceCallStatus;
    .locals 1

    .line 3
    sget-object v0, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;->$VALUES:[Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    invoke-virtual {v0}, [Lcom/amazon/weblab/mobile/service/ServiceCallStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    return-object v0
.end method
