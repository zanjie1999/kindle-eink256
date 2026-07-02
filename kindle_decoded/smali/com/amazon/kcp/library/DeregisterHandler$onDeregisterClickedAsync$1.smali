.class final Lcom/amazon/kcp/library/DeregisterHandler$onDeregisterClickedAsync$1;
.super Ljava/lang/Object;
.source "DeregisterHandler.kt"

# interfaces
.implements Lcom/amazon/foundation/internal/IBooleanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/DeregisterHandler;->onDeregisterClickedAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler$onDeregisterClickedAsync$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/library/DeregisterHandler$onDeregisterClickedAsync$1;

    invoke-direct {v0}, Lcom/amazon/kcp/library/DeregisterHandler$onDeregisterClickedAsync$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/DeregisterHandler$onDeregisterClickedAsync$1;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler$onDeregisterClickedAsync$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Z)V
    .locals 2

    .line 98
    sget-object p1, Lcom/amazon/kcp/library/DeregisterHandler;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-static {p1}, Lcom/amazon/kcp/library/DeregisterHandler;->access$getAndroidApplicationController$p(Lcom/amazon/kcp/library/DeregisterHandler;)Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    const-string v0, "androidApplicationController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string v0, "KindleObjectFactorySingl\u2026ntroller.currentActivity)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getRegistrationManager()Lcom/amazon/kcp/application/IRegistrationManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-static {v0}, Lcom/amazon/kcp/library/DeregisterHandler;->access$getLogoutSuccess$p(Lcom/amazon/kcp/library/DeregisterHandler;)Lcom/amazon/foundation/ICallback;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/DeregisterHandler;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-static {v1}, Lcom/amazon/kcp/library/DeregisterHandler;->access$getMapLogoutFailure$p(Lcom/amazon/kcp/library/DeregisterHandler;)Lcom/amazon/foundation/IStringCallback;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kcp/application/IRegistrationManager;->deregisterDevice(Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/IStringCallback;)V

    return-void
.end method
