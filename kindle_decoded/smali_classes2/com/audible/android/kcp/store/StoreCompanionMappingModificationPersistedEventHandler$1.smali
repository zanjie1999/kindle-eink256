.class Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler$1;
.super Ljava/lang/Object;
.source "StoreCompanionMappingModificationPersistedEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;->onEventAsync(Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;


# direct methods
.method constructor <init>(Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler$1;->this$0:Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler$1;->this$0:Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;

    invoke-static {v0}, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;->access$000(Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;)Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->isActivityDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler$1;->this$0:Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;

    invoke-static {v0}, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;->access$000(Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;)Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
