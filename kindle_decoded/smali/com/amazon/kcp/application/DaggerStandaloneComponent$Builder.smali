.class final Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerStandaloneComponent.java"

# interfaces
.implements Lcom/amazon/kcp/application/StandaloneComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/DaggerStandaloneComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Builder"
.end annotation


# instance fields
.field private application:Landroid/app/Application;

.field private readerServicesModule:Lcom/amazon/kcp/application/ReaderServicesModule;

.field private standAloneKindleObjectModule:Lcom/amazon/kcp/application/StandAloneKindleObjectModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/application/DaggerStandaloneComponent$1;)V
    .locals 0

    .line 720
    invoke-direct {p0}, Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;)Landroid/app/Application;
    .locals 0

    .line 720
    iget-object p0, p0, Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;->application:Landroid/app/Application;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;)Lcom/amazon/kcp/application/ReaderServicesModule;
    .locals 0

    .line 720
    iget-object p0, p0, Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;->readerServicesModule:Lcom/amazon/kcp/application/ReaderServicesModule;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;)Lcom/amazon/kcp/application/StandAloneKindleObjectModule;
    .locals 0

    .line 720
    iget-object p0, p0, Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;->standAloneKindleObjectModule:Lcom/amazon/kcp/application/StandAloneKindleObjectModule;

    return-object p0
.end method


# virtual methods
.method public application(Landroid/app/Application;)Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;
    .locals 0

    .line 743
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;->application:Landroid/app/Application;

    return-object p0
.end method

.method public bridge synthetic application(Landroid/app/Application;)Lcom/amazon/kcp/application/StandaloneComponent$Builder;
    .locals 0

    .line 720
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;->application(Landroid/app/Application;)Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/amazon/kcp/application/ReddingComponent;
    .locals 1

    .line 720
    invoke-virtual {p0}, Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;->build()Lcom/amazon/kcp/application/StandaloneComponent;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/amazon/kcp/application/StandaloneComponent;
    .locals 3

    .line 729
    iget-object v0, p0, Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;->readerServicesModule:Lcom/amazon/kcp/application/ReaderServicesModule;

    if-nez v0, :cond_0

    .line 730
    new-instance v0, Lcom/amazon/kcp/application/ReaderServicesModule;

    invoke-direct {v0}, Lcom/amazon/kcp/application/ReaderServicesModule;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;->readerServicesModule:Lcom/amazon/kcp/application/ReaderServicesModule;

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;->standAloneKindleObjectModule:Lcom/amazon/kcp/application/StandAloneKindleObjectModule;

    if-nez v0, :cond_1

    .line 733
    new-instance v0, Lcom/amazon/kcp/application/StandAloneKindleObjectModule;

    invoke-direct {v0}, Lcom/amazon/kcp/application/StandAloneKindleObjectModule;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;->standAloneKindleObjectModule:Lcom/amazon/kcp/application/StandAloneKindleObjectModule;

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;->application:Landroid/app/Application;

    if-eqz v0, :cond_2

    .line 738
    new-instance v0, Lcom/amazon/kcp/application/DaggerStandaloneComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/application/DaggerStandaloneComponent;-><init>(Lcom/amazon/kcp/application/DaggerStandaloneComponent$Builder;Lcom/amazon/kcp/application/DaggerStandaloneComponent$1;)V

    return-object v0

    .line 736
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroid/app/Application;

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
