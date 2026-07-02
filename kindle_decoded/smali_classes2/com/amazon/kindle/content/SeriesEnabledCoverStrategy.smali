.class public final Lcom/amazon/kindle/content/SeriesEnabledCoverStrategy;
.super Lcom/amazon/kindle/content/BaseCoverOrderStrategy;
.source "CoverOrderStrategy.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/content/SeriesEnabledCoverStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/amazon/kindle/content/SeriesEnabledCoverStrategy;

    invoke-direct {v0}, Lcom/amazon/kindle/content/SeriesEnabledCoverStrategy;-><init>()V

    sput-object v0, Lcom/amazon/kindle/content/SeriesEnabledCoverStrategy;->INSTANCE:Lcom/amazon/kindle/content/SeriesEnabledCoverStrategy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/amazon/kindle/content/BaseCoverOrderStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrder(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/db/OrderBy;
    .locals 1

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/BaseCoverOrderStrategy;->isFalkor(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isFalkor(groupId)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/content/BaseCoverOrderStrategy;->getDESCENDING_ORDER()Lcom/amazon/kindle/db/OrderBy;

    move-result-object p1

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/content/BaseCoverOrderStrategy;->getASCENDING_ORDER()Lcom/amazon/kindle/db/OrderBy;

    move-result-object p1

    :goto_0
    return-object p1
.end method
