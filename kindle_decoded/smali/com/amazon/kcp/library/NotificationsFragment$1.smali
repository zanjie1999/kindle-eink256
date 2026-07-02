.class Lcom/amazon/kcp/library/NotificationsFragment$1;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Lcom/amazon/kindle/event/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/NotificationsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/event/IEventHandler<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/NotificationsFragment;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/amazon/kcp/library/NotificationsFragment$1;->this$0:Lcom/amazon/kcp/library/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventTypes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/event/EventType;",
            ">;"
        }
    .end annotation

    .line 107
    sget-object v0, Lcom/amazon/kcp/application/IAuthenticationManager;->COR_PFM_UPDATED:Lcom/amazon/kindle/event/EventType;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public handleEvent(Lcom/amazon/kindle/event/Event;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/event/Event<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 117
    iget-object p1, p0, Lcom/amazon/kcp/library/NotificationsFragment$1;->this$0:Lcom/amazon/kcp/library/NotificationsFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/NotificationsFragment;->populateSettingsList()V

    .line 118
    iget-object p1, p0, Lcom/amazon/kcp/library/NotificationsFragment$1;->this$0:Lcom/amazon/kcp/library/NotificationsFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/NotificationsFragment;->refreshList()V

    return-void
.end method
