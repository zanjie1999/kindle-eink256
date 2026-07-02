.class Lcom/amazon/phl/PopularHighlightsSettingItemProvider$1;
.super Ljava/lang/Object;
.source "PopularHighlightsSettingItemProvider.java"

# interfaces
.implements Lcom/amazon/kindle/setting/item/template/OnToggleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/phl/PopularHighlightsSettingItemProvider;->createPopularHighlightsItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/phl/PopularHighlightsSettingItemProvider;


# direct methods
.method constructor <init>(Lcom/amazon/phl/PopularHighlightsSettingItemProvider;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/phl/PopularHighlightsSettingItemProvider$1;->this$0:Lcom/amazon/phl/PopularHighlightsSettingItemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(Landroid/content/Context;Z)V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/amazon/phl/PopularHighlightsSettingItemProvider$1;->this$0:Lcom/amazon/phl/PopularHighlightsSettingItemProvider;

    invoke-static {v0}, Lcom/amazon/phl/PopularHighlightsSettingItemProvider;->access$000(Lcom/amazon/phl/PopularHighlightsSettingItemProvider;)Lcom/amazon/phl/settings/PHLOnOffToggle;

    move-result-object v0

    xor-int/lit8 v1, p2, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->setValue(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/amazon/phl/PopularHighlightsSettingItemProvider$1;->this$0:Lcom/amazon/phl/PopularHighlightsSettingItemProvider;

    invoke-static {v0}, Lcom/amazon/phl/PopularHighlightsSettingItemProvider;->access$100(Lcom/amazon/phl/PopularHighlightsSettingItemProvider;)Lcom/amazon/phl/PopularHighlightsManager;

    move-result-object v0

    xor-int/lit8 v1, p2, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/phl/PopularHighlightsManager;->onSettingsChange(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 62
    iget-object v0, p0, Lcom/amazon/phl/PopularHighlightsSettingItemProvider$1;->this$0:Lcom/amazon/phl/PopularHighlightsSettingItemProvider;

    invoke-static {v0}, Lcom/amazon/phl/PopularHighlightsSettingItemProvider;->access$200(Lcom/amazon/phl/PopularHighlightsSettingItemProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/amazon/phl/settings/PHLSettingUtil;->savePopularHighlightsStatus(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 64
    iget-object p2, p0, Lcom/amazon/phl/PopularHighlightsSettingItemProvider$1;->this$0:Lcom/amazon/phl/PopularHighlightsSettingItemProvider;

    invoke-virtual {p2, p1}, Lcom/amazon/phl/PopularHighlightsSettingItemProvider;->notifyItemUpdate(Landroid/content/Context;)V

    return-void
.end method
