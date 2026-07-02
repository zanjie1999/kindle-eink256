.class Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$5;
.super Ljava/lang/Object;
.source "SeriesGroupingDebugMenuPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->initializeDeleteButton(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 168
    invoke-static {}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->access$000()Ljava/lang/String;

    .line 169
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/content/IGroupService;->deleteGroup(Lcom/amazon/kindle/model/content/IBookID;)V

    .line 170
    invoke-static {}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->access$000()Ljava/lang/String;

    return-void
.end method
