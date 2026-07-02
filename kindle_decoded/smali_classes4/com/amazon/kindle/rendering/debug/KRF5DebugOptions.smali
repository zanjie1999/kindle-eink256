.class public Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;
.super Landroid/widget/RelativeLayout;
.source "KRF5DebugOptions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEBUG_SETTINGS:Ljava/lang/String; = "DebugSettings"

.field private static final DISABLE_ANNOTATIONS:Ljava/lang/String; = "DISABLE_ANNOTATIONS"

.field private static final FORCE_KUX:Ljava/lang/String; = "FORCE_KUX"

.field private static final KRIF_DOC_VIEWER:Ljava/lang/String; = "com.amazon.kindle.rendering.KRIFDocViewer"


# instance fields
.field private appSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

.field private disableAnnotationsButton:Landroid/widget/Button;

.field private eventIdTextView:Landroid/widget/TextView;

.field private factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

.field private forceKUXButton:Landroid/widget/Button;

.field private kfxsdkTextView:Landroid/widget/TextView;

.field private krfTextView:Landroid/widget/TextView;

.field private updateBundlesButton:Landroid/view/View;

.field private versionNotification:Landroid/widget/TextView;

.field private versionSetTextView:Landroid/widget/TextView;

.field private yjrCommitTextView:Landroid/widget/TextView;

