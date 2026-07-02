.class public final enum Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;
.super Ljava/lang/Enum;
.source "DiscoveryEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

.field public static final enum ERROR:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

.field public static final enum THIRD_PARTY_DEVICE_DISCOVERED:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

.field public static final enum THIRD_PARTY_DEVICE_UPDATED_RADIO:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

.field public static final enum WJ_DEVICE_DISCOVERED:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

.field public static final enum WJ_DEVICE_UPDATED_RADIO:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 5
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    const/4 v1, 0x0

    const-string v2, "WJ_DEVICE_DISCOVERED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;->WJ_DEVICE_DISCOVERED:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    .line 7
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    const/4 v2, 0x1

    const-string v3, "WJ_DEVICE_UPDATED_RADIO"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;->WJ_DEVICE_UPDATED_RADIO:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    .line 9
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    const/4 v3, 0x2

    const-string v4, "THIRD_PARTY_DEVICE_DISCOVERED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;->THIRD_PARTY_DEVICE_DISCOVERED:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    .line 11
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    const/4 v4, 0x3

    const-string v5, "THIRD_PARTY_DEVICE_UPDATED_RADIO"

    invoke-direct {v0, v5, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;->THIRD_PARTY_DEVICE_UPDATED_RADIO:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    .line 13
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    const/4 v5, 0x4

    const-string v6, "ERROR"

    invoke-direct {v0, v6, v5}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;->ERROR:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    .line 3
    sget-object v7, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;->WJ_DEVICE_DISCOVERED:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;->WJ_DEVICE_UPDATED_RADIO:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;->THIRD_PARTY_DEVICE_DISCOVERED:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;->THIRD_PARTY_DEVICE_UPDATED_RADIO:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;->$VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;
    .locals 1

    .line 3
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;
    .locals 1

    .line 3
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;->$VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    return-object v0
.end method
