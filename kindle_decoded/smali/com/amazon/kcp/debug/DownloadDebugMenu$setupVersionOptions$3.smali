.class final Lcom/amazon/kcp/debug/DownloadDebugMenu$setupVersionOptions$3;
.super Ljava/lang/Object;
.source "DownloadDebugMenu.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DownloadDebugMenu;->setupVersionOptions(Landroid/content/SharedPreferences;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $container:Landroid/view/View;

.field final synthetic $prefs:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lcom/amazon/kcp/debug/DownloadDebugMenu;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DownloadDebugMenu;Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupVersionOptions$3;->this$0:Lcom/amazon/kcp/debug/DownloadDebugMenu;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupVersionOptions$3;->$prefs:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupVersionOptions$3;->$container:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 184
    iget-object p1, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupVersionOptions$3;->$prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "SpoofVersionToForceMobi"

    .line 185
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "SpoofAppVersion"

    const-string v1, "SpoofPlatformVersion"

    if-eqz p2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupVersionOptions$3;->this$0:Lcom/amazon/kcp/debug/DownloadDebugMenu;

    invoke-static {v2}, Lcom/amazon/kcp/debug/DownloadDebugMenu;->access$getBuildVersionForMobi$p(Lcom/amazon/kcp/debug/DownloadDebugMenu;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    iget-object v1, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupVersionOptions$3;->this$0:Lcom/amazon/kcp/debug/DownloadDebugMenu;

    invoke-static {v1}, Lcom/amazon/kcp/debug/DownloadDebugMenu;->access$getBuildVersionForMobi$p(Lcom/amazon/kcp/debug/DownloadDebugMenu;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupVersionOptions$3;->$container:Landroid/view/View;

    sget v3, Lcom/amazon/kindle/krl/R$id;->platform_version:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string v3, "container.platform_version"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 193
    iget-object v1, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupVersionOptions$3;->$container:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/krl/R$id;->app_version:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "container.app_version"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    iget-object p1, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupVersionOptions$3;->this$0:Lcom/amazon/kcp/debug/DownloadDebugMenu;

    xor-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupVersionOptions$3;->$container:Landroid/view/View;

    invoke-static {p1, p2, v0}, Lcom/amazon/kcp/debug/DownloadDebugMenu;->access$toggleManualOverrideEnabled(Lcom/amazon/kcp/debug/DownloadDebugMenu;ZLandroid/view/View;)V

    return-void
.end method
