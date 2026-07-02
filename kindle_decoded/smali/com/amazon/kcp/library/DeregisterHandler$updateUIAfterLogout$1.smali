.class final Lcom/amazon/kcp/library/DeregisterHandler$updateUIAfterLogout$1;
.super Ljava/lang/Object;
.source "DeregisterHandler.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/DeregisterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler$updateUIAfterLogout$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/library/DeregisterHandler$updateUIAfterLogout$1;

    invoke-direct {v0}, Lcom/amazon/kcp/library/DeregisterHandler$updateUIAfterLogout$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/DeregisterHandler$updateUIAfterLogout$1;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler$updateUIAfterLogout$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 151
    sget-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/DeregisterHandler;->getFragmentWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "SettingsFragment_SpinnerDialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 154
    :goto_0
    instance-of v1, v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v1, :cond_2

    .line 155
    check-cast v0, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_1

    .line 158
    :cond_1
    sget-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/DeregisterHandler;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fragment and fragment.fragmentManager shouldn\'t be null"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    sget-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/MetricsUtils;->emitNullFragmentMetric(Ljava/lang/String;)V

    .line 162
    :cond_2
    :goto_1
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    .line 163
    new-instance v1, Lcom/amazon/kindle/sdcard/SettingListRefreshEvent;

    sget-object v2, Lcom/amazon/kcp/library/DeregisterHandler;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "this.javaClass.simpleName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/amazon/kindle/sdcard/SettingListRefreshEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
