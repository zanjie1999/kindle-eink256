.class Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "AudibleDebugMenuProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider;->get(Landroid/content/Context;)Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider;Landroid/content/Context;)V
    .locals 0

    .line 39
    iput-object p2, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;->val$context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->debug_menu_name:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 23

    move-object/from16 v14, p0

    .line 51
    new-instance v15, Landroid/widget/LinearLayout;

    iget-object v0, v14, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 52
    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 55
    iget-object v1, v14, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v1

    const-class v2, Lcom/audible/mobile/framework/UriTranslator;

    invoke-virtual {v1, v2}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/framework/UriTranslator;

    .line 56
    instance-of v2, v1, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;

    if-eqz v2, :cond_4

    .line 57
    new-instance v12, Landroid/widget/TextView;

    iget-object v2, v14, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {v12, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 58
    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->debug_menu_web_endpoint:I

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(I)V

    .line 60
    new-instance v11, Landroid/widget/RadioGroup;

    iget-object v2, v14, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {v11, v2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {v11, v0}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 62
    new-instance v2, Landroid/widget/RadioButton;

    iget-object v3, v14, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 63
    sget v3, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->debug_menu_prod_endpoint:I

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setText(I)V

    .line 64
    new-instance v8, Landroid/widget/RadioButton;

    iget-object v3, v14, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {v8, v3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 65
    sget v3, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->debug_menu_global_preprod_endpoint:I

    invoke-virtual {v8, v3}, Landroid/widget/RadioButton;->setText(I)V

    .line 66
    new-instance v9, Landroid/widget/RadioButton;

    iget-object v3, v14, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {v9, v3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 67
    sget v3, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->debug_menu_audible_preprod_endpoint:I

    invoke-virtual {v9, v3}, Landroid/widget/RadioButton;->setText(I)V

    .line 68
    new-instance v10, Landroid/widget/RadioButton;

    iget-object v3, v14, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {v10, v3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 69
    sget v3, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->debug_menu_audible_sandbox_endpoint:I

    invoke-virtual {v10, v3}, Landroid/widget/RadioButton;->setText(I)V

    .line 70
    new-instance v7, Landroid/widget/RadioButton;

    iget-object v3, v14, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {v7, v3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 71
    sget v3, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->debug_menu_audible_custom_endpoint:I

    invoke-virtual {v7, v3}, Landroid/widget/RadioButton;->setText(I)V

    .line 72
    invoke-virtual {v11, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 73
    invoke-virtual {v11, v8}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 74
    invoke-virtual {v11, v9}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 75
    invoke-virtual {v11, v10}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 76
    invoke-virtual {v11, v7}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 78
    new-instance v6, Landroid/widget/EditText;

    iget-object v3, v14, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {v6, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v5, Landroid/widget/Button;

    iget-object v3, v14, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {v5, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 80
    sget v3, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->debug_menu_audible_custom_endpoint_submit_button:I

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setText(I)V

    const/4 v3, 0x4

    .line 81
    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 82
    invoke-virtual {v5, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 84
    move-object v3, v1

    check-cast v3, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;

    .line 85
    new-instance v4, Lcom/audible/hushpuppy/common/debug/AmazonGlobalPreProdWebStoreUriTranslator;

    invoke-direct {v4}, Lcom/audible/hushpuppy/common/debug/AmazonGlobalPreProdWebStoreUriTranslator;-><init>()V

    .line 86
    new-instance v1, Lcom/audible/hushpuppy/common/debug/AudiblePreProdWebStoreUriTranslator;

    invoke-direct {v1}, Lcom/audible/hushpuppy/common/debug/AudiblePreProdWebStoreUriTranslator;-><init>()V

    .line 87
    new-instance v13, Lcom/audible/hushpuppy/common/debug/AudibleSandBoxWebStoreUriTranslator;

    invoke-direct {v13}, Lcom/audible/hushpuppy/common/debug/AudibleSandBoxWebStoreUriTranslator;-><init>()V

    .line 88
    new-instance v0, Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;

    invoke-direct {v0}, Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;-><init>()V

    .line 89
    invoke-virtual {v3, v4}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->isRegistered(Lcom/audible/mobile/framework/UriTranslator;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v18, v11

    const/4 v11, 0x1

    .line 90
    invoke-virtual {v8, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    move-object/from16 v16, v1

    :goto_1
    const/16 v17, 0x0

    goto :goto_2

    :cond_0
    move-object/from16 v18, v11

    const/4 v11, 0x1

    .line 91
    invoke-virtual {v3, v1}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->isRegistered(Lcom/audible/mobile/framework/UriTranslator;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 92
    invoke-virtual {v9, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v3, v13}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->isRegistered(Lcom/audible/mobile/framework/UriTranslator;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 94
    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {v3, v0}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->isRegistered(Lcom/audible/mobile/framework/UriTranslator;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 96
    invoke-virtual {v7, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v11, 0x0

    .line 97
    invoke-virtual {v6, v11}, Landroid/widget/EditText;->setVisibility(I)V

    move-object/from16 v16, v1

    .line 98
    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;->getCustomEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {v5, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move-object/from16 v16, v1

    const/16 v17, 0x0

    .line 101
    invoke-virtual {v2, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 104
    :goto_2
    new-instance v11, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;

    move-object v1, v0

    move-object v0, v11

    move-object/from16 v19, v1

    move-object/from16 v1, p0

    move-object/from16 v20, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v6

    move-object v6, v13

    move-object v13, v7

    move-object/from16 v7, v19

    move-object v14, v11

    move-object/from16 v21, v15

    move-object/from16 v15, v18

    move-object v11, v13

    move-object v13, v12

    move-object/from16 v12, v16

    move-object/from16 v22, v13

    move-object/from16 v13, v20

    invoke-direct/range {v0 .. v13}, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$1;-><init>(Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;Landroid/widget/RadioButton;Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;Lcom/audible/hushpuppy/common/debug/AmazonGlobalPreProdWebStoreUriTranslator;Lcom/audible/hushpuppy/common/debug/AudiblePreProdWebStoreUriTranslator;Lcom/audible/hushpuppy/common/debug/AudibleSandBoxWebStoreUriTranslator;Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v15, v14}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 145
    new-instance v0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$2;

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$2;-><init>(Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;Landroid/widget/EditText;Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;)V

    move-object/from16 v3, v20

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v21

    move-object/from16 v4, v22

    .line 156
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_4
    move-object v1, v14

    move-object v0, v15

    .line 162
    :goto_3
    new-instance v2, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;

    iget-object v3, v1, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;-><init>(Landroid/content/Context;)V

    .line 163
    new-instance v3, Landroid/widget/CheckBox;

    iget-object v4, v1, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 164
    sget v4, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->debug_menu_audible_webview_on_fos:I

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(I)V

    .line 165
    sget-object v4, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;->AUDIBLE_WEBVIEW_ON_FOS_TOGGLE_KEY:Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;->getBoolean(Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 166
    new-instance v4, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$3;

    invoke-direct {v4, v1, v2, v3}, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$3;-><init>(Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 176
    sget v3, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->debug_menu_endpoint_instruction:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 177
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method