.field private yjrTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-virtual {p0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getDisableAnnotationsValue()Z
    .locals 3

    :try_start_0
    const-string v0, "com.amazon.kindle.rendering.KRIFDocViewer"

    .line 152
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "DISABLE_ANNOTATIONS"

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 155
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getForceKUXValue()Z
    .locals 3

    const/4 v0, 0x0

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->appSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->appSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    const-string v2, "FORCE_KUX"

    invoke-interface {v1, v2, v0}, Lcom/amazon/system/io/IPersistentSettingsHelper;->get(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 201
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method private onDisableAnnotationsClick(Landroid/widget/Button;)V
    .locals 3

    .line 127
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->getDisableAnnotationsValue()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "com.amazon.kindle.rendering.KRIFDocViewer"

    .line 129
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "DISABLE_ANNOTATIONS"

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 131
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 132
    invoke-virtual {v2, v1, p1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 134
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->updateDisableAnnotationsButton(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private onForceKUXClick(Landroid/widget/Button;)V
    .locals 0

    .line 167
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->getForceKUXValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 168
    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->updateForceKUXStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 170
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private onUpdateBundlesClick(Landroid/view/View;)V
    .locals 10

    :try_start_0
    const-string p1, "com.amazon.kindle.rendering.RenderingModule"

    .line 209
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getDefaultResourceBundleFilePath"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 211
    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v2, "getReaderResourceBundleFilePath"

    new-array v3, v1, [Ljava/lang/Class;

    .line 212
    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "extractRawResource"

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Class;

    .line 213
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, Landroid/content/res/Resources;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    invoke-virtual {p1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 215
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 216
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 217
    invoke-virtual {p1, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 219
    invoke-virtual {v0, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    .line 220
    invoke-virtual {v2, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    .line 223
    sget v6, Lcom/amazon/kindle/renderingmodule/R$raw;->res_android:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v1

    aput-object v0, v3, v7

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-virtual {p1, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v4, [Ljava/lang/Object;

    .line 224
    sget v3, Lcom/amazon/kindle/renderingmodule/R$raw;->reader_res_android:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    aput-object v2, v0, v7

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-virtual {p1, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 226
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateDisableAnnotationsButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->disableAnnotationsButton:Landroid/widget/Button;

    const-string v0, "Enable YJ annotations (must start new reading session)"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->disableAnnotationsButton:Landroid/widget/Button;

    const-string v0, "Disable YJ annotations (must start new reading session, does not persist beyond app lifecycle)"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateForceKUXStatus(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->forceKUXButton:Landroid/widget/Button;

    const-string v1, "Disable Force KUX"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->forceKUXButton:Landroid/widget/Button;

    const-string v1, "Enable Force KUX"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "1"

    goto :goto_1

    :cond_1
    const-string v0, "0"

    :goto_1
    const-string v1, "krf.force_kux"

    .line 182
    invoke-static {v1, v0}, Lcom/amazon/krf/platform/KRF;->setGlobalVariable(Ljava/lang/String;Ljava/lang/String;)Z

    .line 183
    iget-object v0, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->appSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    if-eqz v0, :cond_2

    const-string v1, "FORCE_KUX"

    .line 184
    invoke-interface {v0, v1, p1}, Lcom/amazon/system/io/IPersistentSettingsHelper;->set(Ljava/lang/String;Z)V

    .line 186
    :try_start_0
    iget-object p1, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->appSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    invoke-interface {p1}, Lcom/amazon/system/io/IPersistentSettingsHelper;->save()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 188
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->updateBundlesButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 116
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->onUpdateBundlesClick(Landroid/view/View;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->disableAnnotationsButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 118
    check-cast p1, Landroid/widget/Button;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->onDisableAnnotationsClick(Landroid/widget/Button;)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->forceKUXButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 120
    check-cast p1, Landroid/widget/Button;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->onForceKUXClick(Landroid/widget/Button;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 5

    .line 58
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->appSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    .line 64
    :cond_0
    sget v0, Lcom/amazon/kindle/renderingmodule/R$id;->updateYjBundles:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->updateBundlesButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    :cond_1
    sget v0, Lcom/amazon/kindle/renderingmodule/R$id;->disableAnnotations:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->disableAnnotationsButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->getDisableAnnotationsValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->updateDisableAnnotationsButton(Z)V

    .line 75
    sget v0, Lcom/amazon/kindle/renderingmodule/R$id;->forceKUX:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->forceKUXButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 77
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :cond_3
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->getForceKUXValue()Z

    move-result v0

    .line 80
    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->updateForceKUXStatus(Z)V

    .line 82
    invoke-static {}, Lcom/amazon/kindle/rendering/KRIFContentLoader;->initializeKRF()V

    .line 83
    invoke-static {}, Lcom/amazon/krfhacks/KRFHacks;->getKrfVersionProperties()Ljava/util/Properties;

    move-result-object v0

    .line 84
    sget v1, Lcom/amazon/kindle/renderingmodule/R$id;->krfVersion:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->krfTextView:Landroid/widget/TextView;

    .line 85
    sget v1, Lcom/amazon/kindle/renderingmodule/R$id;->kfxsdk:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->kfxsdkTextView:Landroid/widget/TextView;

    .line 86
    sget v1, Lcom/amazon/kindle/renderingmodule/R$id;->yjrVersion:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->yjrTextView:Landroid/widget/TextView;

    .line 87
    sget v1, Lcom/amazon/kindle/renderingmodule/R$id;->yjrCommit:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->yjrCommitTextView:Landroid/widget/TextView;

    .line 88
    sget v1, Lcom/amazon/kindle/renderingmodule/R$id;->versionSet:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->versionSetTextView:Landroid/widget/TextView;

    .line 89
    sget v1, Lcom/amazon/kindle/renderingmodule/R$id;->eventId:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->eventIdTextView:Landroid/widget/TextView;

    .line 90
    sget v1, Lcom/amazon/kindle/renderingmodule/R$id;->versionNotification:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->versionNotification:Landroid/widget/TextView;

    const-string v1, "KRF Version: "

    if-eqz v0, :cond_4

    .line 92
    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 93
    iget-object v2, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->versionSetTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Version set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "version_set"

    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v2, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->eventIdTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Brazil event ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "event_id"

    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v2, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->krfTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "krf_version"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->kfxsdkTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kfxsdk "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "sdk_version"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->yjrTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "yjr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "yjr_version"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->versionNotification:Landroid/widget/TextView;

    const-string v2, "Could not find p2r-version.properties, the below information is unlikely to be correct"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->versionNotification:Landroid/widget/TextView;

    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    invoke-static {}, Lcom/amazon/krf/platform/KRF;->getVersions()Ljava/util/HashMap;

    move-result-object v0

    .line 103
    iget-object v2, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->versionSetTextView:Landroid/widget/TextView;

    const-string v3, "Version set: unknown"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v2, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->eventIdTextView:Landroid/widget/TextView;

    const-string v3, "Brazil event ID: unknown"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v2, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->krfTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KRF"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->kfxsdkTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kfxsdk: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "KRFYJAdapter-kfxsdk"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->yjrTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "yjr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "KRFYJAdapter-yjr"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v1, p0, Lcom/amazon/kindle/rendering/debug/KRF5DebugOptions;->yjrCommitTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "yjr-commit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "KRFYJAdapter-yjr-commit"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
