.class public Lcom/amazon/kindle/utils/KindleDialogUtils;
.super Ljava/lang/Object;
.source "KindleDialogUtils.java"


# direct methods
.method public static getAlertDialogBuilder(Landroid/content/Context;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 2

    .line 20
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-static {p0}, Lcom/amazon/kindle/utils/KindleDialogUtils;->getTheme(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static getProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 2

    .line 24
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-static {p0}, Lcom/amazon/kindle/utils/KindleDialogUtils;->getTheme(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method private static getTheme(Landroid/content/Context;)I
    .locals 4

    .line 28
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$attr;->kindle_alert_dialog_theme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v1, Lcom/amazon/kindle/krl/R$attr;->alertDialogTheme:I

    invoke-virtual {p0, v1, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 36
    :cond_0
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method
