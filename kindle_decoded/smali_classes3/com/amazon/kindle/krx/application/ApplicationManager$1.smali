.class Lcom/amazon/kindle/krx/application/ApplicationManager$1;
.super Ljava/lang/Object;
.source "ApplicationManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/settings/ISettingsControlManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/application/ApplicationManager;->getSettingsControlManager()Lcom/amazon/kindle/krx/settings/ISettingsControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/application/ApplicationManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/application/ApplicationManager;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/amazon/kindle/krx/application/ApplicationManager$1;->this$0:Lcom/amazon/kindle/krx/application/ApplicationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSettings(Ljava/lang/String;)Lcom/amazon/kindle/krx/settings/ISettingsControl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/krx/settings/ISettingsControl<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSettings(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/settings/ISettingsControl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/krx/settings/ISettingsControl<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public registerSettingsControl(Lcom/amazon/kindle/krx/settings/ISettingsControl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/settings/ISettingsControl<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public registerSettingsControl(Ljava/lang/String;Lcom/amazon/kindle/krx/settings/ISettingsControl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/settings/ISettingsControl<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
