.class public Lcom/amazon/whispersync/android/support/v4/view/ViewConfigurationCompat;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/support/v4/view/ViewConfigurationCompat$FroyoViewConfigurationVersionImpl;,
        Lcom/amazon/whispersync/android/support/v4/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl;,
        Lcom/amazon/whispersync/android/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/amazon/whispersync/android/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 59
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/ViewConfigurationCompat$FroyoViewConfigurationVersionImpl;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewConfigurationCompat$FroyoViewConfigurationVersionImpl;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/view/ViewConfigurationCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;

    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/view/ViewConfigurationCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
    .locals 1

    .line 73
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/ViewConfigurationCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;

    invoke-interface {v0, p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result p0

    return p0
.end method
