.class public Lcom/amazon/whispersync/dcp/framework/MAPConfigurator;
.super Ljava/lang/Object;
.source "MAPConfigurator.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/FrameworkInit$Configurator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/MAPInit;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MAPInit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPInit;->initialize()V

    return-void
.end method
