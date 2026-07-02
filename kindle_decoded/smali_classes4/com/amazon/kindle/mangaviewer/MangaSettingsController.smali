.class public Lcom/amazon/kindle/mangaviewer/MangaSettingsController;
.super Lcom/amazon/kindle/persistence/AbstractSettingsController;
.source "MangaSettingsController.java"


# static fields
.field private static final MANGA_PREFS:Ljava/lang/String; = "MangaSettings"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "MangaSettings"

    .line 22
    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getVirtualPanelTipCount()I
    .locals 2

    const-string v0, "virtualPanelTipCount"

    const/4 v1, 0x0

    .line 30
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setVirtualPanelTipCount(I)V
    .locals 1

    const-string v0, "virtualPanelTipCount"

    .line 38
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putInt(Ljava/lang/String;I)V

    return-void
.end method
