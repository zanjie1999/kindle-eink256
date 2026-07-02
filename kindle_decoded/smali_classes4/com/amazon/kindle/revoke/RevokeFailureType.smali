.class public final enum Lcom/amazon/kindle/revoke/RevokeFailureType;
.super Ljava/lang/Enum;
.source "RevokeFailureType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/revoke/RevokeFailureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/revoke/RevokeFailureType;

.field public static final enum NETWORK:Lcom/amazon/kindle/revoke/RevokeFailureType;

.field public static final enum OTHER:Lcom/amazon/kindle/revoke/RevokeFailureType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lcom/amazon/kindle/revoke/RevokeFailureType;

    const/4 v1, 0x0

    const-string v2, "NETWORK"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/revoke/RevokeFailureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/revoke/RevokeFailureType;->NETWORK:Lcom/amazon/kindle/revoke/RevokeFailureType;

    .line 20
    new-instance v0, Lcom/amazon/kindle/revoke/RevokeFailureType;

    const/4 v2, 0x1

    const-string v3, "OTHER"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/revoke/RevokeFailureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/revoke/RevokeFailureType;->OTHER:Lcom/amazon/kindle/revoke/RevokeFailureType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/revoke/RevokeFailureType;

    .line 11
    sget-object v4, Lcom/amazon/kindle/revoke/RevokeFailureType;->NETWORK:Lcom/amazon/kindle/revoke/RevokeFailureType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/revoke/RevokeFailureType;->$VALUES:[Lcom/amazon/kindle/revoke/RevokeFailureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/revoke/RevokeFailureType;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/kindle/revoke/RevokeFailureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/revoke/RevokeFailureType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/revoke/RevokeFailureType;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/kindle/revoke/RevokeFailureType;->$VALUES:[Lcom/amazon/kindle/revoke/RevokeFailureType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/revoke/RevokeFailureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/revoke/RevokeFailureType;

    return-object v0
.end method
