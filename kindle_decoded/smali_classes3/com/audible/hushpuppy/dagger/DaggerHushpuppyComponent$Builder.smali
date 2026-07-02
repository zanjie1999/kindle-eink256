.class final Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerHushpuppyComponent.java"

# interfaces
.implements Lcom/audible/hushpuppy/dagger/HushpuppyComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Builder"
.end annotation


# instance fields
.field private hushpuppyDaggerModule:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

.field private kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$1;)V
    .locals 0

    .line 2045
    invoke-direct {p0}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 2045
    iget-object p0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method static synthetic access$200(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;
    .locals 0

    .line 2045
    iget-object p0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->hushpuppyDaggerModule:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;
    .locals 3

    .line 2052
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->hushpuppyDaggerModule:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    if-nez v0, :cond_0

    .line 2053
    new-instance v0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    invoke-direct {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;-><init>()V

    iput-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->hushpuppyDaggerModule:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    .line 2055
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_1

    .line 2058
    new-instance v0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;-><init>(Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$1;)V

    return-object v0

    .line 2056
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/amazon/kindle/krx/IKindleReaderSDK;

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

.method public kindleReaderSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;
    .locals 0

    .line 2063
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p1, p0, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method public bridge synthetic kindleReaderSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/dagger/HushpuppyComponent$Builder;
    .locals 0

    .line 2045
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;->kindleReaderSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent$Builder;

    return-object p0
.end method
