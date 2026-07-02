.class abstract Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$BaseOnClickListener;
.super Ljava/lang/Object;
.source "HeaderWidgetController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseOnClickListener"
.end annotation


# instance fields
.field private final expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

.field private final parentView:Landroid/view/View;

.field private final seeLessButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;",
            "Landroid/widget/Button;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string p1, "expandingTextView"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "seeLessButton"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "parentView"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$BaseOnClickListener;->expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iput-object p3, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$BaseOnClickListener;->seeLessButton:Landroid/widget/Button;

    iput-object p4, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$BaseOnClickListener;->parentView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected final getExpandingTextView()Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$BaseOnClickListener;->expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    return-object v0
.end method

.method protected final getParentView()Landroid/view/View;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$BaseOnClickListener;->parentView:Landroid/view/View;

    return-object v0
.end method

.method protected final getSeeLessButton()Landroid/widget/Button;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$BaseOnClickListener;->seeLessButton:Landroid/widget/Button;

    return-object v0
.end method
