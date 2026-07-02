.class Lcom/amazon/xray/ui/widget/EnhancedTextView$LinkSpan;
.super Landroid/text/style/CharacterStyle;
.source "EnhancedTextView.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/widget/EnhancedTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinkSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/widget/EnhancedTextView;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/widget/EnhancedTextView;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView$LinkSpan;->this$0:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/widget/EnhancedTextView;Lcom/amazon/xray/ui/widget/EnhancedTextView$1;)V
    .locals 0

    .line 499
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/EnhancedTextView$LinkSpan;-><init>(Lcom/amazon/xray/ui/widget/EnhancedTextView;)V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView$LinkSpan;->this$0:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->access$200(Lcom/amazon/xray/ui/widget/EnhancedTextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView$LinkSpan;->this$0:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->access$300(Lcom/amazon/xray/ui/widget/EnhancedTextView;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView$LinkSpan;->this$0:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->access$400(Lcom/amazon/xray/ui/widget/EnhancedTextView;)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x1

    .line 504
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/4 v0, 0x0

    .line 505
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
