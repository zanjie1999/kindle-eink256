.class public Lcom/amazon/ea/util/OfflineUtil;
.super Ljava/lang/Object;
.source "OfflineUtil.java"


# static fields
.field private static final COMMA:Ljava/lang/String; = ","

.field private static final COMMA_SPACE:Ljava/lang/String; = ", "

.field private static final MAX_TITLE_LENGTH:I = 0x32


# direct methods
.method public static populateOfflineBookImage(Landroid/widget/TextView;Ljava/lang/String;Ljava/util/List;Landroid/content/res/Resources;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            ")V"
        }
    .end annotation

    .line 39
    sget v0, Lcom/amazon/kindle/ea/R$drawable;->endactions_book_default:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 41
    invoke-static {p2}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatAuthorList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    const-string v0, ","

    const-string v1, ", "

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x32

    const/4 v3, 0x0

    if-le v0, v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_truncate_string:I

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    .line 44
    invoke-virtual {p3, v0, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 48
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p2, p1

    goto :goto_0

    :cond_1
    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_title_newline_by_author:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v1

    invoke-virtual {p3, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 51
    :goto_0
    sget-object p3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/high16 p3, -0x1000000

    .line 52
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Landroid/text/Spannable;

    new-instance p3, Landroid/text/style/ForegroundColorSpan;

    const v0, -0x777778

    invoke-direct {p3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x21

    invoke-interface {p0, p3, p1, p2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method
