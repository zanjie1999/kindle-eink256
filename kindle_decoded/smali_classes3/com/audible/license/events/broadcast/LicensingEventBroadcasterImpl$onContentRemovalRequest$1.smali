.class final Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl$onContentRemovalRequest$1;
.super Ljava/lang/Object;
.source "LicensingEventBroadcasterImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl;->onContentRemovalRequest(Lcom/audible/mobile/domain/Asin;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLicensingEventBroadcasterImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LicensingEventBroadcasterImpl.kt\ncom/audible/license/events/broadcast/LicensingEventBroadcasterImpl$onContentRemovalRequest$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,48:1\n1648#2,2:49\n*E\n*S KotlinDebug\n*F\n+ 1 LicensingEventBroadcasterImpl.kt\ncom/audible/license/events/broadcast/LicensingEventBroadcasterImpl$onContentRemovalRequest$1\n*L\n42#1,2:49\n*E\n"
.end annotation


# instance fields
.field final synthetic $asin:Lcom/audible/mobile/domain/Asin;

.field final synthetic this$0:Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl;


# direct methods
.method constructor <init>(Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl;Lcom/audible/mobile/domain/Asin;)V
    .locals 0

    iput-object p1, p0, Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl$onContentRemovalRequest$1;->this$0:Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl;

    iput-object p2, p0, Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl$onContentRemovalRequest$1;->$asin:Lcom/audible/mobile/domain/Asin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl$onContentRemovalRequest$1;->this$0:Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl;

    invoke-static {v0}, Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl;->access$getEventListeners$p(Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/license/events/LicensingEventListener;

    .line 43
    iget-object v2, p0, Lcom/audible/license/events/broadcast/LicensingEventBroadcasterImpl$onContentRemovalRequest$1;->$asin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v1, v2}, Lcom/audible/license/events/LicensingEventListener;->onContentRemovalRequest(Lcom/audible/mobile/domain/Asin;)V

    goto :goto_0

    :cond_0
    return-void
.end method
