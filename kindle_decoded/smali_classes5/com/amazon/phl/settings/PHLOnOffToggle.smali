.class public Lcom/amazon/phl/settings/PHLOnOffToggle;
.super Lcom/amazon/kindle/krx/settings/OnOffToggle;
.source "PHLOnOffToggle.java"


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/settings/ISettingsChangeListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/settings/ISettingsChangeListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 15
    sget v2, Lcom/amazon/kindle/popularhighlights/R$string;->popularhighlights_feature_name:I

    sget v3, Lcom/amazon/kindle/popularhighlights/R$string;->popularhighlights_feature_detail:I

    const-string/jumbo v1, "popularHighlightsControls"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/krx/settings/OnOffToggle;-><init>(Ljava/lang/String;IIZZLcom/amazon/kindle/krx/settings/ISettingsChangeListener;)V

    return-void
.end method
