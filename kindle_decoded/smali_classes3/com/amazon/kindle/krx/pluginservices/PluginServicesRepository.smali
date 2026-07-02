.class public Lcom/amazon/kindle/krx/pluginservices/PluginServicesRepository;
.super Ljava/lang/Object;
.source "PluginServicesRepository.java"

# interfaces
.implements Lcom/amazon/kindle/krx/pluginservices/IPluginServicesRepository;


# instance fields
.field private wordWiseServices:Lcom/amazon/kindle/krx/pluginservices/wordwise/IWordWiseServices;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/amazon/kindle/krx/pluginservices/PluginServicesRepository;->wordWiseServices:Lcom/amazon/kindle/krx/pluginservices/wordwise/IWordWiseServices;

    return-void
.end method


# virtual methods
.method public getWordWiseServices()Lcom/amazon/kindle/krx/pluginservices/wordwise/IWordWiseServices;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kindle/krx/pluginservices/PluginServicesRepository;->wordWiseServices:Lcom/amazon/kindle/krx/pluginservices/wordwise/IWordWiseServices;

    return-object v0
.end method

.method public registerWordWiseServices(Lcom/amazon/kindle/krx/pluginservices/wordwise/IWordWiseServices;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/amazon/kindle/krx/pluginservices/PluginServicesRepository;->wordWiseServices:Lcom/amazon/kindle/krx/pluginservices/wordwise/IWordWiseServices;

    return-void
.end method
