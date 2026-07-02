.class public final enum Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;
.super Ljava/lang/Enum;
.source "WifiKeyManagement.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

.field public static final enum NONE:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

.field public static final enum OTHER:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

.field public static final enum WEP:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

.field public static final enum WPA_PSK:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;->NONE:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    .line 12
    new-instance v0, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    const/4 v2, 0x1

    const-string v3, "WPA_PSK"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;->WPA_PSK:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    .line 13
    new-instance v0, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    const/4 v3, 0x2

    const-string v4, "WEP"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;->WEP:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    .line 14
    new-instance v0, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    const/4 v4, 0x3

    const-string v5, "OTHER"

    invoke-direct {v0, v5, v4}, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;->OTHER:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    .line 10
    sget-object v6, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;->NONE:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;->WPA_PSK:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;->WEP:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;->$VALUES:[Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;->$VALUES:[Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    return-object v0
.end method
