.class public Lcom/amazon/kindle/krx/settings/ClickableSetting;
.super Lcom/amazon/kindle/krx/settings/BaseSettingsControl;
.source "ClickableSetting.java"


# instance fields
.field private listener:Lcom/amazon/kindle/krx/settings/IClickListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIZLcom/amazon/kindle/krx/settings/IClickListener;)V
    .locals 7

    .line 34
    sget-object v6, Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;->Clickable:Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;-><init>(Ljava/lang/String;IIIZLcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;)V

    .line 35
    iput-object p6, p0, Lcom/amazon/kindle/krx/settings/ClickableSetting;->listener:Lcom/amazon/kindle/krx/settings/IClickListener;

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClick()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/krx/settings/ClickableSetting;->listener:Lcom/amazon/kindle/krx/settings/IClickListener;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/settings/IClickListener;->onClick()V

    return-void
.end method

.method public serialize()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
