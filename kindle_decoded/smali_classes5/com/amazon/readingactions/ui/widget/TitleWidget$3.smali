.class Lcom/amazon/readingactions/ui/widget/TitleWidget$3;
.super Ljava/lang/Object;
.source "TitleWidget.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/TitleWidget;->setTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$titleView:Lcom/amazon/readingactions/ui/EllipsizableTextView;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/TitleWidget;Lcom/amazon/readingactions/ui/EllipsizableTextView;)V
    .locals 0

    .line 172
    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget$3;->val$titleView:Lcom/amazon/readingactions/ui/EllipsizableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget$3;->val$titleView:Lcom/amazon/readingactions/ui/EllipsizableTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 182
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget$3;->val$titleView:Lcom/amazon/readingactions/ui/EllipsizableTextView;

    new-instance v1, Lcom/amazon/readingactions/helpers/EllipsizedTextResizer;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-direct {v1, v0, v2}, Lcom/amazon/readingactions/helpers/EllipsizedTextResizer;-><init>(Lcom/amazon/readingactions/ui/EllipsizableTextView;F)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
