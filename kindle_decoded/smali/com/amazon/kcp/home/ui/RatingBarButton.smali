.class public final Lcom/amazon/kcp/home/ui/RatingBarButton;
.super Landroid/widget/RatingBar;
.source "RatingBarButton.kt"


# instance fields
.field private onClickListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/home/ui/RatingBarButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/home/ui/RatingBarButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    sget-object p1, Lcom/amazon/kcp/home/ui/RatingBarButton$onClickListener$1;->INSTANCE:Lcom/amazon/kcp/home/ui/RatingBarButton$onClickListener$1;

    iput-object p1, p0, Lcom/amazon/kcp/home/ui/RatingBarButton;->onClickListener:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    .line 30
    invoke-virtual {p0, p1}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 19
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/home/ui/RatingBarButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final getOnClickListener()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/RatingBarButton;->onClickListener:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 34
    invoke-super {p0, p1}, Landroid/widget/RatingBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/amazon/kcp/home/ui/RatingBarButton;->performClick()Z

    :cond_0
    return v0
.end method

.method public performClick()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/RatingBarButton;->onClickListener:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-super {p0}, Landroid/widget/RatingBar;->performClick()Z

    const/4 v0, 0x1

    return v0
.end method

.method public final setOnClickListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/RatingBarButton;->onClickListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method
