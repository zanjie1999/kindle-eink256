.class public Lcom/amazon/kindle/krx/settings/KRXSettingsController;
.super Lcom/amazon/kindle/persistence/AbstractSettingsController;
.source "KRXSettingsController.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/persistence/AbstractSettingsController;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/String;Z)Z
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public persistValue(Ljava/lang/String;Z)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
