.class public final Lcom/amazon/kcp/application/StandaloneDeviceContext_Factory;
.super Ljava/lang/Object;
.source "StandaloneDeviceContext_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kcp/application/StandaloneDeviceContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/kcp/application/StandaloneDeviceContext_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/amazon/kcp/application/StandaloneDeviceContext_Factory;

    invoke-direct {v0}, Lcom/amazon/kcp/application/StandaloneDeviceContext_Factory;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/StandaloneDeviceContext_Factory;->INSTANCE:Lcom/amazon/kcp/application/StandaloneDeviceContext_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/amazon/kcp/application/StandaloneDeviceContext_Factory;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/kcp/application/StandaloneDeviceContext_Factory;->INSTANCE:Lcom/amazon/kcp/application/StandaloneDeviceContext_Factory;

    return-object v0
.end method

.method public static provideInstance()Lcom/amazon/kcp/application/StandaloneDeviceContext;
    .locals 1

    .line 16
    new-instance v0, Lcom/amazon/kcp/application/StandaloneDeviceContext;

    invoke-direct {v0}, Lcom/amazon/kcp/application/StandaloneDeviceContext;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kcp/application/StandaloneDeviceContext;
    .locals 1

    .line 12
    invoke-static {}, Lcom/amazon/kcp/application/StandaloneDeviceContext_Factory;->provideInstance()Lcom/amazon/kcp/application/StandaloneDeviceContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/amazon/kcp/application/StandaloneDeviceContext_Factory;->get()Lcom/amazon/kcp/application/StandaloneDeviceContext;

    move-result-object v0

    return-object v0
.end method
