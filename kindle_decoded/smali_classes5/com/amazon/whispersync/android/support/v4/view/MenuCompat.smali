.class public Lcom/amazon/whispersync/android/support/v4/view/MenuCompat;
.super Ljava/lang/Object;
.source "MenuCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/support/v4/view/MenuCompat$HoneycombMenuVersionImpl;,
        Lcom/amazon/whispersync/android/support/v4/view/MenuCompat$BaseMenuVersionImpl;,
        Lcom/amazon/whispersync/android/support/v4/view/MenuCompat$MenuVersionImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/amazon/whispersync/android/support/v4/view/MenuCompat$MenuVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 61
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/MenuCompat$HoneycombMenuVersionImpl;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/view/MenuCompat$HoneycombMenuVersionImpl;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/view/MenuCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/MenuCompat$MenuVersionImpl;

    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/MenuCompat$BaseMenuVersionImpl;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/view/MenuCompat$BaseMenuVersionImpl;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/view/MenuCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/MenuCompat$MenuVersionImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setShowAsAction(Landroid/view/MenuItem;I)Z
    .locals 1

    .line 79
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/MenuCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/MenuCompat$MenuVersionImpl;

    invoke-interface {v0, p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/MenuCompat$MenuVersionImpl;->setShowAsAction(Landroid/view/MenuItem;I)Z

    move-result p0

    return p0
.end method
