.class public final Lcom/amazon/kcp/home/feeds/HomeFeedManagerSingleton;
.super Ljava/lang/Object;
.source "HomeFeedManager.kt"


# static fields
.field private static final INSTANCE:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/amazon/kcp/home/feeds/HomeFeedManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerSingleton;

    invoke-direct {v0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerSingleton;-><init>()V

    .line 60
    sget-object v0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerSingleton$INSTANCE$1;->INSTANCE:Lcom/amazon/kcp/home/feeds/HomeFeedManagerSingleton$INSTANCE$1;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerSingleton;->INSTANCE:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/amazon/kcp/home/feeds/HomeFeedManager;
    .locals 1

    .line 63
    sget-object v0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerSingleton;->INSTANCE:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/home/feeds/HomeFeedManager;

    return-object v0
.end method
