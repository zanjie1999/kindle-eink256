.class public final Lcom/amazon/kindle/inapp/notifications/tapaction/InvalidTapActionHandler;
.super Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;
.source "InvalidTapActionHandler.kt"


# instance fields
.field private final type:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;-><init>()V

    .line 14
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;->UNSUPPORTED:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/tapaction/InvalidTapActionHandler;->type:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    return-void
.end method


# virtual methods
.method public isValid(Lcom/amazon/kindle/inapp/notifications/util/TapAction;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public performTapAction(Lcom/amazon/kindle/inapp/notifications/util/Notification;Landroid/content/Context;)V
    .locals 1

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
