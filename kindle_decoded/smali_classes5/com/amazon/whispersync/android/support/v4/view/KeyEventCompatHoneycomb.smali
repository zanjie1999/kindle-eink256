.class Lcom/amazon/whispersync/android/support/v4/view/KeyEventCompatHoneycomb;
.super Ljava/lang/Object;
.source "KeyEventCompatHoneycomb.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static metaStateHasModifiers(II)Z
    .locals 0

    .line 30
    invoke-static {p0, p1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p0

    return p0
.end method

.method public static metaStateHasNoModifiers(I)Z
    .locals 0

    .line 34
    invoke-static {p0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p0

    return p0
.end method

.method public static normalizeMetaState(I)I
    .locals 0

    .line 26
    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p0

    return p0
.end method
