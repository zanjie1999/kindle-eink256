.class public final Lcom/amazon/kindle/AppShortcutUtils$Companion;
.super Ljava/lang/Object;
.source "AppShortcutUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/AppShortcutUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/amazon/kindle/AppShortcutUtils$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createSplashIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getInstance()Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getLaunchActivity(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    .line 23
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "launchedFromShortcut"

    const/4 v0, 0x1

    .line 24
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "android.intent.action.MAIN"

    .line 25
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v1
.end method
