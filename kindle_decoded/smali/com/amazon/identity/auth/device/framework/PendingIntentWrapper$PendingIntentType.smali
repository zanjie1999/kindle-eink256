.class public final enum Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PendingIntentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;

.field public static final enum Activity:Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;

.field public static final enum Broadcast:Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;

.field public static final enum Service:Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 12
    new-instance v0, Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;

    const/4 v1, 0x0

    const-string v2, "Broadcast"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;->Broadcast:Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;

    .line 13
    new-instance v0, Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;

    const/4 v2, 0x1

    const-string v3, "Service"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;->Service:Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;

    .line 14
    new-instance v0, Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;

    const/4 v3, 0x2

    const-string v4, "Activity"

    invoke-direct {v0, v4, v3}, Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;->Activity:Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;

    .line 10
    sget-object v5, Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;->Broadcast:Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;->Service:Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;->$VALUES:[Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;->$VALUES:[Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/framework/PendingIntentWrapper$PendingIntentType;

    return-object v0
.end method
