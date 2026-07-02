.class Lcom/amazon/kcp/library/AllDownloadToggleDelegate$1;
.super Ljava/lang/Object;
.source "AllDownloadToggleDelegate.java"

# interfaces
.implements Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/AllDownloadToggleDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/AllDownloadToggleDelegate;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/AllDownloadToggleDelegate;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/kcp/library/AllDownloadToggleDelegate$1;->this$0:Lcom/amazon/kcp/library/AllDownloadToggleDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(Lcom/amazon/kindle/library/widget/DownloadedToggle;Z)V
    .locals 4

    if-eqz p2, :cond_0

    .line 40
    sget-object p1, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/library/LibraryGroupType;->DEVICE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 43
    :goto_0
    iget-object p2, p0, Lcom/amazon/kcp/library/AllDownloadToggleDelegate$1;->this$0:Lcom/amazon/kcp/library/AllDownloadToggleDelegate;

    invoke-static {p2}, Lcom/amazon/kcp/library/AllDownloadToggleDelegate;->access$000(Lcom/amazon/kcp/library/AllDownloadToggleDelegate;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/AllDownloadToggleDelegate$CloudDeviceStateChangeListener;

    .line 44
    invoke-static {}, Lcom/amazon/kcp/library/AllDownloadToggleDelegate;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All/Download onToggle GroupType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/AllDownloadToggleDelegate$CloudDeviceStateChangeListener;->onStateChange(Lcom/amazon/kindle/krx/library/LibraryGroupType;)V

    goto :goto_1

    :cond_1
    return-void
.end method
