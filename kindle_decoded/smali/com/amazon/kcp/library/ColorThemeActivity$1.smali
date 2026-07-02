.class Lcom/amazon/kcp/library/ColorThemeActivity$1;
.super Ljava/lang/Object;
.source "ColorThemeActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/ColorThemeActivity;->initRadioGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/ColorThemeActivity;

.field final synthetic val$themeManager:Lcom/amazon/kindle/krx/theme/IThemeManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/ColorThemeActivity;Lcom/amazon/kindle/krx/theme/IThemeManager;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/amazon/kcp/library/ColorThemeActivity$1;->this$0:Lcom/amazon/kcp/library/ColorThemeActivity;

    iput-object p2, p0, Lcom/amazon/kcp/library/ColorThemeActivity$1;->val$themeManager:Lcom/amazon/kindle/krx/theme/IThemeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 67
    invoke-static {}, Lcom/amazon/kcp/library/ColorThemeActivity;->access$000()I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/amazon/kcp/library/ColorThemeActivity$1;->val$themeManager:Lcom/amazon/kindle/krx/theme/IThemeManager;

    sget-object p2, Lcom/amazon/kindle/krx/theme/AppTheme;->LIGHT:Lcom/amazon/kindle/krx/theme/AppTheme;

    iget-object v0, p0, Lcom/amazon/kcp/library/ColorThemeActivity$1;->this$0:Lcom/amazon/kcp/library/ColorThemeActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->setAppTheme(Lcom/amazon/kindle/krx/theme/AppTheme;Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/library/ColorThemeActivity;->access$100()I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 70
    iget-object p1, p0, Lcom/amazon/kcp/library/ColorThemeActivity$1;->val$themeManager:Lcom/amazon/kindle/krx/theme/IThemeManager;

    sget-object p2, Lcom/amazon/kindle/krx/theme/AppTheme;->DARK:Lcom/amazon/kindle/krx/theme/AppTheme;

    iget-object v0, p0, Lcom/amazon/kcp/library/ColorThemeActivity$1;->this$0:Lcom/amazon/kcp/library/ColorThemeActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->setAppTheme(Lcom/amazon/kindle/krx/theme/AppTheme;Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/library/ColorThemeActivity;->access$200()I

    move-result p1

    if-ne p2, p1, :cond_2

    .line 72
    iget-object p1, p0, Lcom/amazon/kcp/library/ColorThemeActivity$1;->val$themeManager:Lcom/amazon/kindle/krx/theme/IThemeManager;

    sget-object p2, Lcom/amazon/kindle/krx/theme/AppTheme;->FOLLOW_SYSTEM:Lcom/amazon/kindle/krx/theme/AppTheme;

    iget-object v0, p0, Lcom/amazon/kcp/library/ColorThemeActivity$1;->this$0:Lcom/amazon/kcp/library/ColorThemeActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->setAppTheme(Lcom/amazon/kindle/krx/theme/AppTheme;Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 74
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/library/ColorThemeActivity;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Selected theme does not exist"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
