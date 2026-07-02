.class final Lcom/amazon/kcp/home/feeds/HomeFeedManagerSingleton$INSTANCE$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HomeFeedManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/feeds/HomeFeedManagerSingleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/home/feeds/HomeFeedManagerSingleton$INSTANCE$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerSingleton$INSTANCE$1;

    invoke-direct {v0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerSingleton$INSTANCE$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerSingleton$INSTANCE$1;->INSTANCE:Lcom/amazon/kcp/home/feeds/HomeFeedManagerSingleton$INSTANCE$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;
    .locals 1

    .line 60
    new-instance v0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    invoke-direct {v0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerSingleton$INSTANCE$1;->invoke()Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    move-result-object v0

    return-object v0
.end method
