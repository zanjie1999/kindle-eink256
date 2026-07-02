.class final Lcom/amazon/kcp/library/BookOpenHelper$4;
.super Ljava/lang/Object;
.source "BookOpenHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/BookOpenHelper;->openBookOrSample(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$syncCallBack:Lcom/amazon/foundation/internal/IBooleanCallback;


# direct methods
.method constructor <init>(Lcom/amazon/foundation/internal/IBooleanCallback;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/amazon/kcp/library/BookOpenHelper$4;->val$syncCallBack:Lcom/amazon/foundation/internal/IBooleanCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 352
    invoke-static {}, Lcom/amazon/kcp/library/BookOpenHelper;->access$000()Ljava/lang/String;

    .line 353
    new-instance v6, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->LIBRARY_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    iget-object v5, p0, Lcom/amazon/kcp/library/BookOpenHelper$4;->val$syncCallBack:Lcom/amazon/foundation/internal/IBooleanCallback;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IBooleanCallback;)V

    .line 354
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v0

    .line 355
    invoke-virtual {v0, v6}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    return-void
.end method
