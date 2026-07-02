.class Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$2;
.super Ljava/lang/Object;
.source "TextViewWithEndButton.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->reloadText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

.field final synthetic val$view:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$2;->this$0:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$2;->val$view:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$2;->val$view:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$2;->this$0:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->access$100(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$2;->this$0:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->access$200(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;Z)V

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$2;->val$view:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$2;->val$view:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    :goto_0
    return-void
.end method
