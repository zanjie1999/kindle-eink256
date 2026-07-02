.class public final enum Lcom/audible/mobile/membership/MemberGivingStatus;
.super Ljava/lang/Enum;
.source "MemberGivingStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/membership/MemberGivingStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/membership/MemberGivingStatus;

.field public static final enum ASIN_NOT_GIVABLE:Lcom/audible/mobile/membership/MemberGivingStatus;

.field public static final enum ELIGIBLE_TO_GIFT:Lcom/audible/mobile/membership/MemberGivingStatus;

.field public static final enum MAX_INVITES_REACHED:Lcom/audible/mobile/membership/MemberGivingStatus;

.field public static final enum NOT_ELIGIBLE_TO_GIFT:Lcom/audible/mobile/membership/MemberGivingStatus;


# instance fields
.field final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/audible/mobile/membership/MemberGivingStatus;

    const/4 v1, 0x0

    const-string v2, "ELIGIBLE_TO_GIFT"

    const-string v3, "Eligible"

    invoke-direct {v0, v2, v1, v3}, Lcom/audible/mobile/membership/MemberGivingStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/membership/MemberGivingStatus;->ELIGIBLE_TO_GIFT:Lcom/audible/mobile/membership/MemberGivingStatus;

    .line 8
    new-instance v0, Lcom/audible/mobile/membership/MemberGivingStatus;

    const/4 v2, 0x1

    const-string v3, "NOT_ELIGIBLE_TO_GIFT"

    const-string v4, "CustomerNotEligible"

    invoke-direct {v0, v3, v2, v4}, Lcom/audible/mobile/membership/MemberGivingStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/membership/MemberGivingStatus;->NOT_ELIGIBLE_TO_GIFT:Lcom/audible/mobile/membership/MemberGivingStatus;

    .line 9
    new-instance v0, Lcom/audible/mobile/membership/MemberGivingStatus;

    const/4 v3, 0x2

    const-string v4, "ASIN_NOT_GIVABLE"

    const-string v5, "AsinNotGivable"

    invoke-direct {v0, v4, v3, v5}, Lcom/audible/mobile/membership/MemberGivingStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/membership/MemberGivingStatus;->ASIN_NOT_GIVABLE:Lcom/audible/mobile/membership/MemberGivingStatus;

    .line 10
    new-instance v0, Lcom/audible/mobile/membership/MemberGivingStatus;

    const/4 v4, 0x3

    const-string v5, "MAX_INVITES_REACHED"

    const-string v6, "MaxCountReached"

    invoke-direct {v0, v5, v4, v6}, Lcom/audible/mobile/membership/MemberGivingStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/membership/MemberGivingStatus;->MAX_INVITES_REACHED:Lcom/audible/mobile/membership/MemberGivingStatus;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/audible/mobile/membership/MemberGivingStatus;

    .line 6
    sget-object v6, Lcom/audible/mobile/membership/MemberGivingStatus;->ELIGIBLE_TO_GIFT:Lcom/audible/mobile/membership/MemberGivingStatus;

    aput-object v6, v5, v1

    sget-object v1, Lcom/audible/mobile/membership/MemberGivingStatus;->NOT_ELIGIBLE_TO_GIFT:Lcom/audible/mobile/membership/MemberGivingStatus;

    aput-object v1, v5, v2

    sget-object v1, Lcom/audible/mobile/membership/MemberGivingStatus;->ASIN_NOT_GIVABLE:Lcom/audible/mobile/membership/MemberGivingStatus;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/audible/mobile/membership/MemberGivingStatus;->$VALUES:[Lcom/audible/mobile/membership/MemberGivingStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/audible/mobile/membership/MemberGivingStatus;->type:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/audible/mobile/membership/MemberGivingStatus;
    .locals 5

    .line 33
    invoke-static {}, Lcom/audible/mobile/membership/MemberGivingStatus;->values()[Lcom/audible/mobile/membership/MemberGivingStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 34
    invoke-virtual {v3}, Lcom/audible/mobile/membership/MemberGivingStatus;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/membership/MemberGivingStatus;
    .locals 1

    .line 6
    const-class v0, Lcom/audible/mobile/membership/MemberGivingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/membership/MemberGivingStatus;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/membership/MemberGivingStatus;
    .locals 1

    .line 6
    sget-object v0, Lcom/audible/mobile/membership/MemberGivingStatus;->$VALUES:[Lcom/audible/mobile/membership/MemberGivingStatus;

    invoke-virtual {v0}, [Lcom/audible/mobile/membership/MemberGivingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/membership/MemberGivingStatus;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/audible/mobile/membership/MemberGivingStatus;->type:Ljava/lang/String;

    return-object v0
.end method
