.class public final enum Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;
.super Ljava/lang/Enum;
.source "UserIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/UserIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "IdentifyUserStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

.field public static final enum FAILURE:Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

.field public static final enum REQUESTFAILED:Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

.field public static final enum REQUESTTHROTTLED:Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

.field public static final enum SUCCESS:Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 28
    new-instance v0, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;->SUCCESS:Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

    .line 32
    new-instance v0, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

    const/4 v2, 0x1

    const-string v3, "FAILURE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;->FAILURE:Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

    .line 36
    new-instance v0, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

    const/4 v3, 0x2

    const-string v4, "REQUESTFAILED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;->REQUESTFAILED:Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

    .line 40
    new-instance v0, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

    const/4 v4, 0x3

    const-string v5, "REQUESTTHROTTLED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;->REQUESTTHROTTLED:Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

    .line 23
    sget-object v6, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;->SUCCESS:Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;->FAILURE:Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;->REQUESTFAILED:Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;->$VALUES:[Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;->$VALUES:[Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

    invoke-virtual {v0}, [Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

    return-object v0
.end method
