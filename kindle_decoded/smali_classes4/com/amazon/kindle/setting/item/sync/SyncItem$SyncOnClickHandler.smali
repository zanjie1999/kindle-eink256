.class final Lcom/amazon/kindle/setting/item/sync/SyncItem$SyncOnClickHandler;
.super Ljava/lang/Object;
.source "SyncItem.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/template/OnClickHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/setting/item/sync/SyncItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncOnClickHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sync"

    .line 40
    invoke-static {v0}, Lcom/amazon/kcp/util/fastmetrics/MoreSettingsPageFastMetrics;->reportClickNonTogglableItem(Ljava/lang/String;)V

    .line 41
    invoke-static {p1}, Lcom/amazon/kcp/application/sync/SyncHelper;->initiateManualFullLibrarySync(Landroid/content/Context;)V

    return-void
.end method
