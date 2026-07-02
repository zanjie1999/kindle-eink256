.class public final enum Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;
.super Ljava/lang/Enum;
.source "FailRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/purchase/model/FailRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReasonCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

.field public static final enum AUTHENTICATION_FAILED:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

.field public static final enum MFA_CHALLENGE_REQUIRED:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

.field public static final enum NEED_BILLING_ADDRESS:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

.field public static final enum NEED_CREDIT_CARD:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

.field public static final enum OWNERSHIP_DID_NOT_CHANGE:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

.field public static final enum PRICE_INCREASED:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

.field public static final enum UNKNOWN:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 27
    new-instance v0, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->UNKNOWN:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    .line 28
    new-instance v0, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    const/4 v2, 0x1

    const-string v3, "PRICE_INCREASED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->PRICE_INCREASED:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    .line 29
    new-instance v0, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    const/4 v3, 0x2

    const-string v4, "NEED_CREDIT_CARD"

    invoke-direct {v0, v4, v3}, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->NEED_CREDIT_CARD:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    .line 30
    new-instance v0, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    const/4 v4, 0x3

    const-string v5, "NEED_BILLING_ADDRESS"

    invoke-direct {v0, v5, v4}, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->NEED_BILLING_ADDRESS:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    .line 31
    new-instance v0, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    const/4 v5, 0x4

    const-string v6, "MFA_CHALLENGE_REQUIRED"

    invoke-direct {v0, v6, v5}, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->MFA_CHALLENGE_REQUIRED:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    .line 32
    new-instance v0, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    const/4 v6, 0x5

    const-string v7, "OWNERSHIP_DID_NOT_CHANGE"

    invoke-direct {v0, v7, v6}, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->OWNERSHIP_DID_NOT_CHANGE:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    .line 33
    new-instance v0, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    const/4 v7, 0x6

    const-string v8, "AUTHENTICATION_FAILED"

    invoke-direct {v0, v8, v7}, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->AUTHENTICATION_FAILED:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    .line 26
    sget-object v9, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->UNKNOWN:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    aput-object v9, v8, v1

    sget-object v1, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->PRICE_INCREASED:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    aput-object v1, v8, v2

    sget-object v1, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->NEED_CREDIT_CARD:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    aput-object v1, v8, v3

    sget-object v1, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->NEED_BILLING_ADDRESS:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    aput-object v1, v8, v4

    sget-object v1, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->MFA_CHALLENGE_REQUIRED:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    aput-object v1, v8, v5

    sget-object v1, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->OWNERSHIP_DID_NOT_CHANGE:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->$VALUES:[Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;
    .locals 1

    .line 26
    const-class v0, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;
    .locals 1

    .line 26
    sget-object v0, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->$VALUES:[Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    invoke-virtual {v0}, [Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    return-object v0
.end method
