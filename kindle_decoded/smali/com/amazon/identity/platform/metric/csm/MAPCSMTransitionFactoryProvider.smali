.class final Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MAPCSMTransitionFactoryProvider"


# instance fields
.field private vr:Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactory;

.field private vs:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-direct {p0}, Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider;->getMAPCSMTransitionFactoryImpl()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider;
    .locals 1

    .line 33
    invoke-static {}, Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider$a;->iR()Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider;

    move-result-object v0

    return-object v0
.end method

.method private getMAPCSMTransitionFactoryImpl()V
    .locals 3

    :try_start_0
    const-string v0, "com.amazon.csm.map.MAPCSMTransitionFactoryImpl"

    const/4 v1, 0x0

    .line 51
    const-class v2, Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider;

    .line 52
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 51
    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider;->vs:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactory;

    iput-object v0, p0, Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider;->vr:Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactory;

    .line 56
    sget-object v0, Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .line 69
    :catch_0
    sget-object v0, Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dm(Ljava/lang/String;)V

    return-void

    .line 65
    :catch_1
    sget-object v0, Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dm(Ljava/lang/String;)V

    return-void

    .line 61
    :catch_2
    sget-object v0, Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMAPCSMTransitionFactory()Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactory;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider;->vr:Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactory;

    return-object v0
.end method
