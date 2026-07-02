.class public final Lcom/amazon/kcp/reader/SelectionSettingItemProvider$createSelectionItem$1;
.super Ljava/lang/Object;
.source "SelectionSettingItemProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/template/OnToggleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/SelectionSettingItemProvider;->createSelectionItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/SelectionSettingItemProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/SelectionSettingItemProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/amazon/kcp/reader/SelectionSettingItemProvider$createSelectionItem$1;->this$0:Lcom/amazon/kcp/reader/SelectionSettingItemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/reader/SelectionSettingItemProvider$createSelectionItem$1;->this$0:Lcom/amazon/kcp/reader/SelectionSettingItemProvider;

    xor-int/lit8 p2, p2, 0x1

    invoke-static {v0, p2}, Lcom/amazon/kcp/reader/SelectionSettingItemProvider;->access$toggled(Lcom/amazon/kcp/reader/SelectionSettingItemProvider;Z)V

    .line 49
    invoke-static {}, Lcom/amazon/kindle/setting/item/ItemsUpdateServiceSingleton;->getInstance()Lcom/amazon/kindle/setting/item/ItemsUpdateService;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/kcp/reader/SelectionSettingItemProvider$createSelectionItem$1;->this$0:Lcom/amazon/kcp/reader/SelectionSettingItemProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/SelectionSettingItemProvider;->createSelectionItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/kindle/setting/item/ItemsUpdateService;->notifyItemUpdate(Lcom/amazon/kindle/setting/item/Item;)V

    return-void
.end method
