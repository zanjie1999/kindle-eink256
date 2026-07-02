.class final Lcom/amazon/kcp/application/DaggerStandaloneComponent$PlaceholderActivitySubcomponentBuilder;
.super Lcom/amazon/kcp/application/OptionalBindingsModule_ContributeAtLeastOneAndroidInjector$PlaceholderActivitySubcomponent$Builder;
.source "DaggerStandaloneComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/DaggerStandaloneComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PlaceholderActivitySubcomponentBuilder"
.end annotation


# instance fields
.field private seedInstance:Lcom/amazon/kcp/application/OptionalBindingsModule$PlaceholderActivity;

.field final synthetic this$0:Lcom/amazon/kcp/application/DaggerStandaloneComponent;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/application/DaggerStandaloneComponent;)V
    .locals 0

    .line 748
    iput-object p1, p0, Lcom/amazon/kcp/application/DaggerStandaloneComponent$PlaceholderActivitySubcomponentBuilder;->this$0:Lcom/amazon/kcp/application/DaggerStandaloneComponent;

    invoke-direct {p0}, Lcom/amazon/kcp/application/OptionalBindingsModule_ContributeAtLeastOneAndroidInjector$PlaceholderActivitySubcomponent$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/application/DaggerStandaloneComponent;Lcom/amazon/kcp/application/DaggerStandaloneComponent$1;)V
    .locals 0

    .line 748
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/DaggerStandaloneComponent$PlaceholderActivitySubcomponentBuilder;-><init>(Lcom/amazon/kcp/application/DaggerStandaloneComponent;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/kcp/application/OptionalBindingsModule_ContributeAtLeastOneAndroidInjector$PlaceholderActivitySubcomponent;
    .locals 3

    .line 757
    iget-object v0, p0, Lcom/amazon/kcp/application/DaggerStandaloneComponent$PlaceholderActivitySubcomponentBuilder;->seedInstance:Lcom/amazon/kcp/application/OptionalBindingsModule$PlaceholderActivity;

    if-eqz v0, :cond_0

    .line 761
    new-instance v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent$PlaceholderActivitySubcomponentImpl;

    iget-object v1, p0, Lcom/amazon/kcp/application/DaggerStandaloneComponent$PlaceholderActivitySubcomponentBuilder;->this$0:Lcom/amazon/kcp/application/DaggerStandaloneComponent;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/amazon/kcp/application/DaggerStandaloneComponent$PlaceholderActivitySubcomponentImpl;-><init>(Lcom/amazon/kcp/application/DaggerStandaloneComponent;Lcom/amazon/kcp/application/DaggerStandaloneComponent$PlaceholderActivitySubcomponentBuilder;Lcom/amazon/kcp/application/DaggerStandaloneComponent$1;)V

    return-object v0

    .line 758
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/amazon/kcp/application/OptionalBindingsModule$PlaceholderActivity;

    .line 759
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic build()Ldagger/android/AndroidInjector;
    .locals 1

    .line 748
    invoke-virtual {p0}, Lcom/amazon/kcp/application/DaggerStandaloneComponent$PlaceholderActivitySubcomponentBuilder;->build()Lcom/amazon/kcp/application/OptionalBindingsModule_ContributeAtLeastOneAndroidInjector$PlaceholderActivitySubcomponent;

    move-result-object v0

    return-object v0
.end method

.method public seedInstance(Lcom/amazon/kcp/application/OptionalBindingsModule$PlaceholderActivity;)V
    .locals 0

    .line 766
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/amazon/kcp/application/OptionalBindingsModule$PlaceholderActivity;

    iput-object p1, p0, Lcom/amazon/kcp/application/DaggerStandaloneComponent$PlaceholderActivitySubcomponentBuilder;->seedInstance:Lcom/amazon/kcp/application/OptionalBindingsModule$PlaceholderActivity;

    return-void
.end method

.method public bridge synthetic seedInstance(Ljava/lang/Object;)V
    .locals 0

    .line 748
    check-cast p1, Lcom/amazon/kcp/application/OptionalBindingsModule$PlaceholderActivity;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/application/DaggerStandaloneComponent$PlaceholderActivitySubcomponentBuilder;->seedInstance(Lcom/amazon/kcp/application/OptionalBindingsModule$PlaceholderActivity;)V

    return-void
.end method
