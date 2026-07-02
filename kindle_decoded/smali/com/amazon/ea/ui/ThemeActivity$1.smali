.class Lcom/amazon/ea/ui/ThemeActivity$1;
.super Ljava/lang/Object;
.source "ThemeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/ThemeActivity;->onThemeChangedEvent(Lcom/amazon/kindle/krx/events/ThemeChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/ThemeActivity;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/ThemeActivity;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amazon/ea/ui/ThemeActivity$1;->this$0:Lcom/amazon/ea/ui/ThemeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 61
    invoke-static {}, Lcom/amazon/ea/ui/ThemeActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onThemeChangedEvent received."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/amazon/ea/ui/ThemeActivity$1;->this$0:Lcom/amazon/ea/ui/ThemeActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
