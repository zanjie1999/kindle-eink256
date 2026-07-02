.class Lcom/amazon/xray/ui/activity/XrayActivity$1;
.super Ljava/lang/Object;
.source "XrayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/xray/ui/activity/XrayActivity;->onThemeChangedEvent(Lcom/amazon/kindle/krx/events/ThemeChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/activity/XrayActivity;


# direct methods
.method constructor <init>(Lcom/amazon/xray/ui/activity/XrayActivity;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/amazon/xray/ui/activity/XrayActivity$1;->this$0:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 454
    invoke-static {}, Lcom/amazon/xray/ui/activity/XrayActivity;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onThemeChangedEvent received."

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity$1;->this$0:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
