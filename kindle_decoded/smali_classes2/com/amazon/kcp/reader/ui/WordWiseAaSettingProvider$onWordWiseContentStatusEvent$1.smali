.class final Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$onWordWiseContentStatusEvent$1;
.super Ljava/lang/Object;
.source "WordWiseAaSettingProvider.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->onWordWiseContentStatusEvent(Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus$ContentStatusEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWordWiseAaSettingProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WordWiseAaSettingProvider.kt\ncom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$onWordWiseContentStatusEvent$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,241:1\n1819#2,2:242\n*E\n*S KotlinDebug\n*F\n+ 1 WordWiseAaSettingProvider.kt\ncom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$onWordWiseContentStatusEvent$1\n*L\n225#1,2:242\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$onWordWiseContentStatusEvent$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 222
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const-string v1, "WordWisePlugin.getSdk()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "WordWisePlugin.getSdk().context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$onWordWiseContentStatusEvent$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->access$getWordWiseModel$p(Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;)Lcom/amazon/kcp/reader/ui/WordWiseModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$onWordWiseContentStatusEvent$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;

    invoke-static {v2, v0, v1}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->access$createDisclosureContents(Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;Landroid/content/Context;Lcom/amazon/kcp/reader/ui/WordWiseModel;)Ljava/util/List;

    move-result-object v0

    .line 242
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    .line 226
    invoke-static {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateManager;->notifySettingUpdate(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V

    goto :goto_0

    :cond_0
    return-void
.end method
