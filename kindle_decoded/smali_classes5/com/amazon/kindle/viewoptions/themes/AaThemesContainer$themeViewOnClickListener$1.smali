.class public final Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$themeViewOnClickListener$1;
.super Ljava/lang/Object;
.source "AaThemesContainer.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;-><init>(Landroid/content/Context;Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$themeViewOnClickListener$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    check-cast p1, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;

    .line 76
    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->isUndo()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    .line 77
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$themeViewOnClickListener$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->access$getThemesManager$p(Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;)Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_THEME_APPLY_THEME:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v2, "KindlePerformanceConstants.AA_THEME_APPLY_THEME"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KindlePerformanceConstan\u2026_APPLY_THEME.metricString"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->recordPerfStartMarker(Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_PRESETS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-static {v0}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics;->getMetricName(Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$themeViewOnClickListener$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;

    invoke-static {v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->access$getThemesManager$p(Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;)Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$themeViewOnClickListener$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;

    invoke-static {v2}, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->access$getCurrentlyCheckedTheme$p(Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;)Lcom/amazon/kindle/viewoptions/themes/AaThemeView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->getTheme()Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->getThemeMetricsName(Lcom/amazon/kindle/viewoptions/themes/AaTheme;)Ljava/lang/String;

    move-result-object v1

    .line 80
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$themeViewOnClickListener$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;

    invoke-static {v2}, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->access$getThemesManager$p(Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;)Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->getTheme()Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->getThemeMetricsName(Lcom/amazon/kindle/viewoptions/themes/AaTheme;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;->NA:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;

    const/4 v4, 0x0

    .line 78
    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics;->reportMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;I)V

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$themeViewOnClickListener$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->access$getCurrentlyCheckedTheme$p(Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;)Lcom/amazon/kindle/viewoptions/themes/AaThemeView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->setChecked(Z)V

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$themeViewOnClickListener$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;

    invoke-static {v0, p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->access$setCurrentlyCheckedTheme$p(Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;Lcom/amazon/kindle/viewoptions/themes/AaThemeView;)V

    .line 83
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$themeViewOnClickListener$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->access$getCurrentlyCheckedTheme$p(Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;)Lcom/amazon/kindle/viewoptions/themes/AaThemeView;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->setChecked(Z)V

    .line 84
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$themeViewOnClickListener$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->access$getCurrentlyCheckedTheme$p(Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;)Lcom/amazon/kindle/viewoptions/themes/AaThemeView;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->applyTheme()V

    .line 85
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$themeViewOnClickListener$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->access$getThemesManager$p(Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;)Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->publishThemeChangeEvent()V

    :cond_4
    return-void
.end method
