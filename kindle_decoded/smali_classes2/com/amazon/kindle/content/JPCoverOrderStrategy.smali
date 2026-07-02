.class public final Lcom/amazon/kindle/content/JPCoverOrderStrategy;
.super Lcom/amazon/kindle/content/BaseCoverOrderStrategy;
.source "CoverOrderStrategy.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/content/JPCoverOrderStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/amazon/kindle/content/JPCoverOrderStrategy;

    invoke-direct {v0}, Lcom/amazon/kindle/content/JPCoverOrderStrategy;-><init>()V

    sput-object v0, Lcom/amazon/kindle/content/JPCoverOrderStrategy;->INSTANCE:Lcom/amazon/kindle/content/JPCoverOrderStrategy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/amazon/kindle/content/BaseCoverOrderStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrder(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/db/OrderBy;
    .locals 2

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/BaseCoverOrderStrategy;->isFalkor(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isFalkor(groupId)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/content/BaseCoverOrderStrategy;->getDESCENDING_ORDER()Lcom/amazon/kindle/db/OrderBy;

    move-result-object p1

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/utils/GroupContentHelper;->isComicGroup(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/BaseCoverOrderStrategy;->getASCENDING_ORDER()Lcom/amazon/kindle/db/OrderBy;

    move-result-object p1

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/content/BaseCoverOrderStrategy;->getDESCENDING_ORDER()Lcom/amazon/kindle/db/OrderBy;

    move-result-object p1

    :goto_0
    return-object p1
.end method
