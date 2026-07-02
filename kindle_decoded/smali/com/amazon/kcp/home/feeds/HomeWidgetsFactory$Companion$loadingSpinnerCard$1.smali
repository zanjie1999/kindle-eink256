.class public final Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion$loadingSpinnerCard$1;
.super Lcom/amazon/kindle/home/card/AbstractHomeCard;
.source "HomeWidgetsFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final priority:I

.field private final viewLayoutId:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 133
    invoke-direct {p0}, Lcom/amazon/kindle/home/card/AbstractHomeCard;-><init>()V

    const v0, 0x7fffffff

    .line 135
    iput v0, p0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion$loadingSpinnerCard$1;->priority:I

    .line 137
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->loading_spinner:I

    iput v0, p0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion$loadingSpinnerCard$1;->viewLayoutId:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/amazon/kindle/home/action/HomeActionManager;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "am"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getPriority()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion$loadingSpinnerCard$1;->priority:I

    return v0
.end method

.method public getState()Lcom/amazon/kindle/home/card/HomeCardState;
    .locals 1

    .line 139
    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->READY:Lcom/amazon/kindle/home/card/HomeCardState;

    return-object v0
.end method

.method public getViewLayoutId()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion$loadingSpinnerCard$1;->viewLayoutId:I

    return v0
.end method

.method public reportImpressionData(Z)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Spinner"

    return-object v0
.end method
