.class final Lcom/audible/hushpuppy/plugin/ApplicationPlugin$PfmEndpointsCallback;
.super Ljava/lang/Object;
.source "ApplicationPlugin.java"

# interfaces
.implements Lcom/audible/pfm/controller/IEndpointController$IEndpointCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/plugin/ApplicationPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PfmEndpointsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/plugin/ApplicationPlugin;


# direct methods
.method private constructor <init>(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;)V
    .locals 0

    .line 658
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin$PfmEndpointsCallback;->this$0:Lcom/audible/hushpuppy/plugin/ApplicationPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/plugin/ApplicationPlugin$1;)V
    .locals 0

    .line 658
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin$PfmEndpointsCallback;-><init>(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;)V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/audible/pfm/domain/DevicePlatformConfig;)V
    .locals 2

    .line 662
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin$PfmEndpointsCallback;->this$0:Lcom/audible/hushpuppy/plugin/ApplicationPlugin;

    iget-object v0, v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;

    invoke-interface {v0, p1}, Lcom/audible/pfm/endpoint/IEndpointFactory;->setDevicePlatformConfig(Lcom/audible/pfm/domain/DevicePlatformConfig;)V

    .line 663
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin$PfmEndpointsCallback;->this$0:Lcom/audible/hushpuppy/plugin/ApplicationPlugin;

    iget-object v1, v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;

    invoke-static {v0}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->access$200(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/audible/pfm/endpoint/IEndpointFactory;->setUserPfm(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin$PfmEndpointsCallback;->this$0:Lcom/audible/hushpuppy/plugin/ApplicationPlugin;

    iget-object v0, v0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->hushpuppyStorage:Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;->insertDevicePlatformConfig(Lcom/audible/pfm/domain/DevicePlatformConfig;)V

    .line 667
    iget-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin$PfmEndpointsCallback;->this$0:Lcom/audible/hushpuppy/plugin/ApplicationPlugin;

    invoke-static {p1}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->access$300(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;)V

    .line 668
    iget-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin$PfmEndpointsCallback;->this$0:Lcom/audible/hushpuppy/plugin/ApplicationPlugin;

    invoke-static {p1}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->access$400(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;)V

    return-void
.end method
