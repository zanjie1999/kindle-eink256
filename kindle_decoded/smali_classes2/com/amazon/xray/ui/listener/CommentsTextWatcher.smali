.class public Lcom/amazon/xray/ui/listener/CommentsTextWatcher;
.super Ljava/lang/Object;
.source "CommentsTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final sendButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/widget/Button;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/xray/ui/listener/CommentsTextWatcher;->sendButton:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 38
    iget-object v1, p0, Lcom/amazon/xray/ui/listener/CommentsTextWatcher;->sendButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/amazon/xray/ui/listener/CommentsTextWatcher;->sendButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/ui/listener/CommentsTextWatcher;->sendButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 41
    iget-object p1, p0, Lcom/amazon/xray/ui/listener/CommentsTextWatcher;->sendButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
