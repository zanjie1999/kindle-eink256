.class Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$1;
.super Ljava/lang/Object;
.source "TextViewWithEndButton.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

.field final synthetic val$alwaysShowLink:Z

.field final synthetic val$text:Ljava/lang/CharSequence;

.field final synthetic val$view:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;ZLjava/lang/CharSequence;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$1;->this$0:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$1;->val$view:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iput-boolean p3, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$1;->val$alwaysShowLink:Z

    iput-object p4, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$1;->val$text:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$1;->val$view:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$1;->this$0:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iget-boolean v1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$1;->val$alwaysShowLink:Z

    iget-object v2, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$1;->val$text:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->access$000(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;ZLjava/lang/CharSequence;)V

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$1;->val$view:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$1;->val$view:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    :goto_0
    return-void
.end method
