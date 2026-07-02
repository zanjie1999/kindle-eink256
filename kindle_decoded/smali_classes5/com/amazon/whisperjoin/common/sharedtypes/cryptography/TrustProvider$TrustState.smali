.class public final enum Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;
.super Ljava/lang/Enum;
.source "TrustProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

.field public static final enum TRUSTED_ENCRYPTED:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

.field public static final enum UNTRUSTED:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

.field public static final enum UNTRUSTED_ENCRYPTED:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

.field public static final enum UNTRUSTED_PIN:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 13
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    const/4 v1, 0x0

    const-string v2, "UNTRUSTED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;->UNTRUSTED:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    .line 14
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    const/4 v2, 0x1

    const-string v3, "UNTRUSTED_ENCRYPTED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;->UNTRUSTED_ENCRYPTED:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    .line 15
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    const/4 v3, 0x2

    const-string v4, "TRUSTED_ENCRYPTED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;->TRUSTED_ENCRYPTED:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    .line 16
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    const/4 v4, 0x3

    const-string v5, "UNTRUSTED_PIN"

    invoke-direct {v0, v5, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;->UNTRUSTED_PIN:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    .line 12
    sget-object v6, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;->UNTRUSTED:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;->UNTRUSTED_ENCRYPTED:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;->TRUSTED_ENCRYPTED:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;->$VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;->$VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    return-object v0
.end method
