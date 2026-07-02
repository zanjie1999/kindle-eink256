.class public Lcom/amazon/kcp/reader/ui/StyleUtils;
.super Ljava/lang/Object;
.source "StyleUtils.java"


# direct methods
.method public static getStyledFontFamily(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    .line 27
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const v2, 0x10103ac

    const/4 v3, 0x1

    .line 28
    invoke-virtual {p0, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 29
    iget-object p0, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0
.end method
