.class public final Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider$BadgedBellIconItem;
.super Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
.source "BadgedBellIconProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BadgedBellIconItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
        "Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider$BadgedBellIconItem;->this$0:Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getBadgeText(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;->Companion:Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;->getCount()I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x9

    if-le p1, p2, :cond_1

    const-string p1, "9+"

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getBadgeText(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 41
    check-cast p2, Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider$BadgedBellIconItem;->getBadgeText(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getButtonIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "InAppNotificationsBellIcon"

    return-object v0
.end method

.method public getImage(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object p2, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;->Companion:Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Companion;

    invoke-virtual {p2}, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;->getFactory()Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactory;->getNavBellIconDrawable()I

    move-result p2

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string p2, "context.resources.getDrawable(bellIconID)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic getImage(Landroid/content/Context;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 41
    check-cast p2, Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider$BadgedBellIconItem;->getImage(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)I
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 41
    check-cast p1, Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider$BadgedBellIconItem;->getPriority(Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)I

    move-result p1

    return p1
.end method

.method public getText(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)Ljava/lang/String;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object p2, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;->Companion:Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion;

    invoke-virtual {p2}, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;->getCount()I

    move-result p2

    if-gtz p2, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/inapp/notifications/R$string;->accessibility_bell_icon_without_badge:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.resources.getStr\u2026_bell_icon_without_badge)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/inapp/notifications/R$string;->accessibility_bell_icon_with_badge:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.resources.getStr\u2026l_icon_with_badge, count)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getText(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 41
    check-cast p2, Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider$BadgedBellIconItem;->getText(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isVisible(Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic isVisible(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider$BadgedBellIconItem;->isVisible(Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)Z

    move-result p1

    return p1
.end method

.method public onClick(Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider$BadgedBellIconItem;->this$0:Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider$BadgedBellIconItem;->this$0:Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider$BadgedBellIconItem;->onClick(Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)Z

    move-result p1

    return p1
.end method
