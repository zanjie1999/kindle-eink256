.class final Lcom/amazon/kcp/oob/LandingScreenTabsKt$discoverAndSort$result$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LandingScreenTabs.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/oob/LandingScreenTabsKt;->discoverAndSort(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/krx/ui/LandingScreenTab;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/oob/LandingScreenTabsKt$discoverAndSort$result$1;->$context:Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/krx/ui/LandingScreenTab;)I
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingScreenTabsKt$discoverAndSort$result$1;->$context:Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/LandingScreenTab;->getPriority(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/amazon/kindle/krx/ui/LandingScreenTab;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/oob/LandingScreenTabsKt$discoverAndSort$result$1;->invoke(Lcom/amazon/kindle/krx/ui/LandingScreenTab;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
