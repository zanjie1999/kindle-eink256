.class final Lcom/amazon/kcp/store/StoreTab$rootIntent$2;
.super Lkotlin/jvm/internal/Lambda;
.source "StoreTab.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/store/StoreTab;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/krx/ui/ScreenletIntent;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/store/StoreTab$rootIntent$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/store/StoreTab$rootIntent$2;

    invoke-direct {v0}, Lcom/amazon/kcp/store/StoreTab$rootIntent$2;-><init>()V

    sput-object v0, Lcom/amazon/kcp/store/StoreTab$rootIntent$2;->INSTANCE:Lcom/amazon/kcp/store/StoreTab$rootIntent$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/krx/ui/ScreenletIntent;
    .locals 2

    .line 41
    invoke-static {}, Lcom/amazon/kcp/store/StoreScreenlet;->newIntentForBaseStoreFront()Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object v0

    const-string v1, "StoreScreenlet.newIntentForBaseStoreFront()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreTab$rootIntent$2;->invoke()Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object v0

    return-object v0
.end method
