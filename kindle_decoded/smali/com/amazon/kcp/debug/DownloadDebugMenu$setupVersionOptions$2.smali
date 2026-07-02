.class final Lcom/amazon/kcp/debug/DownloadDebugMenu$setupVersionOptions$2;
.super Ljava/lang/Object;
.source "DownloadDebugMenu.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupVersionOptions$2;->$prefs:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupVersionOptions$2;->$container:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 176
    iget-object p1, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupVersionOptions$2;->$prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupVersionOptions$2;->$container:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/krl/R$id;->app_version:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "container.app_version"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpoofAppVersion"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
