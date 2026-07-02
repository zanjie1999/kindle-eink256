.class public abstract Lcom/amazon/kindle/home/card/AbstractHomeCard;
.super Ljava/lang/Object;
.source "AbstractHomeCard.kt"

# interfaces
.implements Lcom/amazon/kindle/home/card/HomeCard;


# instance fields
.field private hasBeenShownToUser:Z

.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/amazon/kindle/home/card/AbstractHomeCard;->position:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/amazon/kindle/home/action/HomeActionManager;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "am"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance p1, Lkotlin/NotImplementedError;

    const-string p2, "Must implement bindView(View, HomeActionManager) or bindView(View, HomeWidgetListener, HomeActionManager)"

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bindView(Landroid/view/View;Lcom/amazon/kindle/home/card/HomeWidgetListener;Lcom/amazon/kindle/home/action/HomeActionManager;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "am"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, p1, p3}, Lcom/amazon/kindle/home/card/AbstractHomeCard;->bindView(Landroid/view/View;Lcom/amazon/kindle/home/action/HomeActionManager;)V

    return-void
.end method

.method public getDisplayPosition()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/amazon/kindle/home/card/AbstractHomeCard;->position:I

    return v0
.end method

.method public getHasBeenShownToUser()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/amazon/kindle/home/card/AbstractHomeCard;->hasBeenShownToUser:Z

    return v0
.end method

.method public onConfigurationChange()V
    .locals 0

    return-void
.end method

.method public onDismiss()V
    .locals 0

    return-void
.end method

.method public reportImpressionData(Z)V
    .locals 0

    return-void
.end method

.method public setDisplayPosition(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/amazon/kindle/home/card/AbstractHomeCard;->position:I

    return-void
.end method

.method public setHasBeenShownToUser(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/amazon/kindle/home/card/AbstractHomeCard;->hasBeenShownToUser:Z

    return-void
.end method
