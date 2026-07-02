.class public final enum Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;
.super Ljava/lang/Enum;
.source "OpenPeriodicalEditionHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BookLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;

.field public static final enum CLOUD:Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;

.field public static final enum EDITION:Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;

.field public static final enum UNKNOWN:Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;

    const/4 v2, 0x0

    const-string v3, "CLOUD"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;->CLOUD:Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;

    const/4 v2, 0x1

    const-string v3, "EDITION"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;->EDITION:Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;

    const/4 v2, 0x2

    const-string v3, "UNKNOWN"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;->UNKNOWN:Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;->$VALUES:[Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;
    .locals 1

    const-class v0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;->$VALUES:[Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;

    invoke-virtual {v0}, [Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;

    return-object v0
.end method
