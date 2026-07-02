.class public Lcom/amazon/whispersync/device/crashmanager/DefaultDomainChooser;
.super Ljava/lang/Object;
.source "DefaultDomainChooser.java"

# interfaces
.implements Lcom/amazon/whispersync/device/crashmanager/DomainChooser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseDomain()Lcom/amazon/whispersync/device/crashmanager/Domain;
    .locals 2

    .line 7
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/Domain;->BETA:Lcom/amazon/whispersync/device/crashmanager/Domain;

    return-object v0

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/Domain;->PROD:Lcom/amazon/whispersync/device/crashmanager/Domain;

    return-object v0
.end method
