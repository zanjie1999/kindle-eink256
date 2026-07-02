.class public Lcom/amazon/whispersync/android/support/v4/view/MenuItemCompat;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;,
        Lcom/amazon/whispersync/android/support/v4/view/MenuItemCompat$BaseMenuVersionImpl;,
        Lcom/amazon/whispersync/android/support/v4/view/MenuItemCompat$MenuVersionImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/amazon/whispersync/android/support/v4/view/MenuItemCompat$MenuVersionImpl;

.field public static final SHOW_AS_ACTION_ALWAYS:I = 0x2

.field public static final SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW:I = 0x8

.field public static final SHOW_AS_ACTION_IF_ROOM:I = 0x1

.field public static final SHOW_AS_ACTION_NEVER:I = 0x0

.field public static final SHOW_AS_ACTION_WITH_TEXT:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 105
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/view/MenuItemCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/MenuItemCompat$MenuVersionImpl;

    goto :goto_0

    .line 107
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/MenuItemCompat$BaseMenuVersionImpl;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/view/MenuItemCompat$BaseMenuVersionImpl;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/view/MenuItemCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/MenuItemCompat$MenuVersionImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .line 133
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/MenuItemCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/MenuItemCompat$MenuVersionImpl;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public static setShowAsAction(Landroid/view/MenuItem;I)Z
    .locals 1

    .line 119
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/MenuItemCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/MenuItemCompat$MenuVersionImpl;->setShowAsAction(Landroid/view/MenuItem;I)Z

    move-result p0

    return p0
.end method
