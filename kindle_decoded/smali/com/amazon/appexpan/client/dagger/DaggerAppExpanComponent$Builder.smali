.class final Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerAppExpanComponent.java"

# interfaces
.implements Lcom/amazon/appexpan/client/dagger/AppExpanComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Builder"
.end annotation


# instance fields
.field private appExpanModule:Lcom/amazon/appexpan/client/dagger/AppExpanModule;

.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$1;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;)Landroid/content/Context;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;)Lcom/amazon/appexpan/client/dagger/AppExpanModule;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;->appExpanModule:Lcom/amazon/appexpan/client/dagger/AppExpanModule;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/amazon/appexpan/client/dagger/AppExpanComponent;
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;->appExpanModule:Lcom/amazon/appexpan/client/dagger/AppExpanModule;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/amazon/appexpan/client/dagger/AppExpanModule;

    invoke-direct {v0}, Lcom/amazon/appexpan/client/dagger/AppExpanModule;-><init>()V

    iput-object v0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;->appExpanModule:Lcom/amazon/appexpan/client/dagger/AppExpanModule;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 182
    new-instance v0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;-><init>(Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$1;)V

    return-object v0

    .line 180
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroid/content/Context;

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

.method public bridge synthetic context(Landroid/content/Context;)Lcom/amazon/appexpan/client/dagger/AppExpanComponent$Builder;
    .locals 0

    .line 169
    invoke-virtual {p0, p1}, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;->context(Landroid/content/Context;)Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;

    return-object p0
.end method

.method public context(Landroid/content/Context;)Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;
    .locals 0

    .line 187
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;->context:Landroid/content/Context;

    return-object p0
.end method
