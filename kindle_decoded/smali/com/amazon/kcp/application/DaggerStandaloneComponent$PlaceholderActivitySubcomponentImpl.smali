.class final Lcom/amazon/kcp/application/DaggerStandaloneComponent$PlaceholderActivitySubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerStandaloneComponent.java"

# interfaces
.implements Lcom/amazon/kcp/application/OptionalBindingsModule_ContributeAtLeastOneAndroidInjector$PlaceholderActivitySubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/DaggerStandaloneComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PlaceholderActivitySubcomponentImpl"
.end annotation


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/application/DaggerStandaloneComponent;Lcom/amazon/kcp/application/DaggerStandaloneComponent$PlaceholderActivitySubcomponentBuilder;)V
    .locals 0

    .line 773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/application/DaggerStandaloneComponent;Lcom/amazon/kcp/application/DaggerStandaloneComponent$PlaceholderActivitySubcomponentBuilder;Lcom/amazon/kcp/application/DaggerStandaloneComponent$1;)V
    .locals 0

    .line 770
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/application/DaggerStandaloneComponent$PlaceholderActivitySubcomponentImpl;-><init>(Lcom/amazon/kcp/application/DaggerStandaloneComponent;Lcom/amazon/kcp/application/DaggerStandaloneComponent$PlaceholderActivitySubcomponentBuilder;)V

    return-void
.end method


# virtual methods
.method public inject(Lcom/amazon/kcp/application/OptionalBindingsModule$PlaceholderActivity;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .line 770
    check-cast p1, Lcom/amazon/kcp/application/OptionalBindingsModule$PlaceholderActivity;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/application/DaggerStandaloneComponent$PlaceholderActivitySubcomponentImpl;->inject(Lcom/amazon/kcp/application/OptionalBindingsModule$PlaceholderActivity;)V

    return-void
.end method
