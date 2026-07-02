.class Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$3;
.super Ljava/lang/Object;
.source "AudibleDebugMenuProvider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$checkBox:Landroid/widget/CheckBox;

.field final synthetic val$debugSharedPreferences:Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;Landroid/widget/CheckBox;)V
    .locals 0

    .line 166
    iput-object p2, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$3;->val$debugSharedPreferences:Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;

    iput-object p3, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$3;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 169
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$3;->val$debugSharedPreferences:Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;

    sget-object v0, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;->AUDIBLE_WEBVIEW_ON_FOS_TOGGLE_KEY:Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$3;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;->setBoolean(Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;Z)V

    .line 170
    invoke-static {}, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting Audible webview on FOS enabled status to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$3;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void
.end method
