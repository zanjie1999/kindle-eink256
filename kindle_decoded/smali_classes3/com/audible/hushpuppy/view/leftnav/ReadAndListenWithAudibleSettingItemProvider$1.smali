.class Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider$1;
.super Ljava/lang/Object;
.source "ReadAndListenWithAudibleSettingItemProvider.java"

# interfaces
.implements Lcom/amazon/kindle/setting/item/template/OnClickHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider;->createAudibleSettingItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider$1;->this$0:Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/Context;)V
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider$1;->this$0:Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider;

    invoke-static {p1}, Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider;->access$000(Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider;)Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->getMatchmakerPanelRow()Lcom/audible/hushpuppy/view/leftnav/MatchmakerPanelRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/audible/hushpuppy/view/leftnav/MatchmakerPanelRow;->onClick()V

    return-void
.end method
