.class Lcom/amazon/kindle/s2k/SendToKindleActivity$4;
.super Ljava/lang/Object;
.source "SendToKindleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/s2k/SendToKindleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/s2k/SendToKindleActivity;)V
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$4;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 730
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$4;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    sget v0, Lcom/amazon/kindle/s2k/R$id;->title_edit_text:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 731
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$4;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    sget v1, Lcom/amazon/kindle/s2k/R$id;->author_edit_text:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 732
    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$4;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    sget v2, Lcom/amazon/kindle/s2k/R$id;->edit_title_author_button:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 733
    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$4;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v2}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$500(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 735
    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$4;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v2, v3}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$502(Lcom/amazon/kindle/s2k/SendToKindleActivity;Z)Z

    .line 736
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 737
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 738
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 739
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 740
    sget p1, Lcom/amazon/kindle/s2k/R$drawable;->edit_button_inactive:I

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 744
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$4;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$502(Lcom/amazon/kindle/s2k/SendToKindleActivity;Z)Z

    .line 745
    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 746
    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 747
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v2, 0x2

    new-array v5, v2, [Landroid/text/InputFilter;

    .line 748
    iget-object v6, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$4;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v6}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$600(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/text/InputFilter;

    move-result-object v6

    aput-object v6, v5, v3

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x100

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v4

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 749
    iget-object v5, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$4;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v5}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$700(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/text/TextWatcher;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 750
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 751
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    new-array p1, v2, [Landroid/text/InputFilter;

    .line 752
    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$4;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v2}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$600(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/text/InputFilter;

    move-result-object v2

    aput-object v2, p1, v3

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, p1, v4

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 753
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$4;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$800(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/text/TextWatcher;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 754
    sget p1, Lcom/amazon/kindle/s2k/R$drawable;->edit_button_active:I

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
