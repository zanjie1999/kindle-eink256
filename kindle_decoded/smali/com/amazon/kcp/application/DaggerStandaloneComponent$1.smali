.class Lcom/amazon/kcp/application/DaggerStandaloneComponent$1;
.super Ljava/lang/Object;
.source "DaggerStandaloneComponent.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/DaggerStandaloneComponent;->initialize(Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lcom/amazon/kcp/application/OptionalBindingsModule_ContributeAtLeastOneAndroidInjector$PlaceholderActivitySubcomponent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/DaggerStandaloneComponent;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/DaggerStandaloneComponent;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/amazon/kcp/application/DaggerStandaloneComponent$1;->this$0:Lcom/amazon/kcp/application/DaggerStandaloneComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/amazon/kcp/application/OptionalBindingsModule_ContributeAtLeastOneAndroidInjector$PlaceholderActivitySubcomponent$Builder;
    .locals 3

    .line 355
    new-instance v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent$PlaceholderActivitySubcomponentBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/application/DaggerStandaloneComponent$1;->this$0:Lcom/amazon/kcp/application/DaggerStandaloneComponent;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/application/DaggerStandaloneComponent$PlaceholderActivitySubcomponentBuilder;-><init>(Lcom/amazon/kcp/application/DaggerStandaloneComponent;Lcom/amazon/kcp/application/DaggerStandaloneComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 350
    invoke-virtual {p0}, Lcom/amazon/kcp/application/DaggerStandaloneComponent$1;->get()Lcom/amazon/kcp/application/OptionalBindingsModule_ContributeAtLeastOneAndroidInjector$PlaceholderActivitySubcomponent$Builder;

    move-result-object v0

    return-object v0
.end method
