.class public final Lcom/amazon/kindle/krx/ui/LandingScreenActionChangedEvent;
.super Ljava/lang/Object;
.source "LandingScreenActionChangedEvent.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final provider:Lcom/amazon/kindle/krx/providers/ILandingScreenActionProvider;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/providers/ILandingScreenActionProvider;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/LandingScreenActionChangedEvent;->provider:Lcom/amazon/kindle/krx/providers/ILandingScreenActionProvider;

    return-void
.end method


# virtual methods
.method public final getProvider()Lcom/amazon/kindle/krx/providers/ILandingScreenActionProvider;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LandingScreenActionChangedEvent;->provider:Lcom/amazon/kindle/krx/providers/ILandingScreenActionProvider;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
