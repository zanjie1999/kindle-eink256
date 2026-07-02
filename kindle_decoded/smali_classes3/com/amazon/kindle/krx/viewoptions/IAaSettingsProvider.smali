.class public interface abstract Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;
.super Ljava/lang/Object;
.source "IAaSettingsProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract deleteAaTheme(I)V
.end method

.method public abstract deleteAaTheme(ILandroid/content/Context;)V
.end method

.method public abstract getSettings(Lcom/amazon/kindle/krx/viewoptions/AaTabType;Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/viewoptions/AaTabType;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/viewoptions/AaSetting;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadSettingsFromAaTheme(I)V
.end method

.method public abstract loadSettingsFromAaTheme(ILandroid/content/Context;)V
.end method

.method public abstract saveSettingsToAaTheme(I)V
.end method

.method public abstract saveSettingsToAaTheme(ILandroid/content/Context;)V
.end method
