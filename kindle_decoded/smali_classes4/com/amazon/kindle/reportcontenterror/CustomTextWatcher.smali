.class public Lcom/amazon/kindle/reportcontenterror/CustomTextWatcher;
.super Ljava/lang/Object;
.source "CustomTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final MAX_LIMIT:I = 0x12c


# instance fields
.field private final button:Landroid/widget/Button;

.field private final isCommentMandatory:Z


# direct methods
.method public constructor <init>(Landroid/widget/Button;Z)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/kindle/reportcontenterror/CustomTextWatcher;->button:Landroid/widget/Button;

    .line 24
    iput-boolean p2, p0, Lcom/amazon/kindle/reportcontenterror/CustomTextWatcher;->isCommentMandatory:Z

    return-void
.end method

.method private truncateString(Landroid/text/Editable;)V
    .locals 4

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    .line 64
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x12c

    if-le v2, v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 67
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x12c

    if-le v0, v1, :cond_0

    .line 46
    invoke-direct {p0, p1}, Lcom/amazon/kindle/reportcontenterror/CustomTextWatcher;->truncateString(Landroid/text/Editable;)V

    .line 48
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kindle/reportcontenterror/CustomTextWatcher;->isCommentMandatory:Z

    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 50
    iget-object p1, p0, Lcom/amazon/kindle/reportcontenterror/CustomTextWatcher;->button:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/reportcontenterror/CustomTextWatcher;->button:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
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
