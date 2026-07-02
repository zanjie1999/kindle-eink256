.class Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity$3;
.super Ljava/lang/Object;
.source "AbstractAudibleStoreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->onThemeChangedEvent(Lcom/amazon/kindle/krx/events/ThemeChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;


# direct methods
.method constructor <init>(Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity$3;->this$0:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 476
    invoke-static {}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->access$200()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "ThemeChangedEvent received. Restarting activity."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity$3;->this$0:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
