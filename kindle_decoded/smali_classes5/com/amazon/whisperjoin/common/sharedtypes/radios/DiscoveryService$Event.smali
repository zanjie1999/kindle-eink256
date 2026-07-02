.class public final enum Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;
.super Ljava/lang/Enum;
.source "DiscoveryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

.field public static final enum ERROR:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

.field public static final enum THIRD_PARTY_ADDED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

.field public static final enum THIRD_PARTY_UPDATED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

.field public static final enum WJ_DEVICE_ADDED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

.field public static final enum WJ_DEVICE_UPDATED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 16
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    const/4 v1, 0x0

    const-string v2, "WJ_DEVICE_ADDED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;->WJ_DEVICE_ADDED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    .line 18
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    const/4 v2, 0x1

    const-string v3, "WJ_DEVICE_UPDATED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;->WJ_DEVICE_UPDATED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    .line 20
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    const/4 v3, 0x2

    const-string v4, "THIRD_PARTY_ADDED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;->THIRD_PARTY_ADDED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    .line 22
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    const/4 v4, 0x3

    const-string v5, "THIRD_PARTY_UPDATED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;->THIRD_PARTY_UPDATED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    .line 24
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    const/4 v5, 0x4

    const-string v6, "ERROR"

    invoke-direct {v0, v6, v5}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;->ERROR:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    .line 14
    sget-object v7, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;->WJ_DEVICE_ADDED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;->WJ_DEVICE_UPDATED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;->THIRD_PARTY_ADDED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;->THIRD_PARTY_UPDATED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;->$VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;->$VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    return-object v0
.end method
