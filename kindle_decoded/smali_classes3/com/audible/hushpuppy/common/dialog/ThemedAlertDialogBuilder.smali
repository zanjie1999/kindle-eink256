.class public Lcom/audible/hushpuppy/common/dialog/ThemedAlertDialogBuilder;
.super Landroid/app/AlertDialog$Builder;
.source "ThemedAlertDialogBuilder.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 0

    .line 28
    invoke-static {p2}, Lcom/audible/hushpuppy/common/dialog/ThemedAlertDialogBuilder;->getDialogTheme(Lcom/amazon/kindle/krx/ui/ColorMode;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private static getDialogTheme(Lcom/amazon/kindle/krx/ui/ColorMode;)I
    .locals 1

    .line 34
    sget-object v0, Lcom/audible/hushpuppy/common/dialog/ThemedAlertDialogBuilder$1;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 44
    sget p0, Lcom/amazon/kindle/hushpuppy/plugin/R$style;->Theme_Dialog_White:I

    return p0

    .line 41
    :cond_0
    sget p0, Lcom/amazon/kindle/hushpuppy/plugin/R$style;->Theme_Dialog_Sepia:I

    return p0

    .line 39
    :cond_1
    sget p0, Lcom/amazon/kindle/hushpuppy/plugin/R$style;->Theme_Dialog_Green:I

    return p0

    .line 37
    :cond_2
    sget p0, Lcom/amazon/kindle/hushpuppy/plugin/R$style;->Theme_Dialog_Black:I

    return p0
.end method
