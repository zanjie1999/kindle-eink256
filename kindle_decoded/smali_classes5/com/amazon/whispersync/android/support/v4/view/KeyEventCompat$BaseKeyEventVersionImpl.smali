.class Lcom/amazon/whispersync/android/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;
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
    name = "BaseKeyEventVersionImpl"
.end annotation


# static fields
.field private static final META_ALL_MASK:I = 0xf7

.field private static final META_MODIFIER_MASK:I = 0xf7


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static metaStateFilterDirectionalModifiers(IIIII)I
    .locals 3

    and-int v0, p1, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr p3, p4

    and-int/2addr p1, p3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    not-int p1, p3

    :goto_2
    and-int/2addr p0, p1

    return p0

    .line 55
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad arguments"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-eqz v1, :cond_4

    not-int p1, p2

    goto :goto_2

    :cond_4
    return p0
.end method


# virtual methods
.method public metaStateHasModifiers(II)Z
    .locals 4

    .line 78
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->normalizeMetaState(I)I

    move-result p1

    and-int/lit16 p1, p1, 0xf7

    const/4 v0, 0x1

    const/16 v1, 0x40

    const/16 v2, 0x80

    .line 79
    invoke-static {p1, p2, v0, v1, v2}, Lcom/amazon/whispersync/android/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p1

    const/4 v1, 0x2

    const/16 v2, 0x10

    const/16 v3, 0x20

    .line 81
    invoke-static {p1, p2, v1, v2, v3}, Lcom/amazon/whispersync/android/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public metaStateHasNoModifiers(I)Z
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->normalizeMetaState(I)I

    move-result p1

    and-int/lit16 p1, p1, 0xf7

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public normalizeMetaState(I)I
    .locals 1

    and-int/lit16 v0, p1, 0xc0

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    :cond_0
    and-int/lit8 v0, p1, 0x30

    if-eqz v0, :cond_1

    or-int/lit8 p1, p1, 0x2

    :cond_1
    and-int/lit16 p1, p1, 0xf7

    return p1
.end method
