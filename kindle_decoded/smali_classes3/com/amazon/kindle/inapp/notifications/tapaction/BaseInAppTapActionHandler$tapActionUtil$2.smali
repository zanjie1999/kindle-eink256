.class final Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler$tapActionUtil$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseInAppTapActionHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/inapp/notifications/tapaction/TapActionUtil;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler$tapActionUtil$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler$tapActionUtil$2;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler$tapActionUtil$2;-><init>()V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler$tapActionUtil$2;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler$tapActionUtil$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/inapp/notifications/tapaction/TapActionUtil;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;->Companion:Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;->getFactory()Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactory;->getTapActionUtil()Lcom/amazon/kindle/inapp/notifications/tapaction/TapActionUtil;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler$tapActionUtil$2;->invoke()Lcom/amazon/kindle/inapp/notifications/tapaction/TapActionUtil;

    move-result-object v0

    return-object v0
.end method
