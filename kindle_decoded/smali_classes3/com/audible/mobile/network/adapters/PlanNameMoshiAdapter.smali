.class public final Lcom/audible/mobile/network/adapters/PlanNameMoshiAdapter;
.super Ljava/lang/Object;
.source "PlanNameMoshiAdapter.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/lang/String;)Lcom/audible/mobile/membership/PlanName;
    .locals 0

    .line 14
    invoke-static {p1}, Lcom/audible/mobile/membership/PlanName;->fromString(Ljava/lang/String;)Lcom/audible/mobile/membership/PlanName;

    move-result-object p1

    return-object p1
.end method
