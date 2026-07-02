.class Lcom/amazon/xray/ui/widget/EnhancedTextView$1;
.super Ljava/lang/Object;
.source "EnhancedTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/xray/ui/widget/EnhancedTextView;->setTextWithExtras(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/widget/EnhancedTextView;

.field final synthetic val$link:Landroid/text/SpannableString;

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/amazon/xray/ui/widget/EnhancedTextView;Ljava/lang/CharSequence;Landroid/text/SpannableString;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView$1;->this$0:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    iput-object p2, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView$1;->val$text:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView$1;->val$link:Landroid/text/SpannableString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView$1;->this$0:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView$1;->this$0:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    iget-object v1, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView$1;->val$text:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView$1;->val$link:Landroid/text/SpannableString;

    invoke-static {v0, v1, v2}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->access$100(Lcom/amazon/xray/ui/widget/EnhancedTextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
