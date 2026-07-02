.class public final enum Lcom/amazon/messaging/odot/OdotClient$Transport;
.super Ljava/lang/Enum;
.source "OdotClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/messaging/odot/OdotClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Transport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/messaging/odot/OdotClient$Transport;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/messaging/odot/OdotClient$Transport;

.field public static final enum WAN:Lcom/amazon/messaging/odot/OdotClient$Transport;

.field public static final enum WIFI:Lcom/amazon/messaging/odot/OdotClient$Transport;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 41
    new-instance v0, Lcom/amazon/messaging/odot/OdotClient$Transport;

    const/4 v1, 0x0

    const-string v2, "WIFI"

    invoke-direct {v0, v2, v1}, Lcom/amazon/messaging/odot/OdotClient$Transport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/messaging/odot/OdotClient$Transport;->WIFI:Lcom/amazon/messaging/odot/OdotClient$Transport;

    .line 42
    new-instance v0, Lcom/amazon/messaging/odot/OdotClient$Transport;

    const/4 v2, 0x1

    const-string v3, "WAN"

    invoke-direct {v0, v3, v2}, Lcom/amazon/messaging/odot/OdotClient$Transport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/messaging/odot/OdotClient$Transport;->WAN:Lcom/amazon/messaging/odot/OdotClient$Transport;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/messaging/odot/OdotClient$Transport;

    .line 40
    sget-object v4, Lcom/amazon/messaging/odot/OdotClient$Transport;->WIFI:Lcom/amazon/messaging/odot/OdotClient$Transport;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/messaging/odot/OdotClient$Transport;->$VALUES:[Lcom/amazon/messaging/odot/OdotClient$Transport;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/messaging/odot/OdotClient$Transport;
    .locals 1

    .line 40
    const-class v0, Lcom/amazon/messaging/odot/OdotClient$Transport;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/messaging/odot/OdotClient$Transport;

    return-object p0
.end method

.method public static values()[Lcom/amazon/messaging/odot/OdotClient$Transport;
    .locals 1

    .line 40
    sget-object v0, Lcom/amazon/messaging/odot/OdotClient$Transport;->$VALUES:[Lcom/amazon/messaging/odot/OdotClient$Transport;

    invoke-virtual {v0}, [Lcom/amazon/messaging/odot/OdotClient$Transport;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/messaging/odot/OdotClient$Transport;

    return-object v0
.end method
