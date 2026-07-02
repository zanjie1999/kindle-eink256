.class Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final vt:Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider;-><init>(Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider$1;)V

    sput-object v0, Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider$a;->vt:Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider;

    return-void
.end method

.method static synthetic iR()Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider$a;->vt:Lcom/amazon/identity/platform/metric/csm/MAPCSMTransitionFactoryProvider;

    return-object v0
.end method
