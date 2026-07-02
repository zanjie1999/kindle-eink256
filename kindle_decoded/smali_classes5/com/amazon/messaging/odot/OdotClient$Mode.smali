.class public final enum Lcom/amazon/messaging/odot/OdotClient$Mode;
.super Ljava/lang/Enum;
.source "OdotClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/messaging/odot/OdotClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/messaging/odot/OdotClient$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/messaging/odot/OdotClient$Mode;

.field public static final enum PRE_PRODUCTION:Lcom/amazon/messaging/odot/OdotClient$Mode;

.field public static final enum PRODUCTION:Lcom/amazon/messaging/odot/OdotClient$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 23
    new-instance v0, Lcom/amazon/messaging/odot/OdotClient$Mode;

    const/4 v1, 0x0

    const-string v2, "PRODUCTION"

    invoke-direct {v0, v2, v1}, Lcom/amazon/messaging/odot/OdotClient$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/messaging/odot/OdotClient$Mode;->PRODUCTION:Lcom/amazon/messaging/odot/OdotClient$Mode;

    .line 24
    new-instance v0, Lcom/amazon/messaging/odot/OdotClient$Mode;

    const/4 v2, 0x1

    const-string v3, "PRE_PRODUCTION"

    invoke-direct {v0, v3, v2}, Lcom/amazon/messaging/odot/OdotClient$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/messaging/odot/OdotClient$Mode;->PRE_PRODUCTION:Lcom/amazon/messaging/odot/OdotClient$Mode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/messaging/odot/OdotClient$Mode;

    .line 22
    sget-object v4, Lcom/amazon/messaging/odot/OdotClient$Mode;->PRODUCTION:Lcom/amazon/messaging/odot/OdotClient$Mode;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/messaging/odot/OdotClient$Mode;->$VALUES:[Lcom/amazon/messaging/odot/OdotClient$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/messaging/odot/OdotClient$Mode;
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/messaging/odot/OdotClient$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/messaging/odot/OdotClient$Mode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/messaging/odot/OdotClient$Mode;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/messaging/odot/OdotClient$Mode;->$VALUES:[Lcom/amazon/messaging/odot/OdotClient$Mode;

    invoke-virtual {v0}, [Lcom/amazon/messaging/odot/OdotClient$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/messaging/odot/OdotClient$Mode;

    return-object v0
.end method
