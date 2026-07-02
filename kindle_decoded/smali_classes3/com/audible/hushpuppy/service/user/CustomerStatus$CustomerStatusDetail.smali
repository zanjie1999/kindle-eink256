.class public Lcom/audible/hushpuppy/service/user/CustomerStatus$CustomerStatusDetail;
.super Ljava/lang/Object;
.source "CustomerStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/service/user/CustomerStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomerStatusDetail"
.end annotation


# instance fields
.field private final ayceBenefit:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ayce_benefit"
    .end annotation
.end field

.field private final isEligibleMemberGiver:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_eligible_member_giver"
    .end annotation
.end field

.field private final memberGiving:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "member_giving"
    .end annotation
.end field

.field private final primeChannelsBenefit:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prime_channels_benefit"
    .end annotation
.end field

.field private final prospectBenefit:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prospect_benefit"
    .end annotation
.end field

.field private final radioBenefit:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "radio_benefit"
    .end annotation
.end field


# virtual methods
.method public final getProspectBenefit()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/audible/hushpuppy/service/user/CustomerStatus$CustomerStatusDetail;->prospectBenefit:Ljava/lang/String;

    return-object v0
.end method
