.class Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;
.super Ljava/lang/Object;
.source "AudibleDebugMenuProvider.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$audiblePreProdWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/AudiblePreProdWebStoreUriTranslator;

.field final synthetic val$audiblePreprodWeb:Landroid/widget/RadioButton;

.field final synthetic val$audibleSandboxWeb:Landroid/widget/RadioButton;

.field final synthetic val$audibleSandboxWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/AudibleSandBoxWebStoreUriTranslator;

.field final synthetic val$button:Landroid/widget/Button;

.field final synthetic val$composedUriTranslator:Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;

.field final synthetic val$customEndpointEditText:Landroid/widget/EditText;

.field final synthetic val$customWeb:Landroid/widget/RadioButton;

.field final synthetic val$customWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;

.field final synthetic val$globalPreProdWeb:Landroid/widget/RadioButton;

.field final synthetic val$globalPreProdWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/AmazonGlobalPreProdWebStoreUriTranslator;

.field final synthetic val$prod:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;Landroid/widget/RadioButton;Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;Lcom/audible/hushpuppy/common/debug/AmazonGlobalPreProdWebStoreUriTranslator;Lcom/audible/hushpuppy/common/debug/AudiblePreProdWebStoreUriTranslator;Lcom/audible/hushpuppy/common/debug/AudibleSandBoxWebStoreUriTranslator;Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/EditText;Landroid/widget/Button;)V
    .locals 0

    .line 104
    iput-object p2, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$prod:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$composedUriTranslator:Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;

    iput-object p4, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$globalPreProdWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/AmazonGlobalPreProdWebStoreUriTranslator;

    iput-object p5, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$audiblePreProdWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/AudiblePreProdWebStoreUriTranslator;

    iput-object p6, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$audibleSandboxWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/AudibleSandBoxWebStoreUriTranslator;

    iput-object p7, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$customWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;

    iput-object p8, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$globalPreProdWeb:Landroid/widget/RadioButton;

    iput-object p9, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$audiblePreprodWeb:Landroid/widget/RadioButton;

    iput-object p10, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$audibleSandboxWeb:Landroid/widget/RadioButton;

    iput-object p11, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$customWeb:Landroid/widget/RadioButton;

    iput-object p12, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$customEndpointEditText:Landroid/widget/EditText;

    iput-object p13, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$button:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 107
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$prod:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 108
    invoke-static {}, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string p2, "Setting to prod endpoint"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$composedUriTranslator:Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;

    iget-object p2, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$globalPreProdWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/AmazonGlobalPreProdWebStoreUriTranslator;

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->unregisterUriTranslator(Lcom/audible/mobile/framework/UriTranslator;)V

    .line 110
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$composedUriTranslator:Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;

    iget-object p2, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$audiblePreProdWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/AudiblePreProdWebStoreUriTranslator;

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->unregisterUriTranslator(Lcom/audible/mobile/framework/UriTranslator;)V

    .line 111
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$composedUriTranslator:Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;

    iget-object p2, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$audibleSandboxWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/AudibleSandBoxWebStoreUriTranslator;

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->unregisterUriTranslator(Lcom/audible/mobile/framework/UriTranslator;)V

    .line 112
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$composedUriTranslator:Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;

    iget-object p2, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$customWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->unregisterUriTranslator(Lcom/audible/mobile/framework/UriTranslator;)V

    goto/16 :goto_0

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$globalPreProdWeb:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 114
    invoke-static {}, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string p2, "Setting to global pre-prod endpoint"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$composedUriTranslator:Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;

    iget-object p2, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$audiblePreProdWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/AudiblePreProdWebStoreUriTranslator;

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->unregisterUriTranslator(Lcom/audible/mobile/framework/UriTranslator;)V

    .line 116
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$composedUriTranslator:Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;

    iget-object p2, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$audibleSandboxWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/AudibleSandBoxWebStoreUriTranslator;

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->unregisterUriTranslator(Lcom/audible/mobile/framework/UriTranslator;)V

    .line 117
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$composedUriTranslator:Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;

    iget-object p2, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$customWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->unregisterUriTranslator(Lcom/audible/mobile/framework/UriTranslator;)V

    .line 118
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$composedUriTranslator:Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;

    iget-object p2, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$globalPreProdWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/AmazonGlobalPreProdWebStoreUriTranslator;

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->registerUriTranslator(Lcom/audible/mobile/framework/UriTranslator;)V

    goto/16 :goto_0

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$audiblePreprodWeb:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p2, p1, :cond_2

    .line 120
    invoke-static {}, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string p2, "Setting to audible pre-prod endpoint"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$composedUriTranslator:Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;

    iget-object p2, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$globalPreProdWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/AmazonGlobalPreProdWebStoreUriTranslator;

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->unregisterUriTranslator(Lcom/audible/mobile/framework/UriTranslator;)V

    .line 122
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$composedUriTranslator:Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;

    iget-object p2, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$audibleSandboxWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/AudibleSandBoxWebStoreUriTranslator;

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->unregisterUriTranslator(Lcom/audible/mobile/framework/UriTranslator;)V

    .line 123
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$composedUriTranslator:Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;

    iget-object p2, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$customWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->unregisterUriTranslator(Lcom/audible/mobile/framework/UriTranslator;)V

    .line 124
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$composedUriTranslator:Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;

    iget-object p2, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$audiblePreProdWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/AudiblePreProdWebStoreUriTranslator;

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->registerUriTranslator(Lcom/audible/mobile/framework/UriTranslator;)V

    goto :goto_0

    .line 125
    :cond_2
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$audibleSandboxWeb:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p2, p1, :cond_3

    .line 126
    invoke-static {}, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string p2, "Setting to audible sandbox endpoint"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$composedUriTranslator:Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;

    iget-object p2, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$globalPreProdWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/AmazonGlobalPreProdWebStoreUriTranslator;

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->unregisterUriTranslator(Lcom/audible/mobile/framework/UriTranslator;)V

    .line 128
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$composedUriTranslator:Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;

    iget-object p2, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$audiblePreProdWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/AudiblePreProdWebStoreUriTranslator;

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->unregisterUriTranslator(Lcom/audible/mobile/framework/UriTranslator;)V

    .line 129
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$composedUriTranslator:Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;

    iget-object p2, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$customWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->unregisterUriTranslator(Lcom/audible/mobile/framework/UriTranslator;)V

    .line 130
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$composedUriTranslator:Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;

    iget-object p2, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$audibleSandboxWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/AudibleSandBoxWebStoreUriTranslator;

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->registerUriTranslator(Lcom/audible/mobile/framework/UriTranslator;)V

    goto :goto_0

    .line 131
    :cond_3
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$customWeb:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p2, p1, :cond_4

    .line 132
    invoke-static {}, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string p2, "Setting to custom web endpoint"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$composedUriTranslator:Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;

    iget-object p2, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$globalPreProdWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/AmazonGlobalPreProdWebStoreUriTranslator;

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->unregisterUriTranslator(Lcom/audible/mobile/framework/UriTranslator;)V

    .line 134
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$composedUriTranslator:Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;

    iget-object p2, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$audiblePreProdWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/AudiblePreProdWebStoreUriTranslator;

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->unregisterUriTranslator(Lcom/audible/mobile/framework/UriTranslator;)V

    .line 135
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$composedUriTranslator:Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;

    iget-object p2, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$audibleSandboxWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/AudibleSandBoxWebStoreUriTranslator;

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->unregisterUriTranslator(Lcom/audible/mobile/framework/UriTranslator;)V

    .line 136
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$composedUriTranslator:Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;

    iget-object p2, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$customWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->registerUriTranslator(Lcom/audible/mobile/framework/UriTranslator;)V

    .line 138
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$customEndpointEditText:Landroid/widget/EditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 139
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$customEndpointEditText:Landroid/widget/EditText;

    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->debug_menu_custom_endpoint_hint:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 140
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;->val$button:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method
