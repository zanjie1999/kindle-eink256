.class public Lcom/amazon/kindle/krx/settings/OnOffToggle;
.super Lcom/amazon/kindle/krx/settings/BaseSettingsControl;
.source "OnOffToggle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/settings/BaseSettingsControl<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIZZLcom/amazon/kindle/krx/settings/ISettingsChangeListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZZ",
            "Lcom/amazon/kindle/krx/settings/ISettingsChangeListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 110
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sget-object v7, Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;->OnOffToggle:Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;-><init>(Ljava/lang/String;IIIZLjava/lang/Object;Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;Lcom/amazon/kindle/krx/settings/ISettingsChangeListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZLcom/amazon/kindle/krx/settings/ISettingsChangeListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Lcom/amazon/kindle/krx/settings/ISettingsChangeListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sget-object v7, Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;->OnOffToggle:Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;-><init>(Ljava/lang/String;IIZLjava/lang/Object;Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;Lcom/amazon/kindle/krx/settings/ISettingsChangeListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZZLcom/amazon/kindle/krx/settings/ISettingsChangeListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZZ",
            "Lcom/amazon/kindle/krx/settings/ISettingsChangeListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 83
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sget-object v6, Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;->OnOffToggle:Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;-><init>(Ljava/lang/String;IIZLjava/lang/Object;Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;Lcom/amazon/kindle/krx/settings/ISettingsChangeListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/kindle/krx/settings/ISettingsChangeListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/amazon/kindle/krx/settings/ISettingsChangeListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 58
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sget-object v7, Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;->OnOffToggle:Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;Lcom/amazon/kindle/krx/settings/ISettingsChangeListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/amazon/kindle/krx/settings/ISettingsChangeListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/amazon/kindle/krx/settings/ISettingsChangeListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sget-object v6, Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;->OnOffToggle:Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;Lcom/amazon/kindle/krx/settings/ISettingsChangeListener;)V

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/lang/String;)V
    .locals 0

    .line 170
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public serialize()Ljava/lang/String;
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 155
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 157
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
