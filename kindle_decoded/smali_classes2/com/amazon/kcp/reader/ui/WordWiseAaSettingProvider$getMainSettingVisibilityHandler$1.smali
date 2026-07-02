.class final Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$getMainSettingVisibilityHandler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WordWiseAaSettingProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->getMainSettingVisibilityHandler()Lkotlin/jvm/functions/Function0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/krx/viewoptions/DisplayState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$getMainSettingVisibilityHandler$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/krx/viewoptions/DisplayState;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$getMainSettingVisibilityHandler$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->access$isWordWiseDownloading(Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->DISABLED:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    goto :goto_0

    .line 171
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->ENABLED:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$getMainSettingVisibilityHandler$1;->invoke()Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    move-result-object v0

    return-object v0
.end method
