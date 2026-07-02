.class public final Lcom/amazon/kindle/inapp/notifications/theme/ThemeActivity$onThemeChangedEvent$1;
.super Ljava/lang/Object;
.source "ThemeActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/theme/ThemeActivity;->onThemeChangedEvent(Lcom/amazon/kindle/krx/events/ThemeChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/inapp/notifications/theme/ThemeActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/inapp/notifications/theme/ThemeActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/theme/ThemeActivity$onThemeChangedEvent$1;->this$0:Lcom/amazon/kindle/inapp/notifications/theme/ThemeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 92
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/theme/ThemeActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onThemeChangedEvent received."

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/theme/ThemeActivity$onThemeChangedEvent$1;->this$0:Lcom/amazon/kindle/inapp/notifications/theme/ThemeActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
