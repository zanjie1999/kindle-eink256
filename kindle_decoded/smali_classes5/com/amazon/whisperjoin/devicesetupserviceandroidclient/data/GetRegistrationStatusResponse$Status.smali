.class public final enum Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;
.super Ljava/lang/Enum;
.source "GetRegistrationStatusResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

.field public static final enum NOT_REGISTERED:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

.field public static final enum PAST_REGISTERED:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

.field public static final enum RECENTLY_REGISTERED:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

    const/4 v1, 0x0

    const-string v2, "NOT_REGISTERED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;->NOT_REGISTERED:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

    .line 9
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

    const/4 v2, 0x1

    const-string v3, "PAST_REGISTERED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;->PAST_REGISTERED:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

    .line 10
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

    const/4 v3, 0x2

    const-string v4, "RECENTLY_REGISTERED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;->RECENTLY_REGISTERED:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

    .line 7
    sget-object v5, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;->NOT_REGISTERED:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;->PAST_REGISTERED:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;->$VALUES:[Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;->$VALUES:[Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

    return-object v0
.end method
