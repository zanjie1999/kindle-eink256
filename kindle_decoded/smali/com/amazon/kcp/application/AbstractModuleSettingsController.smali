.class public abstract Lcom/amazon/kcp/application/AbstractModuleSettingsController;
.super Lcom/amazon/kindle/persistence/AbstractSettingsController;
.source "AbstractModuleSettingsController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/kcp/application/AbstractModuleSettingsController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/AbstractModuleSettingsController;->TAG:Ljava/lang/String;

    return-void
.end method
