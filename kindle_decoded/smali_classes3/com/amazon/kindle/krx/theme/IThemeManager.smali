.class public interface abstract Lcom/amazon/kindle/krx/theme/IThemeManager;
.super Ljava/lang/Object;
.source "IThemeManager.java"


# virtual methods
.method public abstract areMultipleThemesSupported()Z
.end method

.method public abstract getAppTheme()Lcom/amazon/kindle/krx/theme/AppTheme;
.end method

.method public abstract getTheme()Lcom/amazon/kindle/krx/theme/Theme;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;
.end method

.method public abstract setAppTheme(Lcom/amazon/kindle/krx/theme/AppTheme;Landroid/content/res/Configuration;)V
.end method

.method public abstract switchIfNecessary(Landroid/content/res/Configuration;)V
.end method
