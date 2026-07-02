.class public final Lcom/amazon/bookwizard/util/K;
.super Ljava/lang/Object;
.source "K.java"


# static fields
.field public static final decisions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final views:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string/jumbo v0, "primeLandingView"

    const-string v1, "bookDetail"

    .line 32
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v2, "welcomeView"

    const-string v3, "genreSelectionView"

    const-string/jumbo v4, "ratingsView"

    const-string/jumbo v5, "recommendationsView"

    const-string v6, "kuUpsellView"

    const-string/jumbo v7, "payoffView"

    invoke-static/range {v2 .. v8}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/amazon/bookwizard/util/K;->views:Ljava/util/Set;

    const-string v0, "ku30DayEligibleDecision"

    const-string v1, "ku7DayEligibleDecision"

    const-string v2, "ku30DayAgreedDecision"

    .line 50
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/amazon/bookwizard/util/K;->decisions:Ljava/util/Set;

    return-void
.end method
