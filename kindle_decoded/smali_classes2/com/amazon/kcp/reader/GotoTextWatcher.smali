.class public Lcom/amazon/kcp/reader/GotoTextWatcher;
.super Ljava/lang/Object;
.source "GotoTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final maxLength:I

.field private oldString:Ljava/lang/CharSequence;

.field private revertText:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/amazon/kcp/reader/GotoTextWatcher;->maxLength:I

    const-string p1, ""

    .line 24
    iput-object p1, p0, Lcom/amazon/kcp/reader/GotoTextWatcher;->oldString:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/GotoTextWatcher;->revertText:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 77
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/GotoTextWatcher;->oldString:Ljava/lang/CharSequence;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 80
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/GotoTextWatcher;->oldString:Ljava/lang/CharSequence;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const/4 p2, 0x1

    .line 44
    iput-boolean p2, p0, Lcom/amazon/kcp/reader/GotoTextWatcher;->revertText:Z

    .line 48
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_0

    .line 51
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lt p1, p2, :cond_0

    .line 53
    iget p2, p0, Lcom/amazon/kcp/reader/GotoTextWatcher;->maxLength:I

    if-gt p1, p2, :cond_0

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/GotoTextWatcher;->revertText:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
