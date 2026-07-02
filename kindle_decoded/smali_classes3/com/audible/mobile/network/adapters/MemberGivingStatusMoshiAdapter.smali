.class public final Lcom/audible/mobile/network/adapters/MemberGivingStatusMoshiAdapter;
.super Ljava/lang/Object;
.source "MemberGivinStatusMoshiAdapter.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/lang/String;)Lcom/audible/mobile/membership/MemberGivingStatus;
    .locals 0

    if-eqz p1, :cond_0

    .line 14
    invoke-static {p1}, Lcom/audible/mobile/membership/MemberGivingStatus;->fromString(Ljava/lang/String;)Lcom/audible/mobile/membership/MemberGivingStatus;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
