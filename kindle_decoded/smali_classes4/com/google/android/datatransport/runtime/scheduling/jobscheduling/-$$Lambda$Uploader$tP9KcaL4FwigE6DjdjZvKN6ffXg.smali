.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$tP9KcaL4FwigE6DjdjZvKN6ffXg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;


# instance fields
.field private final synthetic f$0:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

.field private final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$tP9KcaL4FwigE6DjdjZvKN6ffXg;->f$0:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$tP9KcaL4FwigE6DjdjZvKN6ffXg;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$tP9KcaL4FwigE6DjdjZvKN6ffXg;->f$0:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$tP9KcaL4FwigE6DjdjZvKN6ffXg;->f$1:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->lambda$logAndUpdateState$6$Uploader(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
