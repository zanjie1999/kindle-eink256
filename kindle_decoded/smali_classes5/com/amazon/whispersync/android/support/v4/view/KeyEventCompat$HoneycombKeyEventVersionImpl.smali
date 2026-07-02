.class Lcom/amazon/whispersync/android/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"

# interfaces
.implements Lcom/amazon/whispersync/android/support/v4/view/KeyEventCompat$KeyEventVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/view/KeyEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HoneycombKeyEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public metaStateHasModifiers(II)Z
    .locals 0

    .line 103
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/KeyEventCompatHoneycomb;->metaStateHasModifiers(II)Z

    move-result p1

    return p1
.end method

.method public metaStateHasNoModifiers(I)Z
    .locals 0

    .line 108
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/KeyEventCompatHoneycomb;->metaStateHasNoModifiers(I)Z

    move-result p1

    return p1
.end method

.method public normalizeMetaState(I)I
    .locals 0

    .line 98
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/KeyEventCompatHoneycomb;->normalizeMetaState(I)I

    move-result p1

    return p1
.end method
