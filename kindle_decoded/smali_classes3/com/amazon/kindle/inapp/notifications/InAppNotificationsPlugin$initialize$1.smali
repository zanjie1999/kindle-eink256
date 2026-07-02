.class final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$initialize$1;
.super Ljava/lang/Object;
.source "InAppNotificationsPlugin.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$initialize$1;->$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu;
    .locals 2

    .line 42
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu;

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$initialize$1;->$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, p1, v1}, Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$initialize$1;->get(Landroid/content/Context;)Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu;

    move-result-object p1

    return-object p1
.end method
